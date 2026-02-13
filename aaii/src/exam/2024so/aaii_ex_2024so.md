<!--
SPDX-FileCopyrightText: 2026 Colaboradores de apuntes_muicd_uned

SPDX-License-Identifier: CC-BY-4.0
-->

# AAII.EX.2024SO

Ejercicios elaborados con fines educativos, inspirados en los contenidos evaluados en el exámen de la sesión ordinaria de la convocatoria de septiembre 2024 de Aprendizaje Automático II del MUICD de la UNED.

Este documento no es una copia ni una transcripción del examen oficial, sino una redacción propia de ejercicios conceptualmente equivalentes.

Asignatura: Aprendizaje Automático II  
Duración máxima: 60 minutos  
Material permitido: todo tipo de material de consulta.

N.° preguntas: 10
N.° por pregunta: 4
Pregunta correcta: +1 punto
Pregunta incorrecta: -0,3 puntos

Indicaciones  
El examen consta de 10 cuestiones teórico-prácticas sobre los contenidos de la asignatura. Cada pregunta presenta hasta cuatro alternativas, de las cuales solo una es correcta. Cada acierto suma un punto y cada error resta 0.3 puntos.

## AAII.EX.2024SO.1

### Enunciado AAII.EX.2024SO.1

El error estimado fuera de la muestra (OOB) se describe mejor como un valor que…

- A. suele sobreestimar el error real del modelo.
- B. es necesariamente menor que el error de validación.
- C. es siempre mayor que el error obtenido por validación.
- D. representa una magnitud ideal que solo puede estimarse indirectamente.

### Solución AAII.EX.2024SO.1

La respuesta correcta es **A**.

El error OOB suele ser una estimación **ligeramente conservadora** del error de generalización, por lo que típicamente resulta algo mayor que el rendimiento real observado en nuevos datos.

## AAII.EX.2024SO.2

### Enunciado AAII.EX.2024SO.2

Según la formulación clásica de Random Forest, las variables candidatas en cada división se eligen…

- A. considerando todas las variables disponibles.
- B. seleccionando la mejor variable mediante permutaciones.
- C. tomando un subconjunto aleatorio de variables.
- D. priorizando las más correlacionadas con la salida.

### Solución AAII.EX.2024SO.2

La respuesta correcta es **C**.

En la formulación original de Random Forest, en cada nodo se evalúa la partición óptima **sobre un subconjunto aleatorio de variables**, lo que reduce la correlación entre árboles.

## AAII.EX.2024SO.3

### Enunciado AAII.EX.2024SO.3

En problemas de clasificación, un bosque aleatorio decide la etiqueta final…

- A. calculando un promedio ponderado de las decisiones individuales.
- B. aplicando una votación que requiere mayoría absoluta.
- C. utilizando el valor central de las predicciones generadas.
- D. seleccionando la clase más votada entre los árboles.

### Solución AAII.EX.2024SO.3

La respuesta correcta es **D**.

En clasificación, el bosque aleatorio decide por **votación mayoritaria** entre las predicciones de los árboles.

## AAII.EX.2024SO.4

### Enunciado AAII.EX.2024SO.4

Una diferencia conceptual entre AdaBoost y gradient boosting es que…

- A. solo gradient boosting asigna pesos a los modelos débiles.
- B. únicamente AdaBoost pondera los clasificadores débiles.
- C. gradient boosting pondera ejemplos además de modelos.
- D. AdaBoost ajusta pesos tanto de ejemplos como de clasificadores.

### Solución AAII.EX.2024SO.4

La respuesta correcta es **D**.

AdaBoost asigna **pesos a los ejemplos** (reponderando los mal clasificados) y combina clasificadores con pesos; gradient boosting se formula como optimización de una pérdida sin ese esquema explícito de reponderación de ejemplos.

## AAII.EX.2024SO.5

### Enunciado AAII.EX.2024SO.5

En el método de stacking o apilamiento…

- A. la forma de combinar predicciones depende de las características del ejemplo.
- B. los modelos se organizan en una estructura secuencial.
- C. cada modelo mantiene un peso fijo.
- D. las salidas se ponderan según incertidumbre estimada.

### Solución AAII.EX.2024SO.5

La respuesta correcta es **B**.

El *stacking* combina modelos en **cascada**, entrenando un meta-modelo que aprende a integrar las predicciones de los modelos base.

## AAII.EX.2024SO.6

### Enunciado AAII.EX.2024SO.6

¿Cuál es la principal ventaja de combinar clasificadores mediante rankings?

- A. Simplifica el cálculo de probabilidades.
- B. Facilita la interpretación de resultados.
- C. Permite integrar clasificadores heterogéneos.
- D. Mejora específicamente la clasificación binaria.

### Solución AAII.EX.2024SO.6

La respuesta correcta es **C**.

Las técnicas basadas en **rankings** permiten combinar fácilmente clasificadores **heterogéneos**, ya que solo requieren el orden relativo de las predicciones.

## AAII.EX.2024SO.7

### Enunciado AAII.EX.2024SO.7

El fundamento de una combinación eficaz de clasificadores es que…

- A. todos obtengan buenos resultados en la mayoría de ejemplos.
- B. los errores individuales no coincidan sistemáticamente.
- C. exista una mezcla de clasificadores muy buenos y malos.
- D. predominen clasificadores de rendimiento medio.

### Solución AAII.EX.2024SO.7

La respuesta correcta es **B**.

La eficacia de un *ensemble* depende de la **diversidad**: que los clasificadores no fallen en los **mismos** ejemplos.

## AAII.EX.2024SO.8

### Enunciado AAII.EX.2024SO.8

El algoritmo K-medias puede interpretarse como…

- A. una variante de EM con convergencia garantizada al óptimo global.
- B. una versión de EM que explora exhaustivamente todas las particiones.
- C. una aproximación heurística tipo EM que busca optimizar la función objetivo.
- D. un método independiente sin relación con EM.

### Solución AAII.EX.2024SO.8

La respuesta correcta es **C**.

K-medias puede interpretarse como un esquema tipo **EM** que optimiza heurísticamente la función objetivo alternando asignación y actualización, garantizando convergencia a un **óptimo local**, no global.

## AAII.EX.2024SO.9

### Enunciado AAII.EX.2024SO.9

Los umbrales suaves en la decisión conjunta de clasificadores buscan…

- A. simplificar la implementación respecto a esquemas duros.
- B. aproximar probabilidades posteriores de clase.
- C. estimar anticipadamente el error esperado.
- D. reducir la incertidumbre mediante intervalos más estrechos.

### Solución AAII.EX.2024SO.9

La respuesta correcta es **B**.

Estandarizar puede ser útil, pero imponer igual peso a todas las variables puede **ocultar estructura natural** cuando las escalas contienen información relevante.

## AAII.EX.2024SO.10

### Enunciado AAII.EX.2024SO.10

Para seleccionar un modelo de aprendizaje no supervisado se recomienda…

- A. emplear una única técnica de agrupamiento.
- B. comparar varios algoritmos y métricas de evaluación.
- C. basarse únicamente en la intuición del analista.
- D. elegir el modelo con menor coste computacional.

### Solución AAII.EX.2024SO.10

La respuesta correcta es **B**.

En aprendizaje no supervisado es recomendable **comparar varios algoritmos y métricas**, ya que no existe una única referencia externa clara.
