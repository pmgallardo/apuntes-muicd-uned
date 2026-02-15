# GAINE.EX.2022J2

Ejercicios elaborados con fines educativos, inspirados en los contenidos evaluados en el exámen de la sesión de la 2.ª semana de la convocatoria de junio 2022 de Gestión/Almacenamiento de Información no Estructurada del MUICD de la UNED.

Este documento no es una copia ni una transcripción del examen oficial, sino una redacción propia de ejercicios conceptualmente equivalentes.

Duración máxima: 2 horas.
N.° de preguntas: 20
Pregunta correcta: +0.5 puntos
Pregunta incorrecta: -0.2 puntos.  

Si se plantean dudas al responder a una pregunta se puede justificar la decisión tomada en una hoja aparte.

## GAINE.EX.2022J2.1

### Enunciado GAINE.EX.2022J2.1

Considerando el sistema ilustrado en la figura, ¿qué combinación de propiedades del teorema CAP se está cumpliendo?

![Figura](1.png)

- A. CP.
- B. CA.
- C. AP.
- D. Ninguna de las anteriores.

### Solución GAINE.EX.2022J2.1

---

## GAINE.EX.2022J2.2

### Enunciado GAINE.EX.2022J2.2

Si una carga de trabajo incluye un número importante de consultas de agregación, ¿qué modelo de base de datos resulta más apropiado?

- A. Modelo orientado a grafos.
- B. Modelo orientado a columnas.
- C. Modelo clave-valor.
- D. Ninguna de las anteriores.

### Solución GAINE.EX.2022J2.2

---

## GAINE.EX.2022J2.3

### Enunciado GAINE.EX.2022J2.3

Partiendo de una instancia vacía de Redis, se ejecuta la siguiente secuencia de comandos. ¿Qué salida sería coherente con su funcionamiento?

- A.

  ```text
  > SET server:name "uned"
  "uned"
  > GET server:name
  OK
  > EXISTS server:name
  (integer) 0

- B.

    > SET server:name "uned"
    OK
    > GET server:name
    "null"
    > EXISTS server:name
    (integer) 1

- C.

    > SET server:name "uned"
    OK
    > GET server:name
    "uned"
    > EXISTS server:name
    (integer) 1

- D. Ninguna de las opciones anteriores es correcta.

### Solución GAINE.EX.2022J2.3

---

## GAINE.EX.2022J2.4

### Enunciado GAINE.EX.2022J2.4

En una base de datos Redis inicialmente vacía se lanzan varios comandos consecutivos. ¿Cuál de los siguientes resultados sería el esperado?

- A.

    > set numestudiantes 100
    OK
    > incr numestudiantes
    (integer) 1
    > del numestudiantes
    (integer) 1
    > incr numestudiantes
    (integer) 100
    > incr numestudiantes
    (integer) 101

- B.

    > set numestudiantes 100
    OK
    > incr numestudiantes
    (integer) 101
    > del numestudiantes
    (integer) 1
    > incr numestudiantes
    (integer) 1
    > incr numestudiantes
    (integer) 2

- C.

    > set numestudiantes 100
    (error) comando no reconocido
    > incr numestudiantes
    (error) comando no reconocido
    > del numestudiantes
    (integer) 1
    > incr numestudiantes
    (integer) 1
    > incr numestudiantes
    (integer) 2

- D. Ninguna de las opciones anteriores es correcta.

### Solución GAINE.EX.2022J2.4

---

## GAINE.EX.2022J2.5

### Enunciado GAINE.EX.2022J2.5

Suponiendo una base Redis vacía, se ejecuta la siguiente secuencia con claves que expiran. ¿Qué conjunto de resultados sería consistente con el comportamiento del sistema?

- A.

    > SET ejemplo:lock "Examen redis"
    OK
    > expire ejemplo:lock 120
    (integer) 1
    > get ejemplo:lock
    "Examen redis"
    > TTL ejemplo:lock
    (integer) 82
    > get ejemplo:lock
    "Examen redis"
    > TTL ejemplo:lock
    (integer) -2
    > get ejemplo:lock
    (nil)

- B.

    > SET ejemplo:lock "Examen redis"
    OK
    > expire ejemplo:lock 120
    (integer) 1
    > get ejemplo:lock
    (nil)
    > TTL ejemplo:lock
    (integer) 82
    > get ejemplo:lock
    (nil)
    > TTL ejemplo:lock
    (integer) -2
    > get ejemplo:lock
    (nil)

- C.

    > SET ejemplo:lock "Examen redis"
    OK
    > expire ejemplo:lock 120
    (integer) 1
    > get ejemplo:lock
    "Examen redis"
    > TTL ejemplo:lock
    (integer) 82
    > get ejemplo:lock
    "Examen redis"
    > TTL ejemplo:lock
    (integer) -2
    > get ejemplo:lock
    "Examen redis"

- D. Ninguna de las opciones anteriores es correcta.

### Solución GAINE.EX.2022J2.5

---
