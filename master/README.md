<!--
SPDX-FileCopyrightText: 2026 Colaboradores de apuntes_muicd_uned

SPDX-License-Identifier: CC-BY-4.0
-->

# MUICD - General

En esta carpeta se comparte comparte información general sobre el máster MUICD y material común a todas las asignaturas.

## Asignaturas

El **listado completo de asignaturas** se encuentra en [este enlace](asig/asignaturas.csv).

### Elección

**Consejos para la elección asignaturas**:

- Calcula primeramente tu **tiempo semanal disponible para estudiar**, y estima el número de créditos a matricular en función de esto.

- Suponiendo 16 semanas por semestre, la dedicación semanal se calcula como:

$$\text{horas por semana necesarias} = (\text{créditos ECTS} * 25) / 16$$

| Créditos ECTS | Dedicación semanal (h) |
| :-: | :-: |
| 6 | 10 |
| 4,5 | 7 |

- Revisa las fichas de cada asignaturam teniendo en cuenta:
  - En qué semestre se cursan.
  - Si tiene interdependencias con otras asignaturas.
- Evalúa la **exigencia de las asignaturas**:
  - Consulta a las [comunidades](#comunidades).
  - Consulta las [estadísticas de rendimiento académico](https://app.uned.es/evacal/rendac.aspx), incluyendo:
    - **Tasa de evaluación %**: porcentaje de estudiantes matriculados que se presentan al exámen o, en su defecto, realizan la evaluación.  
    - **Tasa de éxito %**: porcentaje de aprobados entre los que han sido evaluados.
    - **Tasa de rendimiento**: porcentaje de aprobados respecto a matriculados.
    - **Valoración de la asignatura**: puntuación dada por los estudiantes.

### Dependencias

Diagrama de **dependencias entre asignaturas del MUICD**:

![Diagrama de dependencias de asignaturas del MUICD](asig/dependencias_asignaturas.png)

[Codificación de las dependencias](depedencias_asignaturas.mmd) en formato Mermaid:

```mermaid
graph LR
   31110018[Modelado estadístico de datos] --> 31110037[Aprendizaje automático 1]
   31110018 --> 31110094[Modelos bayesianos jerárquicos]
   31110022[Programación en Entornos de Datos] --> 31110041[Minería de textos]
   31110022 --> 31110037
   31110022 --> 31110060[Visualización de datos]
   31110037 --> 31110130[Aprendizaje Automático 2]
   31110037 --> 31110111[Deep Learning]
   31110056[Infraestructuras computacionales para procesamiento de datos masivos] --> 31110111
   31110041 --> 31110107[Minería de datos de los medios sociales]
```

## Exámenes

### Repositorios de exámenes

- [Akademos](https://akademosweb.uned.es)
- [Depósito de exámenes de UNED Calatayud](http://www.calatayud.uned.es/examenes)
- Espacios de cada asignatura (si el profesor los comparte)

### Realización de exámenes

Los exámenes del MUICD se concentran en una única semana en cada convocatoria.

[Calendario de exámenes](https://www.uned.es/universidad/inicio/estudiantes/calendario-examenes.html)

Cualquiera de los exámenes se puede realizar también el día de **reserva** alegando una situación extraordinaria (ej.: coincidencia de asignaturas, laboral, movilidad). No obstante, algunos alumnos informan que no tuvieron que hacer ninguna solicitud o aviso.

[Solicitud de exámenes en reserva](https://serviweb.uned.es/matricula/examenes-extranjero/index.asp)

Cada slot de reserva permite presentarse a un máximo de 3 exámenes con un máximo de 4 horas para completarlos todos:

- Febrero: 1 slot
- Junio: 1 slot
- Septiembre: 2 slots, donde
  - Slot de mañana: exámenes de los 3 primeros días de la convocatoria.
  - Slot de tarde: exámenes del resto de días.

Los exámenes de reserva están reglados en el apartado 2.2. del [Reglamento de pruebas presenciales UNED](https://www.uned.es/universidad/inicio/unidad/pruebas-presenciales/reglamento-de-pruebas-presenciales.html#a4a3c2ee-eb91-4587-bdd0-b1489088ae8b)

### Lugar de exámenes

A los alumnos de la Comunidad de Madrid se les asocia un centro en función de su apellido. Esto se puede comprobar en la [sección de exámenes](https://www.uned.es/universidad/centros/madrid/medios-y-servicios/examenes.htmls) del portal UNED Madrid.

### Día del exámen

Revisar que se lleva:

- Carnet de la UNED.
- Boligrafo(s) (no se permite lápiz)
- Calculadora (si se permite)
- Material escrito (si se permite)

## Comunidades

Comunidades y repositorios no oficiales de alumnos y alumni del máster:

- Activas
  - Comunidad [UNED Data Science](https://t.me/uneddatascience) en Telegram
- Inactivas
  - Grupo [Grupo Master Ingenieria y Ciencias de Datos](https://unedo365.sharepoint.com/sites/GrupoMasterIngenieriayCienciasdeDatos/) en SharePoint UNED
  - [Repositorio `uned-master-bigdata` (curso 2019/2020)](https://github.com/adzarei/uned-master-bigdata/) de Adrián José Zapater Reig
