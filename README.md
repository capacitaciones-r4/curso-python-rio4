# Curso de Python 2019

Se trata de la primera edición del curso de Python para todo público en la ciudad de Río Cuarto. Formado por cuatro clases intensivas de módulo básico y clases optativas a demanda.

### Paso 1: Clonar o bajar el repositorio

#### Opcion 1:

Bajar el [zip](https://github.com/capacitaciones-r4/curso-python-2019/archive/master.zip) del repositorio y descomprimirlo.

#### Opcion 2:

Si tenes git instalado, podes clonar el repo haciendo:

`git clone https://github.com/capacitaciones-r4/curso-python-2019`

### Paso 2: Instalar Docker

#### Win

TODO

#### GNU + Linux

TODO

### Paso 3: Bajar o hacer la imagen de Docker

#### Opcion 1: bajar la imagen

TODO

#### Opcion 2: Hacer la imagen

Para hacer la imagen, correr el comando:

`docker build -t curso-python .`

### Paso 4: Corriendo la aplicacion

TODO: el docker-compose

Para hacerlo, correr el comando desde la raiz del repositorio:

`docker run --rm -p 8888:8888 -v "$PWD"/notebooks:/home/jovyan/notebooks curso-python:latest`

Luego, copiar y pegar el URL (el que apunta a 127.0.0.1) en el navegador, ejemplo:

`http://127.0.0.1:8888/?token=d0e320df311ea654d57dd4cd3ecac2f235ccf16bddedde70`

## Sobre el curso

### Objetivos

* Introducir a los asistentes a Python 3.
* Reforzar y/o desarrollar conceptos de programación.
* Profundizar sobre aplicaciones o bibliotecas específicas según la demanda de los asistentes.
* Ofreciendo herramientas teóricas y prácticas de la programación.
* Animando a quien asista a desarrollar sus propios scripts y aplicaciones.
* Compartiendo experiencias.
* En un ambiente ameno y divertido.

### Motivación

>Python es un lenguaje de programación **poderoso y fácil de aprender**. Cuenta con estructuras de datos eficientes y de alto nivel y un enfoque simple pero efectivo a la **programación orientada a objetos.**

> La elegante sintaxis de Python y su **tipado dinámico**, junto con su **naturaleza interpretada**, hacen de éste un lenguaje ideal para **scripting y desarrollo rápido de aplicaciones** en diversas áreas y sobre la mayoría de las plataformas.

> Fuente: [documentación oficial](http://docs.python.org.ar/tutorial/3/real-index.html).

### Instructores

El equipo:


* **Bellomo, Lucas.** *Alumno de la facultad de Ciencias Exactas y Ciencias Humanas de la UNRC.*
* **Buri, Héctor.** *Ingeniero en Telecomunicaciones, egresado de la UNRC.*
* **Mollinedo Rivadeneira, Bibiana.** *Alumna avanzada de la Facultad de Ingeniería de la UNRC.*

Somos aficionados, autodidactas y entusiastas de Python, dispuestos a compartir conocimiento y experiencias.

### Contenidos

#### Clase 0

- **Presentación**: Equipo, experiencias personales, actividad para conocernos, metodología del curso. - B
- **¿Por qué Python?**: Características, usos, aplicaciones, ventajas y desventajas.
    - ¿Por qué Python3? - B
    - El zen de Python - L
- **Hello world**, primer ejercicio, comparando con hello world de otros lenguajes. - H
- **Python como calculadora**, operadores matemáticos para números, cadenas de caracteres y listas.
- **Tipos básicos de datos en Python**, fundamentos, ejemplos, usos, aplicaciones y ejercicios.
  - int.
  - float.
  - str. - L
  - list. - B
  - tuple. - B
  - dict. - L
  - set. - L

#### Clase 1

- **Estructuras de control de flujo**, fundamentos, ejemplos, usos, aplicaciones y ejercicios.
    - if elif y else. - B
    - for.
    - while.
    - with. - L
    - try. - L

#### Clase 2

- **Funciones**, fundamentos, interpretar código de funciones ejemplo, cómo definir e implementar una función, funciones anonimas (lambda), buenas prácticas. - L
- **Clases y objetos**, fundamentos, ejemplos, usos, aplicaciones y ejercicios.

#### Clase 3

- **Leer y escribir archivos**, fundamentos, métodos del objeto archivo, ejemplos, usos, aplicaciones y ejercicios. - L
- **Cómo instalar una biblioteca**
- **Dónde buscar ayuda.**
- **Qué sigue.**

#### Extensión optativa

Clases autocontenidas enfocadas a temas particulares y (por lo general) prácticos.

Potenciales temas de extensión:

- **Gráficos con [Matplotlib](https://matplotlib.org).**
- **Introducción a la manipulación de datos con [pandas](https://pandas.pydata.org/).**
- **Introducción a [numpy](scipy.org)** (stack científico).
- **Introducción a [machine learning](https://scikit-learn.org/stable/index.html) con Python.**
- **Introducción al procesamiento de imágenes.**
- **Explorando la biblioteca estandar.**
- **Web scraping**, extracción de datos de la web.
- **Automatización de tareas web**, automatizar procesos y testear.
- **Introducción al procesamiento natural del lenguaje.**
- **Introducción al acceso y administración de bases de datos con Python.**
- **Crear aplicaciones web dinámicas con Flask**

### Modalidad

El curso de Python es presencial, el módulo introductorio tiene un tiempo y distribución recomendados de **4 clases de 3 horas cada una**, mientras que los temas de extensión se imparten cada uno en una clase extra y *optativa*.

### Metodología

Para el total de las clases se introducen teórica y conceptualmente los temas, mientras se desarrollan ejemplos, ejercicios o pequeños programas de aplicación. Y se anima a los asistentes a profundizar, resolver ejercicios extra a modo de tarea.
