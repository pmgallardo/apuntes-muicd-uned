<!--
SPDX-FileCopyrightText: 2026 Colaboradores de apuntes-muicd-uned

SPDX-License-Identifier: CC-BY-4.0
-->

# apuntes-muicd-uned

Repositorio no oficial de recursos de apoyo al Máster Universitario en Ingeniería y Ciencia de Datos (MUICD) de la UNED.

Material elaborado por estudiantes con fines educativos.
Repositorio no afiliado institucionalmente con la UNED.

Para más información sobre el máster, visita la [página web oficial](https://www.uned.es/universidad/inicio/estudios/masteres/master-universitario-en-ingenieria-y-ciencia-de-datos.html).

## Estructura del repositorio

En la carpeta [`master`](master/) se comparte información general sobre el máster.

El resto de carpetas están dedicadas a una asignatura concreta:

| Código | Abr. | Nombre asignatura | Semestre |
| ---------- | ----- | ----------------------------- | - |
| `31110018` | [`med`](med) | Modelado estadístico de datos | 1 |
| `31110022` | [`ped`](ped) | Programación en entornos de datos | 1 |
| `31110037` | [`aai`](aai) | Aprendizaje automático I | 1 |
| `31110041` | [`mt`](mt/) | Minería de textos | 1 |
| `31110056` | [`icpdm`](icpdm/) | Infraestructuras computacionales para procesamiento de datos masivos | 1 |
| `31110060` | [`vd`](vd/) | Visualización de datos | 2 |
| `3111008-` | [`gaine`](gaine/) | Gestión/almacenamiento de información no estructurada | 2 |
| `31110130` | [`aaii`](aaii/) | Aprendizaje automático II | 2 |
| `31110094` | [`mbj`](mbj/) | Modelos bayesianos jerárquicos | 2 |
| `31110107` | [`mdms`](mdms/) | Minería de datos de los medios sociales | 2 |
| `31110111` | [`dl`](dl/) | Deep learning | 2 |
| `31110126` | [`sgd`](sgd/) | Seguridad de la gestión de datos | 2 |
| `31110075` | [`tfm`](tfm/) | Trabajo fin de máster | 2 |

## Material ofrecido

El repositorio ofrece material propio de utilidad para los actuales y futuros alumnos del máster, pudiendo incluir:

- Esquemas y resúmenes del temario.  
- Notas ampliadas sobre el contenido.  
- Soluciones a exámenes y ejercicios propuestos.  
- Datos originales de prueba.  
- Estrategias de estudio.  

El repositorio no incluye material original protegido por derechos de autor que esté disponible para los alumnos del máster a través de los canales oficiales de la UNED. Cuando se hace referencia a este material, se incluye un enlace a la fuente de origen donde los alumnos pueden acceder.

## Ejecución en local

Requisitos de software para ejecutar el repositorio en local:

- Make
- Quarto (con  `chrome-headless-shell`)
- Entorno de ejecución del servidor (Python, Node.js)

Para compilar el proyecto, abrir una terminal y ejecutar desde el directorio raíz:

```shell
make site
```

Desde la misma carpeta, ejecutar un servidor sobre la carpeta `_site`, de cualquiera de las maneras indicadas a continuación o alternativa similar.

Windows con Python:

```powershell
python -m http.server 8000 --directory _site
```

Basados en Unix (macOS / Linux) con Python:

```sh
python3 -m http.server 8000 --directory _site
```

Ejecutar servidor con NPM (Node.js):

```shell
npx serve _site
```

## Licencias

Salvo que se indique lo contrario:

- El código fuente y notebooks se publican bajo licencia MIT.
- Los datos y documentos se publican bajo licencia CC-BY-4.0.

Los textos completos de las licencias están disponibles en el directorio [`LICENSES`](LICENSES/).

## Aportaciones

El contenido de este repositorio es un trabajo colectivo y ofrecido de manera voluntaria, por lo que te animamos a colaborar.

Para contribuir al repositorio, consulta el fichero [CONTRIBUTING.md](CONTRIBUTING.md).
