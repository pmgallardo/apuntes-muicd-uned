<!--
SPDX-FileCopyrightText: 2026 Colaboradores de apuntes_muicd_uned

SPDX-License-Identifier: CC-BY-4.0
-->

# AAII - Exámen 2025SO

Ejercicios elaborados con fines educativos, inspirados en los contenidos evaluados en el exámen de la sesión ordinaria de la convocatoria de septiembre 2025 de Aprendizaje Automático II del MUICD de la UNED.

Este documento no es una copia ni una transcripción del examen oficial, sino una redacción propia de ejercicios conceptualmente equivalentes.

Asignatura: Aprendizaje Automático II  
Duración máxima: 60 minutos  
Material permitido: todo tipo de material de consulta.

N.° preguntas: 10
N.° por pregunta: 4
Pregunta correcta: +1 punto
Pregunta incorrecta: -0,3 puntos

La prueba consta de 10 preguntas teórico-prácticas relacionadas con los contenidos de la asignatura. Cada pregunta presenta hasta cuatro alternativas y solo una es correcta. Cada acierto suma un punto y cada error resta 0.3 puntos.

## AAII.EX.2025S0.1

### Enunciado AAII.EX.2025S0.1

En un Random Forest, un conjunto de árboles excesivamente parecidos entre sí aporta menor mejora porque…

- A. incrementa el sesgo global del modelo.
- B. limita la reducción efectiva de la varianza al promediar.
- C. anula los efectos de la poda individual.
- D. exige un mayor volumen de datos de entrenamiento.

### Solución AAII.EX.2025S0.1

### Solución AAII.EX.2025SO.1

La respuesta correcta es **B**.

Si los árboles son muy similares, sus errores están más correlacionados y el promediado reduce **menos** la varianza del conjunto.

## AAII.EX.2025S0.2

### Enunciado AAII.EX.2025S0.2

La disimilitud cofenética entre dos observaciones…

- A. sirve como indicador de la calidad del dendrograma como representación de los datos.
- B. es una definición restrictiva que viola la desigualdad ultramétrica.
- C. puede correlacionarse con la calidad del agrupamiento, aunque refleja principalmente la estructura impuesta por el algoritmo.
- D. no tiene aplicación práctica en la evaluación de agrupamientos.

### Solución AAII.EX.2025S0.2

La respuesta correcta es **C**.

La disimilitud cofenética induce una estructura ultramétrica propia del dendrograma; la correlación cofenética puede medir la fidelidad de la representación, pero no tiene por qué reflejar la estructura “real” de los datos sino la impuesta por el método y criterio de enlace.

## AAII.EX.2025S0.3

### Enunciado AAII.EX.2025S0.3

La combinación de clasificadores que integra la información después de obtener las etiquetas individuales corresponde a…

- A. fusión a nivel de sensores.
- B. integración a nivel de características.
- C. combinación a nivel de decisión.
- D. combinación abstracta.

### Solución AAII.EX.2025SO.3

La respuesta correcta es **C**.

La fusión tras producir las etiquetas (salidas) corresponde a combinación **a nivel de decisión**.

## AAII.EX.2025S0.4

### Enunciado AAII.EX.2025S0.4

En una combinación con umbral blando, la predicción final se obtiene…

- A. mediante votación simple por mayoría.
- B. considerando probabilidades posteriores de cada clase.
- C. asignando votos con pesos constantes.
- D. eligiendo el clasificador más preciso.

### Solución AAII.EX.2025SO.4

La respuesta correcta es **B**.

El umbral blando combina usando puntuaciones/probabilidades de clase (aprox. probabilidades a posteriori), agregándolas para decidir la salida final.

## AAII.EX.2025S0.5

### Enunciado AAII.EX.2025S0.5

AdaBoost puede mostrar menos sobreajuste del esperado porque…

- A. elimina ejemplos mal clasificados al finalizar.
- B. la reponderación exponencial no afecta a la varianza.
- C. el ensamblado global equilibra el énfasis en casos difíciles.
- D. aplica una regularización explícita en iteraciones finales.

### Solución AAII.EX.2025SO.5

La respuesta correcta es **C**.

Aunque repondera ejemplos difíciles, el ensamblado final (combinación ponderada de muchos débiles) puede compensar el énfasis excesivo en ciertos ejemplos y, en la práctica, no sobreajustar tanto como cabría esperar.

## AAII.EX.2025S0.6

### Enunciado AAII.EX.2025S0.6

En stacking, la función principal es…

- A. entrenar múltiples modelos sin combinarlos.
- B. aplicar votación mayoritaria.
- C. entrenar un meta-modelo que aprenda a fusionar predicciones base.
- D. sustituir varios modelos por uno más complejo.

### Solución AAII.EX.2025SO.6

La respuesta correcta es **C**.

Stacking entrena un **meta-modelo** que aprende a combinar las predicciones de varios modelos base.

## AAII.EX.2025S0.7

### Enunciado AAII.EX.2025S0.7

En bagging, los árboles suelen construirse sin poda porque…

- A. así se incrementa el sesgo reduciendo varianza.
- B. se prioriza bajo sesgo, confiando en que el promedio atenúe la varianza.
- C. la poda es incompatible con muestras bootstrap.
- D. acelera el entrenamiento.

### Solución AAII.EX.2025SO.7

La respuesta correcta es **B**.

En bagging se prefieren árboles grandes para reducir el sesgo individual y dejar que la alta varianza se reduzca al promediar muchos árboles.

## AAII.EX.2025S0.8

### Enunciado AAII.EX.2025S0.8

En aprendizaje no supervisado, la técnica que busca componentes que expliquen la mayor variabilidad de los datos es…

- A. mezcla de gaussianas.
- B. análisis de componentes principales.
- C. clustering jerárquico.
- D. algoritmos evolutivos.

### Solución AAII.EX.2025SO.8

La respuesta correcta es **B**.

PCA busca direcciones (componentes) que maximizan la varianza explicada en los datos.

## AAII.EX.2025S0.9

### Enunciado AAII.EX.2025S0.9

El bagging con árboles grandes no incrementa significativamente el sobreajuste porque…

- A. la varianza individual se reduce al promediar múltiples modelos.
- B. se aplica poda posterior a la combinación.
- C. el remuestreo bootstrap elimina el sobreajuste.
- D. el método corrige automáticamente el sesgo.

### Solución AAII.EX.2025SO.9

La respuesta correcta es **A**.

Los árboles grandes tienen bajo sesgo y alta varianza, pero el bagging reduce esa varianza al promediar, evitando un aumento marcado del sobreajuste.

## AAII.EX.2025S0.10

### Enunciado AAII.EX.2025S0.10

En stacking, el meta-modelo tiene como objetivo principal…

- A. seleccionar características relevantes de cada clasificador.
- B. aprender relaciones y patrones de error entre predicciones base.
- C. generar muestras bootstrap adicionales.
- D. descartar clasificadores débiles.

### Solución AAII.EX.2025SO.10

La respuesta correcta es **B**.

El meta-modelo aprende cómo se relacionan y complementan las predicciones base (patrones de error/correlaciones) para producir la predicción final.
