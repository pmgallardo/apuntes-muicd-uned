# SPDX-FileCopyrightText: 2026 Pablo Gallardo
#
# SPDX-License-Identifier: MIT

# tools/build.mk
#
# Build común por asignatura
# Inclúyelo desde <asignatura>/Makefile:
#   include ../tools/build.mk
#
# Convenciones:
# src/  → fuentes
# dist/<formato>/ → artefactos generados (espejo de src/)
#
# Formatos soportados: pdf epub html

SHELL := /bin/bash

# Definición de los directorios
SRC_DIR  ?= src
DIST_DIR ?= dist
TMP_DIR  ?= $(DIST_DIR)/.tmp

# Alias de los comandos
JUPYTER ?= jupyter
PANDOC  ?= pandoc
# Detecta el comando de Python disponible en el sistema
PYTHON ?= $(shell command -v python3 2>/dev/null || \
                  command -v py      2>/dev/null || \
                  command -v python  2>/dev/null)

# Opciones por formato (overrideables)
PANDOC_pdf_OPTS  ?= --pdf-engine=xelatex
PANDOC_epub_OPTS ?=
PANDOC_html_OPTS ?= --standalone

# Categorías (modificable)
DOC_EXTS  ?= md docx
DATA_EXTS ?= yaml yml csv
NB_EXTS   ?= ipynb

# Formato por defecto (modificable)
FORMATS ?= pdf
# Formatos completos (modificable)
FORMATS_ALL ?= pdf epub html

# Helpers
# Devuelve los archivos con una extensión dada como argumento en $(SRC_DIR)
define find_ext
$(shell find "$(SRC_DIR)" -type f -name '*.$(1)')
endef

fmt_ext = $(1)

# Descubrimiento
DOC_FILES  := $(foreach e,$(DOC_EXTS),$(call find_ext,$(e)))
DATA_FILES := $(foreach e,$(DATA_EXTS),$(call find_ext,$(e)))
NB_FILES   := $(foreach e,$(NB_EXTS),$(call find_ext,$(e)))

# Targets generados
DOC_OUT := $(foreach f,$(FORMATS), \
  $(foreach s,$(DOC_FILES), \
    $(DIST_DIR)/$(f)/$(patsubst $(SRC_DIR)/%,%,$(basename $(s))).$(call fmt_ext,$(f)) \
))

DATA_OUT := $(foreach f,$(FORMATS), \
  $(foreach s,$(DATA_FILES), \
    $(DIST_DIR)/$(f)/$(patsubst $(SRC_DIR)/%,%,$(basename $(s))).$(call fmt_ext,$(f)) \
))

NB_OUT := $(foreach f,$(FORMATS), \
  $(foreach s,$(NB_FILES), \
    $(DIST_DIR)/$(f)/$(patsubst $(SRC_DIR)/%,%,$(basename $(s))).$(call fmt_ext,$(f)) \
))

ALL_OUT := $(DOC_OUT) $(DATA_OUT) $(NB_OUT)

.PHONY: all formats pdf epub html all-formats list clean check help

# Default → PDF
all: pdf

formats: $(ALL_OUT)

pdf: FORMATS=pdf
pdf: formats

epub: FORMATS=epub
epub: formats

html: FORMATS=html
html: formats

all-formats: FORMATS=$(FORMATS_ALL)
all-formats: formats

list:
	@echo "== Outputs =="; printf "%s\n" $(ALL_OUT) | sed 's/^/- /' || true

clean:
	@rm -rf "$(DIST_DIR)"

check:
	@command -v "$(PANDOC)" >/dev/null || (echo "ERROR: pandoc missing" && exit 1)
	@command -v "$(PYTHON)" >/dev/null || (echo "ERROR: python missing" && exit 1)
	@echo "Dependencies OK"

help:
	@echo ""
	@echo "Available commands:"
	@echo "  make          → build PDF"
	@echo "  make pdf      → build PDF"
	@echo "  make epub     → build EPUB"
	@echo "  make html     → build HTML"
	@echo "  make all-formats"
	@echo "  make clean"
	@echo ""

## -------------------------
# Documentos: md/docx -> pdf/epub/html
# PDF: soporta headers opcionales:
#   - src/_header.tex (global)
#   - src/<ruta>/<file>_header.tex (local)
# -------------------------

# MD -> PDF (con headers opcionales)
$(DIST_DIR)/pdf/%.pdf: $(SRC_DIR)/%.md
	@mkdir -p "$(dir $@)"
	@hdr_global="$(SRC_DIR)/_header.tex"; \
	hdr_dir="$(SRC_DIR)/$(dir $*)_header.tex"; \
	hdr_file="$(SRC_DIR)/$*_md_header.tex"; \
	args=""; \
	[ -f "$$hdr_global" ] && args="$$args -H $$hdr_global"; \
	[ -f "$$hdr_dir"    ] && args="$$args -H $$hdr_dir"; \
	[ -f "$$hdr_file"   ] && args="$$args -H $$hdr_file"; \
	$(PANDOC) "$<" -o "$@" $(PANDOC_pdf_OPTS) $$args

# MD -> EPUB
$(DIST_DIR)/epub/%.epub: $(SRC_DIR)/%.md
	@mkdir -p "$(dir $@)"
	$(PANDOC) "$<" -o "$@" $(PANDOC_epub_OPTS)

# MD -> HTML
$(DIST_DIR)/html/%.html: $(SRC_DIR)/%.md
	@mkdir -p "$(dir $@)"
	$(PANDOC) "$<" -o "$@" $(PANDOC_html_OPTS)

# TEX -> PDF
$(DIST_DIR)/pdf/%.pdf: $(SRC_DIR)/%_main.tex
	@mkdir -p "$(dir $@)"
	@hdr_global="$(SRC_DIR)/_header.tex"; \
	hdr_local="$(SRC_DIR)/$*_header.tex"; \
	args=""; \
	[ -f "$$hdr_global" ] && args="$$args -include-in-header=$$hdr_global"; \
	[ -f "$$hdr_local"  ] && args="$$args -include-in-header=$$hdr_local"; \
	$(PANDOC) "$<" -o "$@" $(PANDOC_pdf_OPTS) $$args

# DOCX -> PDF
$(DIST_DIR)/pdf/%.pdf: $(SRC_DIR)/%.docx
	@mkdir -p "$(dir $@)"
	$(PANDOC) "$<" -o "$@" $(PANDOC_pdf_OPTS)

# DOCX -> EPUB
$(DIST_DIR)/epub/%.epub: $(SRC_DIR)/%.docx
	@mkdir -p "$(dir $@)"
	$(PANDOC) "$<" -o "$@" $(PANDOC_epub_OPTS)

# DOCX -> HTML
$(DIST_DIR)/html/%.html: $(SRC_DIR)/%.docx
	@mkdir -p "$(dir $@)"
	$(PANDOC) "$<" -o "$@" $(PANDOC_html_OPTS)

# -------------------------
# Datos → render texto → pandoc (PDF)
# - headers opcionales (en este orden):
#   1) src/_header.tex
#   2) src/<carpeta>/_header.tex
#   3) src/<carpeta>/<base>_<ext>_header.tex
# -------------------------
define render_text_to_md
mkdir -p "$(dir $(1))"
$(PYTHON) -c 'import pathlib,sys; \
src=pathlib.Path(sys.argv[1]); lang=sys.argv[2]; title=sys.argv[3]; out=pathlib.Path(sys.argv[4]); \
text=src.read_text(encoding="utf-8", errors="replace"); \
out.write_text(f"# {title}\n\n```{lang}\n{text}\n```\n", encoding="utf-8")' \
"$(2)" "$(3)" "$(4)" "$(1)"
endef

define data_rule_pdf
$(DIST_DIR)/pdf/%.pdf: $(SRC_DIR)/%.$(1)
	@mkdir -p "$$(dir $$@)" "$(TMP_DIR)/$$(dir $$*)"
	@hdr_global="$(SRC_DIR)/_header.tex"; \
	hdr_dir="$(SRC_DIR)/$$(dir $$*)_header.tex"; \
	hdr_file="$(SRC_DIR)/$$*_$(1)_header.tex"; \
	args=""; \
	[ -f "$$$$hdr_global" ] && args="$$$$args -H $$$$hdr_global"; \
	[ -f "$$$$hdr_dir"    ] && args="$$$$args -H $$$$hdr_dir"; \
	[ -f "$$$$hdr_file"   ] && args="$$$$args -H $$$$hdr_file"; \
	$$(call render_text_to_md,$(TMP_DIR)/$$*.md,$$<,$(1),$$(notdir $$<)); \
	$(PANDOC) "$(TMP_DIR)/$$*.md" -o "$$@" $(PANDOC_pdf_OPTS) $$$$args
endef

$(eval $(call data_rule_pdf,csv))
$(eval $(call data_rule_pdf,yaml))
$(eval $(call data_rule_pdf,yml))

# -------------------------
# Notebook → nbconvert o pandoc
# -------------------------
define nb_rule
$(DIST_DIR)/$(1)/%.$(1): $(SRC_DIR)/%.ipynb
	@mkdir -p "$$(dir $$@)"
	@if command -v "$(JUPYTER)" >/dev/null 2>&1 && [ "$(1)" = "pdf" ]; then \
		$(JUPYTER) nbconvert --to pdf --output-dir "$$(dir $$@)" --output "$$(notdir $$@)" "$$<"; \
	elif command -v "$(JUPYTER)" >/dev/null 2>&1 && [ "$(1)" = "html" ]; then \
		$(JUPYTER) nbconvert --to html --output-dir "$$(dir $$@)" --output "$$(notdir $$@)" "$$<"; \
	else \
		$(PANDOC) "$$<" -o "$$@" $$(PANDOC_$(1)_OPTS); \
	fi
endef

$(foreach f,pdf epub html,$(eval $(call nb_rule,$(f))))
