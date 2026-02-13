<!--
SPDX-FileCopyrightText: 2026 Colaboradores de apuntes_muicd_uned

SPDX-License-Identifier: CC-BY-4.0
-->

# AAII.EX.2023J2

Ejercicios elaborados con fines educativos, inspirados en los contenidos evaluados en el exámen de la sesión de la 2.ª semana de junio 2023 de Aprendizaje Automático II del MUICD de la UNED.

Este documento no es una copia ni una transcripción del examen oficial, sino una redacción propia de ejercicios conceptualmente equivalentes.

Asignatura: Aprendizaje Automático II  
Duración máxima: 120 minutos
Material permitido: todo tipo de material de consulta.

## AAII.EX.2023J2.1

### Enunciado AAII.EX.2023J2.1

El principio fundamental del bagging establece que, al promediar múltiples predicciones…

- A. la varianza puede incrementarse si se emplea una pérdida cuadrática.
- B. el sesgo puede reducirse cuando se usa una función de pérdida basada en error cuadrático.
- C. sesgo y varianza tienden a igualarse bajo cualquier circunstancia.
- D. la varianza puede disminuir sin alterar el sesgo al promediar con pérdida cuadrática.

### Solución AAII.EX.2023J2.1

La respuesta correcta es **D**.

En bagging, al promediar predicciones (con pérdida cuadrática) se puede **reducir la varianza** del estimador, mientras que el **sesgo** se mantiene aproximadamente **igual**.

## AAII.EX.2023J2.2

### Enunciado AAII.EX.2023J2.2

El bagging mejora el rendimiento predictivo principalmente porque…

- A. reduce simultáneamente sesgo y varianza.
- B. disminuye la varianza manteniendo el sesgo aproximadamente constante.
- C. incrementa la varianza mientras reduce el sesgo.
- D. reduce la varianza a costa de aumentar el sesgo.

### Solución AAII.EX.2023J2.2

La respuesta correcta es **B**.

Bagging mejora principalmente porque **reduce la varianza** (por promediado de modelos) y deja el **sesgo** esencialmente **sin cambios**.

## AAII.EX.2023J2.3

### Enunciado AAII.EX.2023J2.3

Para estimar el error fuera de bolsa (OOB) se emplean…

- A. aproximadamente un tercio de las muestras usadas en entrenamiento.
- B. cerca de un tercio de los datos que no participaron en el entrenamiento de cada modelo.
- C. dos tercios de los datos reservados para validación.
- D. el conjunto completo de datos disponible.

### Solución AAII.EX.2023J2.3

La respuesta correcta es **A**.

En bootstrap, cada observación tiene probabilidad aproximada $1 - e^{-1} \approx 0.632$ de aparecer en una muestra bootstrap, así que queda fuera con probabilidad $\approx e^{-1} \approx 0.368$, es decir, **aprox. un tercio** de los datos queda OOB en cada árbol.

## AAII.EX.2023J2.4

### Enunciado AAII.EX.2023J2.4

En gradient boosting, suponiendo $\gamma > 0$, la hipótesis de aprendizaje débil implica que el error de cada modelo base…

- A. no supera $2 - \gamma$.
- B. es mayor que $0.5 + \gamma$.
- C. es inferior a $0.5 - \gamma$.
- D. coincide exactamente con $0.5$.

### Solución AAII.EX.2023J2.4

La respuesta correcta es **C**.

La *weak learning assumption* en clasificación binaria establece que cada clasificador débil tiene error **mejor que azar**, es decir:

$$
\varepsilon < 0.5 - \gamma
$$

con $\gamma > 0$.

## AAII.EX.2023J2.5

### Enunciado AAII.EX.2023J2.5

Los modelos débiles utilizados en gradient boosting pueden ser…

- A. exclusivamente regresores lineales.
- B. regresores lineales o árboles.
- C. cualquier tipo general de regresor.
- D. modelos simples como regresiones lineales, árboles u otros equivalentes.

### Solución AAII.EX.2023J2.5

La respuesta correcta es **D**.

En intensificación (boosting) los aprendices débiles pueden ser **cualquier modelo sencillo** (p. ej., *stumps*/árboles pequeños, regresiones lineales, etc.), siempre que sea capaz de ajustarse iterativamente a residuos/gradientes.

## AAII.EX.2023J2.6

### Enunciado AAII.EX.2023J2.6

El índice de Hartigan puede describirse como…

- A. la razón entre la dispersión entre grupos y la dispersión interna, normalizada por grados de libertad.
- B. el cociente entre la menor distancia intergrupo y la mayor distancia intragrupo.
- C. el logaritmo de la relación entre dispersión entre grupos y dispersión interna.

### Solución AAII.EX.2023J2.6

La respuesta correcta es **A**.

El índice de Hartigan (en este contexto) se expresa como un **cociente tipo F** entre variabilidad **entre** grupos y variabilidad **intra** grupos, ajustadas por sus grados de libertad (forma equivalente a:

- numerador proporcional a $SSB/(M-1)$
- denominador proporcional a $SSE/M$

).

## AAII.EX.2023J2.7

### Enunciado AAII.EX.2023J2.7

El algoritmo de K-medias se caracteriza por…

- A. alternar actualizaciones que no garantizan minimizar la función objetivo.
- B. alternar pasos que pueden aumentar temporalmente la función objetivo aunque convergen.
- C. alternar actualizaciones que reducen la función objetivo hasta converger.

### Solución AAII.EX.2023J2.7

La respuesta correcta es **A**.

K-medias alterna:

- asignación: actualizar $c(i)$ asignando cada punto al centro más cercano
- actualización: recomputar las medias (centroides) de cada grupo

Ambos pasos **no incrementan** la función objetivo, pero solo se garantiza convergencia a un **óptimo local**, no al global.

## AAII.EX.2023J2.8

### Enunciado AAII.EX.2023J2.8

En clustering con datos faltantes…

- A. es recomendable imputar con medias o medianas sin riesgo de sesgo.
- B. deben calcularse distancias solo con información disponible, evitando sesgos.
- C. en variables categóricas, la ausencia puede modelarse como una categoría adicional cuando tenga significado.

### Solución AAII.EX.2023J2.8

La respuesta correcta es **C**.

Con datos ausentes y variables categóricas, puede ser razonable crear una **categoría “ausente”** si la ausencia es informativa y puede indicar similitud entre observaciones (patrones de *missingness*).

## AAII.EX.2023J2.9

### Enunciado AAII.EX.2023J2.9

Según la clasificación de Mohandes y colaboradores, la estrategia más común y efectiva para combinar clasificadores opera…

- A. a nivel sensorial.
- B. sobre variables o características.
- C. en la etapa de decisión.
- D. en la fase de eficiencia computacional.

### Solución AAII.EX.2023J2.9

La respuesta correcta es **C**.

Según Mohandes et al., la combinación más frecuente y exitosa suele ser la fusión **a nivel de decisión** (combinar salidas/decisiones de clasificadores).

## AAII.EX.2023J2.10

### Enunciado AAII.EX.2023J2.10

El apilamiento o stacking de modelos se define como un procedimiento que…

- A. promedia directamente las salidas de varios modelos.
- B. no requiere entrenamiento adicional.
- C. organiza modelos en cascada donde la salida de uno alimenta al siguiente.
- D. presenta mayor complejidad computacional que gradient boosting.

### Solución AAII.EX.2023J2.10

La respuesta correcta es **C**.

Stacking entrena un **meta-modelo** que toma como **entradas** las salidas (predicciones) de varios modelos base, formando una arquitectura en **cascada** (dos niveles).
