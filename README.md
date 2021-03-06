Verifícalo
==========

[![Build Status](https://travis-ci.org/LabPLC/verificalo.svg?branch=master)](https://travis-ci.org/LabPLC/verificalo)
[![Dependency Status](https://gemnasium.com/LabPLC/verificalo.svg)](https://gemnasium.com/LabPLC/verificalo)
[![Coverage Status](https://coveralls.io/repos/LabPLC/verificalo/badge.png?branch=master)](https://coveralls.io/r/LabPLC/verificalo?branch=master)
[![Code Climate](https://codeclimate.com/github/LabPLC/verificalo.png)](https://codeclimate.com/github/LabPLC/verificalo)

Para que un automovilista de la Ciudad de México tenga toda la
información necesaria para cumplir con sus obligaciones debe consultar
diferentes recursos desconectados: el último certificado de
verificación —el cual es un papel impreso— y dos páginas de internet
diferentes.

Este es un problema que aborda Verifícalo, ya que funciona como un
centro de información que se alimenta de datos de diferentes
secretarías para que los automovilistas encuentren toda la información
que necesitan para cumplir sus obligaciones.

Además, mediante un simple registro los automovilistas pueden recibir
en su correo electrónico recordatorios sobre:

- El próximo periodo para verificar su auto.
- Los días de la semana en que no pueden circular.
- Nuevos adeudos de infracciones e impuestos.

El objetivo de Verifícalo es contribuir a mejorar la cultura cívica
alrededor del uso del automóvil privado.

Características
---------------

- Consulta por placa de auto:
  - Vigencia de verificación
  - Próximo periodo para verificar
  - Hoy no circula
  - Adeudos de infracciones
  - Adeudos de tenencias

- Notificaciones por correo electrónico:
  - Recordatorios durante el periodo para verificar
  - Aviso de nuevos adeudos por infracciones o tenencias
  - Recordatorio del hoy no circula semanal o sabatino

- Preguntas y respuestas:
  - Verificación
  - Hoy no circula
  - Adeudos
  - Movilidad

- Administrador:
  - Estadisticas de usuarios y notificaciones
  - CRUD de verificentros
  - CRUD de preguntas y respuestas
  - CRUD de administradores

*CRUD es el acrónimo de Crear, Obtener, Actualizar y Borrar (del
 original en inglés: Create, Read, Update and Delete)*

Datos Abiertos
--------------

Verificalo es posible gracias a los datos y API del [Laboratorio de
Datos](http://datos.labplc.mx), especificamente:

- [API de Vehículos](http://datos.labplc.mx/movilidad/vehiculos.info)
- [Datos de Verificentros](http://datos.labplc.mx/datasets/view/verificentros)

Agradecemos a la **Dirección de Programas de Transporte Sustentable y
Fuente Móviles** de la [Secretaria de Medio
Ambiente](http://www.sedema.df.gob.mx) y a la [Secretaria de
Finanzas](http://www.finanzas.df.gob.mx/) por su colaboración en la
apertura de datos que hacen posible a este proyecto.

Capturas de pantalla
--------------------

### Versión estándar

#### Página de inicio

![Página de inicio](/doc/img/desktop-1.png?raw=true "Página de inicio")

#### Consulta de información

![Consulta por placa](/doc/img/desktop-2.png?raw=true "Consulta por placa")

#### Suscripción a notificaciones

![Suscripción a notificaciones](/doc/img/desktop-3.png?raw=true "Suscripción a notificaciones")

#### Preguntas y respuestas

![Preguntas y respuestas](/doc/img/desktop-4.png?raw=true "Preguntas y respuestas")

#### ¿Donde puedo verificar mi auto?

![Donde puedo verificar mi auto](/doc/img/desktop-5.png?raw=true "Donde puedo verificar mi auto")

#### Verificentros más cercanos

![Verificentros más cercanos](/doc/img/desktop-6.png?raw=true "Verificentros más cercanos")

### Versión móvil

#### Página de inicio

[![Página de inicio](/doc/img/mobile-1-t.png?raw=true "Página de inicio")](/doc/img/mobile-1.png?raw=true)

#### Consulta de información

[![Consulta por placa](/doc/img/mobile-2-t.png?raw=true "Consulta por placa")](/doc/img/mobile-2.png?raw=true)

#### Suscripción a notificaciones

[![Suscripción a notificaciones](/doc/img/mobile-3-t.png?raw=true "Suscripción a notificaciones")](/doc/img/mobile-3.png?raw=true)

#### Preguntas y respuestas

[![Preguntas y respuestas](/doc/img/mobile-4-t.png?raw=true "Preguntas y respuestas")](/doc/img/mobile-4.png?raw=true)

#### ¿Donde puedo verificar mi auto?

[![Donde puedo verificar mi auto](/doc/img/mobile-5-t.png?raw=true "Donde puedo verificar mi auto")](/doc/img/mobile-5.png?raw=true)

#### Verificentros más cercanos

[![Verificentros más cercanos](/doc/img/mobile-6-t.png?raw=true "Verificentros más cercanos")](/doc/img/mobile-6.png?raw=true)

### Recordatorios

![Recordatorio](/doc/img/mail.png?raw=true "Recordatorio")

### Administrador

#### Estadisticas

![Estadisticas](/doc/img/admin-1.png?raw=true "Estadisticas")

#### CRUD de verificentrros

![CRUD de verificentros](/doc/img/admin-2.png?raw=true "CRUD de verificentros")

#### CRUD de respuestas

![CRUD de respuestas](/doc/img/admin-3.png?raw=true "CRUD de respuestas")

#### CRUD de contactos

![CRUD de contactos](/doc/img/admin-4.png?raw=true "CRUD de contactos")

#### CRUD de categorias

![CRUD de categorias](/doc/img/admin-5.png?raw=true "CRUD de categorias")

#### CRUD de administradores

![CRUD de administradores](/doc/img/admin-6.png?raw=true "CRUD de administradores")

Desarrollo
----------

Verificalo esta construido con el framework [Ruby on
Rails](http://rubyonrails.org/) y utiliza la base de datos
[PostgreSQL](http://www.postgresql.org/)

### Requisitos

- PostgreSQL 9.3
- Ruby 2.0.0
- Servidor de correo SMTP (por ejemplo [mailgun](http://www.mailgun.com/))
- Cuenta de [Mapbox](http://www.mapbox.com/)
- Servidor de busquedas (por ejemplo [elasticsearch](http://www.elasticsearch.org/))

### Instalación del ambiente de desarrollo

**1. Clonar deposito**

    $ git clone https://github.com/LabPLC/verificalo

**2. Instalar dependencias**

    $ cd verificalo
    $ bundle install

**3. Configurar aplicación**

    $ cp config/application.yml.sample config/application.yml
    $ cp config/database.yml.sample config/database.yml

Ajustar `config/database.yml` y `config/application.yml`.

**4. Inicializar base de datos**

    $ rake db:setup

**5. Generar indice de busqueda**

    $ rake searchkick:reindex CLASS=Answer

**6. Ejecutar servidor de rails**
  
    $ rails server

### Pruebas automatizadas

Se necesita un ambiente de desarrollo funcional y después:

**1. Inicializar base de datos**

    $ rake db:create RAILS_ENV=test
    $ rake db:migrate RAILS_ENV=test

**2. Ejecutar pruebas**

    $ rspec -fd

### Tareas

**verificalo:db:answers**

Carga las preguntas y respuestas desde `db/seeds/answers.rb`.

**verificalo:db:verificentros**

Carga los verificentros desde `db/seeds/verificentros.csv`.

**verificalo:emails:weekday**

Envía los recordatorios de lunes a viernes (se ejecuta de domingo a
jueves).

**verificalo:emails:weekend**

Envía los recordatorios sabatinos (se ejecuta el viernes).

Contibuye
---------

Verificalo es [Software
Libre](http://es.wikipedia.org/wiki/Software_libre) y cualquiera esta
invitado a mejorar el proyecto.

Puedes utilizar nuestro [Issue
Tracker](https://github.com/LabPLC/verificalo/issues) para reportar
errores o problemas que encuentres con la aplicación así como proponer
nuevas funcionalidades.

Si deseas colaborar en el desarrollo de la aplicación nos encantaría
trabajaras sobre un nuevo branch dentro de un fork de nuestro deposito
y solicitaras un pull request con tus cambios para integrarlos. Para
más información de esta modalidad de colaboración puedes consultar:

- [Contributing to Open Source on GitHub](https://guides.github.com/activities/contributing-to-open-source/)
- [Fork A repo](https://help.github.com/articles/fork-a-repo)
- [Creating a pull request](https://help.github.com/articles/creating-a-pull-request)

Si tienes dudas o problemas sobre la metodología no dudes en
contactarnos.

Acerca
------

Verifícalo fue desarrollado por [Manuel
Rábade](http://twitter.com/manuelrabade) con ayuda de [Alberto
Barquin](http://twitter.com/_betoman) durante el programa [Codigo para
la Ciudad de México](http://codigo.labplc.mx) del [Laboratorio para la
Ciudad](http://labplc.mx) en asociación con [Code for
America](http://codeforamerica.org/).

Agradecemos a [Paola Villareal](http://twitter.com/paw), [Clorinda
Romo](http://twitter.com/clora), [Daniela
Correa](http://twitter.com/dc_field), [Oscar
Montiel](http://twitter.com/tlacoyodefrijol), [Jorge
Matalí](http://twitter.com/elmatali) y a todo el equipo del
[Laboratorio para la Ciudad](http://twitter.com/labplc) por su
colaboración en el proyecto.
