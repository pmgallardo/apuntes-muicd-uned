<!--
SPDX-FileCopyrightText: 2026 Colaboradores de apuntes_muicd_uned

SPDX-License-Identifier: CC-BY-4.0
-->

# Contribuir a apuntes-muicd-uned

Gracias por tu interés en contribuir a este repositorio.

Este proyecto es un repositorio no oficial y comunitario de material de apoyo al Máster Universitario en Ingeniería y Ciencia de Datos (MUICD) de la UNED.

## Alcance del repositorio

Se aceptan contribuciones relacionadas con el contenido académico del MUICD, incluyendo:

- Apuntes, esquemas y resúmenes elaborados por los colaboradores.
- Notas ampliadas y explicaciones adicionales.
- Ejercicios y problemas reescritos.
- Soluciones razonadas y desarrolladas.
- Conjuntos de datos originales.

No se aceptan contribuciones ajenas al ámbito del MUICD ni material promocional.

## Reglas sobre propiedad intelectual

Para proteger a los colaboradores y al repositorio, se aplican las siguientes normas:

- Todo el material aportado debe ser original del autor o una transformación que conserve la idea original pero no la expresión literal.
- No se permite subir material protegido por derechos de autor de la UNED, sus docentes u otras fuentes, salvo que se disponga de permiso explícito para su redistribución.
- No se deben incluir copias de exámenes, enunciados oficiales o material lectivo oficial.
- Se permite hacer referencia a material oficial mediante enlaces a la fuente correspondiente, siempre que el acceso quede restringido a usuarios autorizados.

## Licencias

Al contribuir a este repositorio, aceptas que:

- Los ficheros de código fuente y notebooks interactivos se publiquen bajo licencia MIT.
- Los ficheros de datos y documentación se publiquen bajo licencia CC-BY-4.0.

Si una contribución requiere una licencia distinta, debe indicarse explícitamente y ser aprobada por los mantenedores.

Se siguen las recomendaciones de [REUSE](https://reuse.software/) para adjuntar la información de licencias al proyecto. Como regla general:

- Para los ficheros con cabecera no editable (ej.: .pdf, .json, .docx) no hace falta hacer nada, puesto que su extensión está registrada en el fichero `REUSE.toml` y tienen asociada una licencia.
- Para los ficheros con cabecera editable (ej.: .py, .md) se debe añadir una cabecera con información de licencia mediante uno de estos métodos:
  - Copiando y pegando manualmente la cabecera de otro fichero similar que ya se encuentre en el repositorio.
  - Ejecutando el comando `reuse annotate`:

      ```text
      # Para ficheros de datos y documentación
      reuse annotate --license MIT --copyright Colaboradores de apuntes_muicd_uned
      reuse annotate --license CC-BY-4.0 --copyright Colaboradores de apuntes_muicd_uned
      ```

## Cómo contribuir

1. Haz un fork del repositorio.
2. Crea una rama descriptiva para tu contribución.
3. Añade o modifica el contenido respetando la estructura del repositorio.
4. Abre un *pull request* describiendo claramente los cambios realizados.

Puedes encontrar los pasos básicos detallados en [este tutorial](https://www.freecodecamp.org/espanol/news/como-hacer-tu-primer-pull-request-en-github/).

## Normas de convivencia

Se espera un trato respetuoso y constructivo entre los colaboradores.

Las contribuciones ofensivas, discriminatorias o fuera de contexto no serán aceptadas.
