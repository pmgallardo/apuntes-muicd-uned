<!--
SPDX-FileCopyrightText: 2026 Colaboradores de apuntes_muicd_uned

SPDX-License-Identifier: CC-BY-4.0
-->

# AAII.EX.2022J2

Ejercicios elaborados con fines educativos, inspirados en los contenidos evaluados en el exámen de la sesión de la 2.ª semana de junio 2022 de Aprendizaje Automático II del MUICD de la UNED.

Este documento no es una copia ni una transcripción del examen oficial, sino una redacción propia de ejercicios conceptualmente equivalentes.

Asignatura: Aprendizaje Automático II  
Duración máxima: 120 minutos  
Material permitido: todo tipo de material de consulta.

## AAII.EX.2022J2.1

### Enunciado AAII.EX.2022J2.1

El método conocido como bagging consiste en generar múltiples modelos simples con el objetivo de…

- A. producir modelos muy similares entre sí para disminuir el sesgo al combinar resultados.
- B. obtener modelos independientes para seleccionar posteriormente el de mejor rendimiento.
- C. introducir variaciones aleatorias que reduzcan la correlación entre modelos.
- D. asegurar que cada modelo sea óptimo dentro de su propio subconjunto de datos.

### Solución AAII.EX.2022J2.1

La respuesta correcta es **C**.

Bagging busca **reducir la varianza** promediando muchos modelos base, y para que el promedio reduzca la varianza de forma efectiva conviene que los modelos estén **poco correlados**, lo que se consigue con **perturbaciones aleatorias** (p. ej., remuestreo bootstrap de los datos).

## AAII.EX.2022J2.2

### Enunciado AAII.EX.2022J2.2

En problemas de clasificación, un bosque aleatorio decide la etiqueta final…

- A. calculando un promedio ponderado de las decisiones individuales.
- B. aplicando una votación que requiere mayoría absoluta.
- C. utilizando el valor central de las predicciones generadas.
- D. seleccionando la clase más votada entre los árboles.

### Solución AAII.EX.2022J2.2

La respuesta correcta es **D**.

En clasificación, un bosque aleatorio combina los árboles por **votación mayoritaria**: gana la clase con **más votos** (no es necesaria mayoría absoluta).

## AAII.EX.2022J2.3

### Enunciado AAII.EX.2022J2.3

El error estimado fuera de la muestra (OOB) se describe mejor como un valor que…

- A. suele sobreestimar el error real del modelo.
- B. es necesariamente menor que el error de validación.
- C. es siempre mayor que el error obtenido por validación.
- D. representa una magnitud ideal que solo puede estimarse indirectamente.

### Solución AAII.EX.2022J2.3

La respuesta correcta es **A**.

El error OOB suele ser una estimación **conservadora** del error de generalización: tiende a ser **ligeramente mayor** que el rendimiento real (por ejemplo, comparable a validación cruzada pero a menudo algo más pesimista).

## AAII.EX.2022J2.4

### Enunciado AAII.EX.2022J2.4

La regularización en métodos de gradient boosting se emplea principalmente para…

- A. aumentar la diversidad entre modelos base.
- B. limitar el sobreajuste durante el entrenamiento.
- C. introducir sesgo adicional en el aprendizaje.
- D. acelerar el proceso de cálculo.

### Solución AAII.EX.2022J2.4

La respuesta correcta es **B**.

En gradient boosting se regulariza (shrinkage/learning rate, profundidad limitada, subsampling, etc.) para **controlar el sobreaprendizaje** y mejorar la generalización.

## AAII.EX.2022J2.5

### Enunciado AAII.EX.2022J2.5

En el contexto del gradient boosting, puede afirmarse que…

- A. árboles más profundos garantizan mejor rendimiento.
- B. usar menos árboles incrementa el riesgo de sobreajuste.
- C. el sobreajuste no aparece debido al aprendizaje secuencial.
- D. emplear muchos árboles puede favorecer el sobreajuste.

### Solución AAII.EX.2022J2.5

La respuesta correcta es **D**.

En boosting, al aumentar el número de árboles (iteraciones) aumenta la capacidad del modelo y, si no hay regularización adecuada, crece la posibilidad de **sobreaprendizaje**.

## AAII.EX.2022J2.6

### Enunciado AAII.EX.2022J2.6

En una combinación con umbral blando, la predicción final se obtiene…

- A. mediante votación simple por mayoría.
- B. considerando probabilidades posteriores de cada clase.
- C. asignando votos con pesos constantes.
- D. eligiendo el clasificador más preciso.

### Solución AAII.EX.2022J2.6

La respuesta correcta es **B**.

El umbral (o combinación) **blando** usa las **probabilidades** (o puntuaciones calibradas) de cada clase, agregándolas (por ejemplo, sumando/promediando) para decidir la clase final.

## AAII.EX.2022J2.7

### Enunciado AAII.EX.2022J2.7

Los umbrales suaves en la decisión conjunta de clasificadores buscan…

- A. simplificar la implementación respecto a esquemas duros.
- B. aproximar probabilidades posteriores de clase.
- C. estimar anticipadamente el error esperado.
- D. reducir la incertidumbre mediante intervalos más estrechos.

### Solución AAII.EX.2022J2.7

La respuesta correcta es **B**.

Los umbrales “blandos” intentan aproximar la **probabilidad a posteriori** de la clase (a diferencia de los “duros”, que usan decisiones discretas tipo voto/clase ganadora).

## AAII.EX.2022J2.8

### Enunciado AAII.EX.2022J2.8

Los algoritmos de agrupamiento basados en optimización combinatoria intentan…

- A. minimizar la separación entre grupos.
- B. reducir la dispersión interna dentro de cada grupo.
- C. maximizar el número total de particiones posibles.

### Solución AAII.EX.2022J2.8

La respuesta correcta es **C**.

Los métodos de “agrupamiento combinatorio” se formulan como la búsqueda (o consideración) sobre el **conjunto combinatorio de particiones posibles** de los datos, es decir, el espacio de todas las particiones crece de forma combinatoria.

## AAII.EX.2022J2.9

### Enunciado AAII.EX.2022J2.9

Supongamos que la disimilitud entre dos vectores se calcula como una media ponderada por dimensión:

$$
D(x, y) = \sum_j w_j \, d_j(x, y)
$$

Asignar el mismo valor a todos los pesos implica que…

- A. cada dimensión aporta la misma influencia al cálculo global.
- B. la influencia depende de la variabilidad promedio de cada dimensión.
- C. los pesos se ajustan de forma inversa a la dispersión dimensional.

### Solución AAII.EX.2022J2.9

La respuesta correcta es **A**.

Si en una disimilitud ponderada se fija $w_j = w$ para todo $j$, entonces todas las dimensiones quedan ponderadas **igual** (misma influencia relativa en la suma/ media), salvo efectos de escala de las propias variables.

## AAII.EX.2022J2.10

### Enunciado AAII.EX.2022J2.10

El fenómeno conocido como chaining suele aparecer en…

- A. modelos de mezcla gaussiana con covarianzas degeneradas.
- B. agrupamiento jerárquico con criterio de Ward.
- C. agrupamiento jerárquico aglomerativo basado en single linkage.

### Solución AAII.EX.2022J2.10

La respuesta correcta es **C**.

El fenómeno de *chaining* es característico del clustering jerárquico aglomerativo con **single linkage**, donde se forman “cadenas” uniendo puntos o grupos por el par más cercano.
