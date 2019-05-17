# Guía de instalación para GNU/Linux

## Paso 1: Instalar git

[Git](https://git-scm.com/) es un software de control de versiones con el que se elabora el material del curso, y que permite a los asistentes mantenerlo actualizado.  

Para instalar git ingresar el siguiente comando en la terminal (`Ctrl + T` para abrir la terminal):

```sh
sudo apt-get install git
```

## Paso 2: Clonar el repositorio

Es un directorio con el material del curso. Para clonarlo o descargarlo en la compu ingresar desde la terminal o línea de comandos (`Ctrl + T` para abrir la terminal):

```sh
cd && git clone https://github.com/capacitaciones-r4/curso-python-rio4
```

Luego del paso 1, se debe contar con el directorio del curso en la compu.

Las siguientes instrucciones tienen que ver con la instalación de herramientas que van a permitir trabajar en un entorno listo para comenzar a programar, y en las mismas condiciones para todos los asistentes.

## Paso 2: Descargar e instalar Anaconda

[Anaconda](https://www.anaconda.com/) es una distribución que administra y gestiona el intérprete de Python, su paquetería, entornos virtuales y entornos de trabajo.  

**2.1**. Para descargar anaconda [click aquí](https://repo.anaconda.com/archive/Anaconda3-2019.03-Linux-x86_64.sh), guardar el archivo en el directorio de usuario, es decir `/home/<nombre-de-usuario>`.

**2.2**. Una vez descargado el archivo de instalación, ingresar en la terminal:

```sh
cd
sudo chmod +x Anaconda3-2019.03-Linux-x86_64.sh && ./Anaconda3-2019.03-Linux-x86_64.sh
```

Se muestra el siguiente mensaje:

```sh
Welcome to Anaconda3 2019.03

In order to continue the installation process, please review the license
agreement.
Please, press ENTER to continue
>>> 
```

**2.3**. Presionar `Enter`.

A continuación se muestra la licencia y condiciones de uso:

```sh
===================================
Anaconda End User License Agreement
===================================

Copyright 2015, Anaconda, Inc.

All rights reserved under the 3-clause BSD License:

Redistribution and use in source and binary forms, with or without modification,
 are permitted provided that the following conditions are met:

  * Redistributions of source code must retain the above copyright notice, this 
list of conditions and the following disclaimer.
  * Redistributions in binary form must reproduce the above copyright notice, th
is list of conditions and the following disclaimer in the documentation and/or o
ther materials provided with the distribution.
  * Neither the name of Anaconda, Inc. ("Anaconda, Inc.") nor the names of its c
ontributors may be used to endorse or promote products derived from this softwar
e without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND 
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WA
RRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
--More--
```

**2.4**. Presionar la `barra espaciadora` *(aproximadamente 4 veces)* hasta llegar al final del documento, donde se muestra lo siguiente:

```sh
    A network authentication protocol designed to provide strong authentication 
for client/server applications by using secret-key cryptography.

cryptography
    A Python library which exposes cryptographic recipes and primitives.


Do you accept the license terms? [yes|no]
[no] >>> 
```

**2.5**. Escribir `yes` y presionar `enter`.

Se muestra el siguiente mensaje:

```sh
Anaconda3 will now be installed into this location:
/home/<nombre-de-usuario>/anaconda3

  - Press ENTER to confirm the location
  - Press CTRL-C to abort the installation
  - Or specify a different location below
```

**2.6**. Presionar `enter`.

Se muestra el siguiente mensaje:

```sh
installation finished.
Do you wish the installer to initialize Anaconda3
by running conda init? [yes|no]
```

**2.7**. Escribir `yes` y presionar `enter`.

Se muestra el siguiente mensaje:

```sh
Thank you for installing Anaconda3!

===========================================================================

Anaconda and JetBrains are working together to bring you Anaconda-powered
environments tightly integrated in the PyCharm IDE.

PyCharm for Anaconda is available at:
https://www.anaconda.com/pycharm

```

## Paso 3: Crear un entorno virtual

Anaconda permite crear entornos virtuales, se trata de una "porción" de la compu con su propio interprete de python y bibliotecas en versiones específicas, que no interfiere con las del sistema, de manera que si algo falla en ese entorno, no afecta al resto del sistema. Además, es una garantía de trabajar en las mismas condiciones para todos los asistentes.

```sh
cd curso-python-2019
conda create -n curso-python python=3.7
```

Se muestra el siguiente mensaje:

```sh
The following NEW packages will be INSTALLED:

  ca-certificates    pkgs/main/linux-64::ca-certificates-2019.1.23-0
  certifi            pkgs/main/linux-64::certifi-2019.3.9-py37_0
  libedit            pkgs/main/linux-64::libedit-3.1.20181209-hc058e9b_0
  libffi             pkgs/main/linux-64::libffi-3.2.1-hd88cf55_4
  libgcc-ng          pkgs/main/linux-64::libgcc-ng-8.2.0-hdf63c60_1
  libstdcxx-ng       pkgs/main/linux-64::libstdcxx-ng-8.2.0-hdf63c60_1
  ncurses            pkgs/main/linux-64::ncurses-6.1-he6710b0_1
  openssl            pkgs/main/linux-64::openssl-1.1.1b-h7b6447c_1
  pip                pkgs/main/linux-64::pip-19.1.1-py37_0
  python             pkgs/main/linux-64::python-3.7.3-h0371630_0
  readline           pkgs/main/linux-64::readline-7.0-h7b6447c_5
  setuptools         pkgs/main/linux-64::setuptools-41.0.1-py37_0
  sqlite             pkgs/main/linux-64::sqlite-3.28.0-h7b6447c_0
  tk                 pkgs/main/linux-64::tk-8.6.8-hbc83047_0
  wheel              pkgs/main/linux-64::wheel-0.33.2-py37_0
  xz                 pkgs/main/linux-64::xz-5.2.4-h14c3975_4
  zlib               pkgs/main/linux-64::zlib-1.2.11-h7b6447c_3


Proceed ([y]/n)? 
```

**3.1**. Escribir `y` y presionar `enter`.

Se muestra el siguiente mensaje:

```sh
# To activate this environment, use:
# > source activate curso-python
#
# To deactivate an active environment, use:
# > source deactivate
#
```

**3.2**. Escribir en lal terminal:

`source activate curso-python`

Debería cambiar la línea de comandos, al comienzo debería aparecer `(curso-python)`

**3.3**. Escribir en la terminal:

### Paso 4: Iniciar Jupyterlab

[Jupyterlab](https://jupyter.org/) es un editor de archivos de documentación y de código que ofrece una IDE amigable y numerosos plugins para facilitar tareas al desarrollar, además de ser un estándar en la comunidad de Python.

En la terminal ingresar:

```sh
cd
cd curso-python
jupyter-lab

```

Se muestra lo siguiente:

```sh
[I 23:48:18.362 LabApp] The Jupyter Notebook is running at:
[I 23:48:18.362 LabApp] http://localhost:8888/?token=2b9eec7377bc03de9842507a1a03896606e5ed8d685aa4e7
[I 23:48:18.362 LabApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
[C 23:48:18.590 LabApp] 
    
    To access the notebook, open this file in a browser:
        file:///run/user/1003/jupyter/nbserver-9437-open.html
    Or copy and paste one of these URLs:
        http://localhost:8888/?token=2b9eec7377bc03de9842507a1a03896606e5ed8d685aa4e7
```

Se debería abrir en el navegador Jupyterlab, si no es así, se debe `copiar la URL http://localhost:8888/?token=2b9e(...)` que se muestra en la terminal, y pegar en un navegador.

Se debería abrir lo siguiente:

![](https://i.imgur.com/FOJoIkq.png)


**¡FELICIDADES!** La compu está lista para arrancar el curso.

Un ratito antes de empezar la primer clase:

```sh
cd
cd curso-python-rio4
source activate curso-python
git pull
jupyter-lab
```