# SPDX-FileCopyrightText: 2026 Pablo Gallardo
#
# SPDX-License-Identifier: MIT

# Makefile raíz

SHELL := /bin/bash

# Carpetas que debe excluir
EXCLUDE := LICENSES tools .git .github .vscode

# Recorre todas las carpetas y las guarda en SUBJECTS
# Elimina la barra / que aparece al final
# Skip es la bandera para incluir/excluir la carpeta
# Si la carpeta no está excluida y tiene un Makefile, guarda el nombre
SUBJECTS := $(shell \
for d in */ ; do \
  name=$${d%/}; \
  skip=0; \
  for x in $(EXCLUDE); do \
    [ "$$name" = "$$x" ] && skip=1; \
  done; \
  if [ $$skip -eq 0 ] && [ -f "$$name/Makefile" ]; then \
    echo $$name; \
  fi; \
done)

# Indica los parámetros que son opciones
# Esto sobreescribe a los ficheros con el mismo nombre
.PHONY: all pdf epub html docx formats all-formats sync clean list

# Aplica "make" (a secas) en cada carpeta
all:
	@for d in $(SUBJECTS); do \
	  echo "==> $$d"; \
	  $(MAKE) -C $$d; \
	done

pdf:
	@set -e; \
	for d in $(SUBJECTS); do \
	  echo "==> $$d: make pdf"; \
	  $(MAKE) -C "$$d" pdf; \
	done

epub:
	@set -e; \
	for d in $(SUBJECTS); do \
	  echo "==> $$d: make epub"; \
	  $(MAKE) -C "$$d" epub; \
	done

html:
	@set -e; \
	for d in $(SUBJECTS); do \
	  echo "==> $$d: make html"; \
	  $(MAKE) -C "$$d" html; \
	done

# A la carta. Ejemplo: make formats FORMATS="pdf epub"
formats:
	@set -e; \
	for d in $(SUBJECTS); do \
	  echo "==> $$d: make formats FORMATS='$(FORMATS)'"; \
	  $(MAKE) -C "$$d" formats FORMATS="$(FORMATS)"; \
	done

# Default: todos los formatos típicos (puedes overridear: make all-formats FORMATS_ALL="pdf epub")
all-formats:
	@set -e; \
	for d in $(SUBJECTS); do \
	  echo "==> $$d: make all-formats"; \
	  $(MAKE) -C "$$d" all-formats; \
	done

# Aplica "make clean" en cada carpeta
clean:
	@for d in $(SUBJECTS); do \
		echo "==> $$d: make clean"; \
	  $(MAKE) -C $$d clean; \
	done

# Lista las carpetas sobre las que aplica make
list:
	@echo "Asignaturas detectadas:"
	@for d in $(SUBJECTS); do echo "- $$d"; done

help:
	@echo "Salidas disponibles:"
	@echo "  make          Construye en el formato por defecto (PDF)"
	@echo "  make pdf      Construye la salida en PDF"
	@echo "  make epub     Construya la salida en EPUB"
	@echo "  make html     Construye la salida en HTML"
	@echo "  make all-formats  Construye en todos los formatos"
	@echo "  make sync     Copia los ficheros"
	@echo "  make clean    Remove build artifacts"