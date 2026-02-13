<!--
SPDX-FileCopyrightText: 2026 Colaboradores de apuntes_muicd_uned

SPDX-License-Identifier: CC-BY-4.0
-->

# AAII.EX.2022SO

Ejercicios elaborados con fines educativos, inspirados en los contenidos evaluados en el exámen de la sesión ordinaria de la convocatoria de septiembre 2022 de Aprendizaje Automático II del MUICD de la UNED.

Este documento no es una copia ni una transcripción del examen oficial, sino una redacción propia de ejercicios conceptualmente equivalentes.

Asignatura: Aprendizaje Automático II  
Duración máxima: 120 minutos  
Material permitido: todo tipo de material de consulta.

## AAII.EX.2022SO.1

### Enunciado AAII.EX.2022SO.1

En el contexto de los bosques aleatorios, el parámetro B se interpreta como:

- A. El número de características disponibles en los datos de entrada.
- B. La cantidad total de variables utilizadas por cada árbol.
- C. El número de variables evaluadas al dividir cada nodo.
- D. El total de árboles que componen el modelo.

### Solución AAII.EX.2022SO.1

La respuesta correcta es **D**.

En bosques aleatorios, $B$ denota el **número de árboles** del bosque (número de réplicas bootstrap/modelos base).

## AAII.EX.2022SO.2

### Enunciado AAII.EX.2022SO.2

El procedimiento conocido como bootstrapping…

- A. es un método determinista de remuestreo orientado a reducir sesgo.
- B. disminuye directamente el coste computacional del entrenamiento.
- C. es un remuestreo aleatorio con reemplazo para estimar propiedades poblacionales.
- D. introduce inestabilidad numérica en los cálculos.

### Solución AAII.EX.2022SO.2

La respuesta correcta es **C**.

El *bootstrapping* es un remuestreo **aleatorio con repetición** a partir de la muestra observada para **estimar** la distribución de estadísticos/parámetros poblacionales.

## AAII.EX.2022SO.3

### Enunciado AAII.EX.2022SO.3

En regresión, el error esperado de predicción puede expresarse como…

- A. la suma de sesgo y varianza.
- B. la suma de error irreducible, sesgo y varianza.
- C. la combinación de error irreducible, sesgo y varianza.
- D. la suma de sesgo y el cuadrado de la varianza.

### Solución AAII.EX.2022SO.3

La respuesta correcta es **B**.

En regresión, el error de predicción esperado se descompone como:

$$
\mathbb{E}\big[(Y - \hat f(X))^2\big] = \sigma^2 + \text{Sesgo}^2 + \text{Varianza}
$$

donde $\sigma^2$ es el **error irreducible**.

## AAII.EX.2022SO.4

### Enunciado AAII.EX.2022SO.4

Una diferencia conceptual entre AdaBoost y gradient boosting es que…

- A. solo gradient boosting asigna pesos a los modelos débiles.
- B. únicamente AdaBoost pondera los clasificadores débiles.
- C. gradient boosting pondera ejemplos además de modelos.
- D. AdaBoost ajusta pesos tanto de ejemplos como de clasificadores.

### Solución AAII.EX.2022SO.4

La respuesta correcta es **D**.

AdaBoost asigna pesos a los **ejemplos** (repondera observaciones) y además pondera los **clasificadores** en la combinación.

## AAII.EX.2022SO.5

### Enunciado AAII.EX.2022SO.5

Los mecanismos habituales de control en gradient boosting incluyen…

- A. la tasa de aprendizaje, el número de modelos y la fracción de datos utilizada.
- B. exclusivamente la tasa de aprendizaje.
- C. la tasa de aprendizaje, el gradiente y la profundidad de los árboles.
- D. el número de modelos y su tamaño máximo.

### Solución AAII.EX.2022SO.5

La respuesta correcta es **A**.  

Parámetros típicos de control: **tasa de aprendizaje**, **número de modelos** (iteraciones) y **fracción de observaciones** por iteración (stochastic gradient boosting / subsampling).

## AAII.EX.2022SO.6

### Enunciado AAII.EX.2022SO.6

Los métodos basados en boosting permiten cierta interpretación porque…

- A. los árboles individuales son fáciles de interpretar.
- B. puede evaluarse la relevancia de cada variable.
- C. es sencillo representarlos gráficamente en tres dimensiones.
- D. su codificación visual facilita la lectura.

### Solución AAII.EX.2022SO.6

La respuesta correcta es **B**.  

Aunque el conjunto completo no sea tan interpretable como un único árbol, sí es habitual obtener **importancia de variables** y otras herramientas (p. ej., dependencias parciales).

## AAII.EX.2022SO.7

### Enunciado AAII.EX.2022SO.7

El fundamento de una combinación eficaz de clasificadores es que…

- A. todos obtengan buenos resultados en la mayoría de ejemplos.
- B. los errores individuales no coincidan sistemáticamente.
- C. exista una mezcla de clasificadores muy buenos y malos.
- D. predominen clasificadores de rendimiento medio.

### Solución AAII.EX.2022SO.7

La respuesta correcta es **B**.  

La clave en ensembles es la **diversidad**: que no fallen en los **mismos** ejemplos (errores poco correlados).

## AAII.EX.2022SO.8

### Enunciado AAII.EX.2022SO.8

El agrupamiento mediante mezcla de gaussianas se aproxima a K-medias cuando:

$$
\Sigma = \sigma I,\quad \sigma \rightarrow 0
$$

- A. las matrices de covarianza cumplen esa condición.
- B. la varianza tiende a infinito bajo esa misma estructura.
- C. el determinante de cualquier covarianza crece sin límite.

### Solución AAII.EX.2022SO.8

La respuesta correcta es **A**.  

GMM se aproxima a K-medias cuando las covarianzas son esféricas $\Sigma_k = \sigma I$ y la varianza común tiende a 0, haciendo que cada punto “pertenezca” casi por completo a un único componente.

## AAII.EX.2022SO.9

### Enunciado AAII.EX.2022SO.9

El número adecuado de grupos en un conjunto de datos puede estimarse como…

- A. el valor que minimiza la dispersión interna de los grupos.
- B. el valor que maximiza dicha dispersión interna.
- C. el punto a partir del cual añadir grupos apenas reduce la dispersión interna.

### Solución AAII.EX.2022SO.9

La respuesta correcta es **C**.  

Criterio del “codo”: elegir $K$ a partir del cual aumentar el número de grupos apenas reduce la disimilitud intra-grupo.

## AAII.EX.2022SO.10

### Enunciado AAII.EX.2022SO.10

Un método de agrupamiento basado en distancias euclídeas…

- A. equivale a uno basado directamente en correlaciones.
- B. equivale a uno basado en uno menos la correlación.
- C. coincide conceptualmente con ambas formulaciones anteriores.

### Solución AAII.EX.2022SO.10

La respuesta correcta es **B**.  

Con datos estandarizados, la distancia euclídea entre vectores está relacionada con la correlación, siendo equivalente (monótonamente) a usar una disimilitud tipo $1 - \rho$.
