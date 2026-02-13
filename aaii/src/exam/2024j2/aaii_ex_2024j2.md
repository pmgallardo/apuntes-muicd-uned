<!--
SPDX-FileCopyrightText: 2026 Colaboradores de apuntes_muicd_uned

SPDX-License-Identifier: CC-BY-4.0
-->

# AAII.EX.2024J2

Ejercicios elaborados con fines educativos, inspirados en los contenidos evaluados en el exámen de la sesión de la 2.ª semana de junio 2024 de Aprendizaje Automático II del MUICD de la UNED.

Este documento no es una copia ni una transcripción del examen oficial, sino una redacción propia de ejercicios conceptualmente equivalentes.

Asignatura: Aprendizaje Automático II  
Duración máxima: 60 minutos  
Material permitido: todo tipo de material de consulta.

N.° preguntas: 10
N.° por pregunta: 4
Pregunta correcta: +1 punto
Pregunta incorrecta: -0,3 puntos

Indicaciones  
La prueba consta de 10 preguntas teórico-prácticas sobre los contenidos de la asignatura. Cada pregunta ofrece hasta cuatro opciones, siendo correcta únicamente una. Las respuestas correctas suman un punto, mientras que cada respuesta incorrecta resta 0.3 puntos.

## AAII.EX.2024J2.1

### Enunciado AAII.EX.2024J2.1

En un bosque aleatorio, el parámetro m indica…

- A. el número total de variables disponibles en los datos de entrada.
- B. cuántas variables intervienen en cada árbol completo.
- C. el subconjunto de variables evaluadas al dividir cada nodo.
- D. la cantidad total de árboles del conjunto.

### Solución AAII.EX.2024J2.1

La respuesta correcta es **C**.

En bosques aleatorios, $m$ es el número de variables candidatas que se consideran **en cada nodo** al buscar la mejor partición, lo que introduce aleatoriedad y reduce la correlación entre árboles.

## AAII.EX.2024J2.2

### Enunciado AAII.EX.2024J2.2

¿Qué mecanismo de los bosques aleatorios permite estimar el error de generalización sin validación cruzada?

- A. Submuestreo interno.
- B. Votación por proporciones.
- C. Evaluación mediante muestras fuera de bolsa.
- D. Votación por mayoría de clase.

### Solución AAII.EX.2024J2.2

La respuesta correcta es **C**.

El error **OOB** (*out-of-bag*) se estima usando, para cada árbol, las observaciones que no entraron en su muestra bootstrap, proporcionando una estimación del error de generalización sin validación cruzada.

## AAII.EX.2024J2.3

### Enunciado AAII.EX.2024J2.3

En gradient boosting, puede afirmarse que…

- A. árboles más profundos siempre son preferibles.
- B. usar menos árboles aumenta el riesgo de sobreajuste.
- C. el método evita por completo el sobreajuste.
- D. un número elevado de árboles puede favorecer el sobreajuste.

### Solución AAII.EX.2024J2.3

La respuesta correcta es **D**.

En gradient boosting, aumentar el número de árboles incrementa la capacidad del modelo; sin regularización, crece la posibilidad de **sobreaprendizaje**.

## AAII.EX.2024J2.4

### Enunciado AAII.EX.2024J2.4

Dentro de gradient boosting, la función de pérdida representa…

- A. la probabilidad de cometer errores de clasificación.
- B. la cantidad de modelos necesarios.
- C. el criterio que guía la corrección iterativa de errores.
- D. la tasa de aprendizaje del procedimiento.

### Solución AAII.EX.2024J2.4

La respuesta correcta es **C**.

La función de pérdida define el **criterio de error** que se minimiza en cada iteración; el algoritmo ajusta nuevos modelos para reducirla siguiendo el gradiente.

## AAII.EX.2024J2.5

### Enunciado AAII.EX.2024J2.5

En el método de stacking o apilamiento…

- A. la forma de combinar predicciones depende de las características del ejemplo.
- B. los modelos se organizan en una estructura secuencial.
- C. cada modelo mantiene un peso fijo.
- D. las salidas se ponderan según incertidumbre estimada.

### Solución AAII.EX.2024J2.5

La respuesta correcta es **B**.

En *stacking*, los modelos base alimentan a un **meta-modelo** en una arquitectura en **cascada**, que aprende a combinar sus predicciones.

## AAII.EX.2024J2.6

### Enunciado AAII.EX.2024J2.6

¿Qué estrategia de combinación selecciona la clase con mayor número de votos como salida final?

- A. Votación suave.
- B. Votación dura.
- C. Apilamiento.
- D. Combinación adaptativa.

### Solución AAII.EX.2024J2.6

La respuesta correcta es **B**.

El *voting duro* selecciona la clase con **mayor número de votos** entre los clasificadores.

## AAII.EX.2024J2.7

### Enunciado AAII.EX.2024J2.7

Las técnicas combinatorias de clustering se caracterizan por…

- A. estimar densidades no paramétricas en el espacio de datos.
- B. modelar la distribución como mezcla de densidades paramétricas.
- C. agrupar observaciones sin asumir modelos probabilísticos explícitos.
- D. integrar simultáneamente todos los enfoques anteriores.

### Solución AAII.EX.2024J2.7

La respuesta correcta es **C**.

Las técnicas combinatorias de clustering agrupan observaciones **sin asumir** explícitamente un modelo probabilístico generativo subyacente.

## AAII.EX.2024J2.8

### Enunciado AAII.EX.2024J2.8

El coeficiente de Silhouette de un agrupamiento se basa en…

- A. la comparación entre la distancia media interna de un punto y su distancia media mínima a otros grupos.
- B. la máxima distancia interna frente a la máxima distancia externa.
- C. la máxima distancia interna comparada con la mínima externa.
- D. la suma de distancias entre centroides de grupos.

### Solución AAII.EX.2024J2.8

La respuesta correcta es **A**.

El coeficiente de Silhouette compara:

- la distancia media de un punto a su propio cluster
- la distancia media mínima a otros clusters

para evaluar cohesión y separación.

## AAII.EX.2024J2.9

### Enunciado AAII.EX.2024J2.9

El objetivo principal del aprendizaje no supervisado es…

- A. estimar valores continuos desconocidos.
- B. asignar etiquetas predefinidas a los datos.
- C. identificar agrupaciones naturales separando conjuntos distintos.
- D. reducir dimensionalidad con fines geométricos.

### Solución AAII.EX.2024J2.9

La respuesta correcta es **C**.

El objetivo del aprendizaje no supervisado es **descubrir estructura** en los datos, agrupando observaciones similares y separando las diferentes.

## AAII.EX.2024J2.10

### Enunciado AAII.EX.2024J2.10

¿Qué rasgo comparten XGBoost, CatBoost y LightGBM?

- A. Son variantes de redes neuronales.
- B. Utilizan únicamente árboles de decisión.
- C. Implementan técnicas de gradient boosting.
- D. Se basan en algoritmos de clustering.

### Solución AAII.EX.2024J2.10

La respuesta correcta es **C**.

XGBoost, CatBoost y LightGBM son implementaciones modernas y eficientes de **gradient boosting** basadas en árboles.
