<!--
SPDX-FileCopyrightText: 2026 Colaboradores de apuntes_muicd_uned

SPDX-License-Identifier: CC-BY-4.0
-->

# Construcción del repositorio

Este apartado describe los automatismos y convenciones para evitar tener que convertir manualmente cada uno de los ficheros fuente (ej., Markdown, LaTeX, MS Word) en fichero objetivo.

## Convenciones

Cada una de las asignaturas se divide en las siguientes carpetas:

- `src`: contiene los ficheros de entrada/fuente/origen/de creación.
- `dist`: contiene los ficheros de salida/objetivo/destino/de consumo.

El repositorio cuenta con automatismos para realizar la construcción, es decir convertir los ficheros de entrada (`src`) en documentos de salida (`dist`) siguiendo una estructura espejo de carpetas.

Para ello, el repositorio cuenta con un `Makefile` por asignatura más uno general.

## Ejecución

Para lanzar la construcción hay que abrir una terminal (y solo en Windows, desde la PowerShell ejecutar `wsl`), ir a la carpeta del proyecto e introducir el siguiente comando:

  ```shell
  make
  ```

Si `make` se ejecuta desde una carpeta de asignatura, se contruirán solo los activos de esa carpeta. Si se ejecuta desde la carpeta raíz, se llamará al `Makefile` correspondiente de cada una de las asignaturas.

`make clean` borra los ficheros de salida creados.

`make pdf`, `make epub` y `make html` genera los ficheros específicamente para esos formatos de salida. `make all-formats` genera los ficheros para todos los formatos de salida disponibles.

### Transformación

Los `Makefile`'s de cada asignatura constan de una única referencia a un fichero común llamado `build.mk`, que contiene la lógica del automatismo.

Los ficheros se dividen en categorías:

| Extensión de entrada | Categoría |
| - | - |
| .csv | Datos |
| .yaml | Datos |
| .md | Documento |
| _main.tex | Documento |
| .ipynb | Notebook |
| .py | Código fuente |

Cada una de las categorías se procesa de una manera particular:

| Categoría de fichero | Formato de salida | ¿Se copia original? |
| - | - | - |
| Datos | .pdf | Sí |
| Documento | .pdf | No |
| Notebook | .pdf | Sí |
| Código fuente | N/A | Sí |

En el caso de conversión de fichero `_main.md` o `.tex` a `.pdf`, se comprobará si existe un fichero `_header.tex` en la misma carpeta (comenzando por el mismo nombre que el prefijo del fichero), y en caso afirmativo, se empleará como cabecera LaTeX (parámetro `-H` o `--include-in-header=`) en el conversor Pandoc.
