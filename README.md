# Curso de Python 2019

![logo python](https://proxy.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.unixmen.com%2Fwp-content%2Fuploads%2F2013%2F06%2Fpython-logo-master-v3-icon1.png&f=1)

Se trata de la primera edición del curso de Python para todo público en la ciudad de Río Cuarto. Formado por cuatro clases intensivas de módulo básico y clases optativas a demanda.

## Instrucciones previas

Antes de empezar las clases presenciales se deben seguir algunas instrucciones para que esté todo listo en la primer clase.

### Paso 1: Clonar o bajar el repositorio

Es un directorio con los archivos de instalación, presentaciones y material de las clases, entre otras cosas.

#### Opción 1:

Descargar el [archivo comprimido en zip](https://github.com/capacitaciones-r4/curso-python-2019/archive/master.zip) *([click aquí para descargar]((https://github.com/capacitaciones-r4/curso-python-2019/archive/master.zip))*, del repositorio y descomprimirlo en el directorio del usuario, en Windows `C:\Usuarios/<nombre-usuario>`, en GNU/Linux `/home/<nombre-de-usuario>`

#### Opción 2:

Si se cuenta con `git` instalado, desde la consola o línea de comandos, y en el home,  en Windows `C:\Usuarios/<nombre-usuario>`, en GNU/Linux `/home/<nombre-de-usuario>`:

`git clone https://github.com/capacitaciones-r4/curso-python-2019`

Luego del paso 1, se debe contar con el directorio del curso en la compu.

Las siguientes instrucciones tienen que ver con la instalación de herramientas que van a permitir trabajar en un entorno listo para comenzar a programar, y en las mismas condiciones para todos los asistentes.

### Paso 2: Instalar Docker

Docker es una herramienta de vanguardia a mencionar e introducir brevemente en el curso. Según el sistema operativo y versión de la computadora en la que se aborda el curso, se deben seguir diferentes instrucciones:

* **Windows 10 Pro o Enterprise**
* **Windows, otra versión**
* **GNU/Linux basada en Debian (Ubuntu, LinuxMint)**

#### Cómo averiguar la versión de Windows instalada

Inicio ❖ y después seleccionar Configuración ⚙ > Sistema > Acerca de.

#### Windows

##### Windows 10 Pro o Enterprise

**1. Descargar [docker](https://download.docker.com/win/stable/Docker%20for%20Windows%20Installer.exe)** *([click aquí para descargar](https://download.docker.com/win/stable/Docker%20for%20Windows%20Installer.exe))*.
**2. Ejecutar el instalador** *(doble click en Docker for Windows Installer.exe)*seguir los pasos de instalación, aceptar la licencia, autorizar la instalación, e instalar.

##### Windows, otra versión

#### Testear la instalación

Inicio ❖ y después seleccionar "ejecutar", luego "CMD", una vez en la consola escribir:

`docker --version`

si todo está bien se debería ver:

`Docker version 18.03.0-ce, build 0520e24`

escribir en la consola:

`docker run hello-world`

si está todo bien se debería ver:

```
docker : Unable to find image 'hello-world:latest' locally
...

latest:
Pulling from library/hello-world
ca4f61b1923c:
Pulling fs layer
ca4f61b1923c:
Download complete
ca4f61b1923c:
Pull complete
Digest: sha256:97ce6fa4b6cdc0790cda65fe7290b74cfebd9fa0c9b8c38e979330d547d22ce1
Status: Downloaded newer image for hello-world:latest

Hello from Docker!
This message shows that your installation appears to be working correctly.
...
```

**¡FELICIDADES!** La compu está lista para arrancar el curso

TODO

##### GNU/Linux basado en Debian (Ubuntu, Linuxmint)

1. **El primer paso es `eliminar instalaciones previas de docker`, en una terminal:**

```sh
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get autoremove
sudo apt-get autoclean
```

Si no había instalaciones existentes de docker, la terminal debería mostrarte esto:

```sh
Reading package lists... Done
Building dependency tree
Reading state information... Done
Package 'docker-engine' is not installed, so not removed
```

**2. Obtener algunas herramientas previas, en la terminal:**

```sh
sudo apt-get update
```

Al finalizar, escribir:

```sh
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
```

**3. Agregar la GPG key oficial de docker:**

```sh
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
OK
```

```sh
sudo apt-key fingerprint 0EBFCD88

pub   4096R/0EBFCD88 2017-02-22
      Key fingerprint = 9DC8 5822 9FC7 DD38 854A  E2D8 8D81 803C 0EBF CD88
uid                  Docker Release (CE deb) <docker@docker.com>
sub   4096R/F273FCD8 2017-02-22
```

```sh
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
```

**4. Instalar docker-ce**

```sh
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
```

**5. Elegir la versión de instalación**

Listar las versiones disponibles para su instalación
```sh
apt-cache madison docker-ce
```

```sh
docker-ce | 5:18.09.1~3-0~ubuntu-xenial | https://download.docker.com/linux/ubuntu  xenial/stable amd64 Packages
docker-ce | 5:18.09.0~3-0~ubuntu-xenial | https://download.docker.com/linux/ubuntu  xenial/stable amd64 Packages
docker-ce | 18.06.1~ce~3-0~ubuntu       | https://download.docker.com/linux/ubuntu  xenial/stable amd64 Packages
docker-ce | 18.06.0~ce~3-0~ubuntu       | https://download.docker.com/linux/ubuntu  xenial/stable amd64 Packages
```
**6. ¡Instalar docker!**

Para este ejemplo de instalación se usa `5:18.09.1~3-0~ubuntu-xenial` (la primera opción). En el siguiente comando se reemplaza `<VERSION_STRING> docker-ce-cli=<VERSION_STRING>` la versión deseada:

```sh
sudo apt-get install docker-ce=<VERSION_STRING> docker-ce-cli=<VERSION_STRING> containerd.io
```

```sh
sudo apt-get install docker-ce=5:18.09.1~3-0~ubuntu-xenial docker-ce-cli=5:18.09.1~3-0~ubuntu-xenial containerd.io
```

Para verificar la instalación ingresar el siguiente comando en la terminal:

```sh
sudo docker run hello-world
```

Si todo está bien se muestra en la terminal:

```sh
Hello from Docker!
This message shows that your installation appears to be working correctly.
```

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

### Modalidad

El curso de Python es presencial, el módulo introductorio tiene un tiempo y distribución recomendados de **4 clases de 3 horas cada una**, mientras que los temas de extensión se imparten cada uno en una clase extra y *optativa*.

### Metodología

Para el total de las clases se introducen teórica y conceptualmente los temas, mientras se desarrollan ejemplos, ejercicios o pequeños programas de aplicación. Y se anima a los asistentes a profundizar, resolver ejercicios extra a modo de tarea.
