<!--
SPDX-FileCopyrightText: 2026 Colaboradores de apuntes_muicd_uned

SPDX-License-Identifier: CC-BY-4.0
-->

# AAII.EX.2023SO

Ejercicios elaborados con fines educativos, inspirados en los contenidos evaluados en el exámen de la sesión ordinaria de la convocatoria de septiembre 2023 de Aprendizaje Automático II del MUICD de la UNED.

Este documento no es una copia ni una transcripción del examen oficial, sino una redacción propia de ejercicios conceptualmente equivalentes.

Asignatura: Aprendizaje Automático II  
Duración máxima: 60 minutos  
Material permitido: todo tipo de material de consulta.

## AAII.EX.2023SO.1

### Enunciado AAII.EX.2023SO.1

El bagging mejora el rendimiento predictivo principalmente porque…

- A. reduce simultáneamente sesgo y varianza.
- B. disminuye la varianza manteniendo el sesgo aproximadamente constante.
- C. incrementa la varianza mientras reduce el sesgo.
- D. reduce la varianza a costa de aumentar el sesgo.

### Solución AAII.EX.2023SO.1

Equivalente: AAII.EX.2023J2.2

## AAII.EX.2023SO.2

### Enunciado AAII.EX.2023SO.2

En un bosque aleatorio, la relevancia de cada variable suele evaluarse…

- A. promediando su efecto sobre la precisión en todos los árboles.
- B. analizando la variación del error OOB asociada a cada variable.
- C. midiendo su impacto directo en la función de pérdida.
- D. observando los criterios de partición donde no fue utilizada.

### Solución AAII.EX.2023SO.2

La respuesta correcta es **A**.

Una forma estándar de importancia en Random Forests es la *permutation importance*: se **permuta** una variable (normalmente en datos OOB) y se mide el **deterioro medio** de la precisión/pérdida, promediando sobre árboles.

## AAII.EX.2023SO.3

### Enunciado AAII.EX.2023SO.3

En un proceso iterativo de clasificación, el peso asignado a una muestra en cada ronda…

- A. disminuye cuando la muestra se clasifica incorrectamente.
- B. coincide con la magnitud absoluta de su valor objetivo.
- C. refleja la importancia de clasificarla correctamente en esa iteración.
- D. aumenta si la muestra ha sido mal clasificada.

### Solución AAII.EX.2023SO.3

La respuesta correcta es **C**.

En intensificación (p. ej., AdaBoost), el peso del ejemplo $i$ en cada iteración refleja cuán importante es **clasificar correctamente** ese ejemplo en la ronda actual (los mal clasificados tienden a recibir más peso).

## AAII.EX.2023SO.4

### Enunciado AAII.EX.2023SO.4

En gradient boosting, suponiendo $\gamma > 0$, la hipótesis de aprendizaje débil implica que el error de cada modelo base…

- A. no supera $2 - \gamma$.
- B. es mayor que $0.5 + \gamma$.
- C. es inferior a $0.5 - \gamma$.
- D. coincide exactamente con $0.5$.

### Solución AAII.EX.2023SO.4

La respuesta correcta es **C**.

La asunción de aprendizaje débil requiere que cada clasificador sea mejor que azar:

$$

\varepsilon < 0.5 - \gamma

$$

con $\gamma > 0$.

## AAII.EX.2023SO.5

### Enunciado AAII.EX.2023SO.5

En clasificación, AdaBoost combina modelos débiles…

- A. promediando directamente sus predicciones.
- B. mediante votación simple.
- C. aplicando un discriminante lineal.
- D. utilizando una votación ponderada.

### Solución AAII.EX.2023SO.5

La respuesta correcta es **D**.

AdaBoost combina clasificadores débiles mediante una **votación ponderada**, con pesos (coeficientes) que dependen del rendimiento de cada clasificador.

## AAII.EX.2023SO.6

### Enunciado AAII.EX.2023SO.6

Según la clasificación de Mohandes y colaboradores, la estrategia más común y efectiva para combinar clasificadores opera…

- A. a nivel sensorial.
- B. sobre variables o características.
- C. en la etapa de decisión.
- D. en la fase de eficiencia computacional.

### Solución AAII.EX.2023SO.6

La respuesta correcta es **C**.

Según Mohandes et al., la combinación más frecuente y exitosa suele ser la fusión **a nivel de decisión** (combinar salidas/decisiones de los clasificadores).

## AAII.EX.2023SO.7

### Enunciado AAII.EX.2023SO.7

El algoritmo de K-medias se caracteriza por…

- A. alternar actualizaciones que no garantizan minimizar la función objetivo.
- B. alternar pasos que pueden aumentar temporalmente la función objetivo aunque convergen.
- C. alternar actualizaciones que reducen la función objetivo hasta converger.

### Solución AAII.EX.2023SO.7

La respuesta correcta es **B**.

K-medias puede generalizarse sustituyendo en la asignación (actualización de $c(i)$) la distancia euclídea por otra disimilitud/medida más robusta; el uso de medias como prototipos es lo que liga el método a la métrica euclídea y a su sensibilidad a outliers.

## AAII.EX.2023SO.8

### Enunciado AAII.EX.2023SO.8

El índice de Dunn se define como…

- A. la relación entre dispersión entre grupos y dispersión interna normalizada.
- B. el cociente entre la mínima distancia intergrupo y la máxima distancia intragrupo.
- C. el logaritmo de la relación entre dispersión entre grupos e intragrupos.

### Solución AAII.EX.2023SO.8

La respuesta correcta es **B**.

El índice de Dunn se define como:

$$

D
= \frac{\min\limits_{k \neq \ell} \ \delta(C_k, C_\ell)}
{\max\limits_{m} \ \Delta(C_m)}

$$

donde el numerador mide separación entre grupos (p. ej., distancia mínima entre pares de grupos distintos) y el denominador mide el diámetro intra-grupo (p. ej., distancia máxima dentro de un grupo).

## AAII.EX.2023SO.9

### Enunciado AAII.EX.2023SO.9

En un dendrograma de clustering jerárquico aglomerativo, la altura de cada fusión…

- A. refleja la disimilitud entre grupos y decrece conforme avanzan las fusiones.
- B. representa la disimilitud entre grupos y crece de forma monotónica.
- C. mide la disimilitud sin requerir comportamiento monotónico.

### Solución AAII.EX.2023SO.9

La respuesta correcta es **B**.

En un dendrograma aglomerativo, la altura de cada fusión representa la **disimilitud** a la que se unen los grupos, y esa altura es **no decreciente** (función creciente con el nivel de fusión).

## AAII.EX.2023SO.10

### Enunciado AAII.EX.2023SO.10

La disimilitud basada en la media entre grupos (group average)…

- A. converge al mismo resultado que single linkage con datos infinitos.
- B. proporciona estimaciones consistentes del valor esperado de distancia entre grupos.
- C. genera agrupamientos con disimilitudes no necesariamente monotónicas pero consistentes.

### Solución AAII.EX.2023SO.10

La respuesta correcta es **B**.

El criterio *group average* (UPGMA) define la disimilitud entre dos grupos como la **media** de las distancias entre pares de puntos de grupos distintos, por lo que aproxima el **valor esperado** de la distancia entre puntos de ambos grupos.
