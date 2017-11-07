# Ruby Accesos - SQLite3

Basado en boilerplate wixel de Sinatra. Gestión de las ubicaciones (departamento, provincia y distritos) del Perú.

### Antes de usar

  $ bundler install

### Rutas

  +

### TODO

  + P

### Instalación de EJDB

Instlación de software y dependencias. Adicionalmente hay que tener instalado NodeJS.

    $ sudo add-apt-repository ppa:adamansky/ejdb
    $ sudo apt-get update
    $ sudo apt-get install ejdb ejdb-dbg gcc clang cmake zlib1g-dev
    $ git clone https://github.com/Softmotions/ejdb.git
    $ cd ejdb
    $ mkdir build
    $ cd build
    $ cmake -DCMAKE_BUILD_TYPE=Release ../
    $ make
    $ sudo make install
    $ npm install -g ejdb

### Ruby binding

Instlación de las dependencias anteriores y la siguiente:

    $ git clone https://github.com/Softmotions/ejdb-ruby.git
    $ cd ./ejdb-ruby
    $ make
    $ make install

### Cliente EJDB en la terminal:

+ Acceder al cliente:

    $ ejdb

+ Abrir base de datos:

    ejdb > db.open('mydb');

+ Obtener la información de colecciones:

    ejdb> db.getDBMeta();

+ Consultar todos los registros:

    ejdb> db.find('colección');

---

Fuentes:

# Fuentes:

+ https://github.com/Wixel/Frank-Sinatra
+ http://ejdb.org/doc/install/ubuntu.html
+ https://github.com/Softmotions/ejdb-ruby
+ http://ejdb.org/doc/cli.html
