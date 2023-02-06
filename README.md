Welcome to SALVA
================

SALVA is web application to handle scientific curricula for the creation of Science 
and Technology databases at [National Autonomous University of Mexico](http://www.unam.mx/).

Getting Started
===============

1. Install rvm in your linux distribution 
2. Install ruby 2.7.2p137
3. Install SQLite3, Node.js and Yarn following the instructions from the [Rails Guides](https://guides.rubyonrails.org/v6.1/getting_started.html#creating-a-new-rails-project-installing-rails).
4. Install PostgresSQL 15.x, MemCached, Redis and ImageMagick
5. Copy the *yml.example files to *yml files in the config directory and
   adapt them to your configuration (The required are databases.yml, site.yml and mail.yml)
5. Run ``bin/setup`` to install gems and yarn packages and set up the database.

    If you encounter ``PG::InsufficientPrivilege: ERROR:  permission denied for language c``, you will need to login to PostgreSQL as superuser and enable permissions for C by doing the following:

        psql -U postgres
    
        \c salva_dev
    
        UPDATE pg_language SET lanpltrusted = true WHERE lanname LIKE 'c';
        
        \c salva_test
    
        UPDATE pg_language SET lanpltrusted = true WHERE lanname LIKE 'c';

    Run ``bin/setup`` again.


6. Run ``rails db:seed`` to populate your database. Supply an admin password when prompted.
8. Install passenger with apache or ngnix
9. Start the web server via ``passenger start``

Authors
=======

- Alejandro Juárez Robles <alex@fisica.unam.mx>
- Alejandro Aguilar Sierra <algsierra@gmail.com>
- Francisco López Ramírez <arxuna@gmail.com>
- Ramon Martínez Olvera <ramonmtzol@gmail.com>
- Gunnar Wolf <gwolf@gwolf.org>
- Eduardo Espinosa Avila <laloeag@gmail.com>

Contributors
============

- Fernando Magariños Mancha <mancha@gmail.com>
- Miguel E <mvazquez83@gmail.com>
- Alejandro Silva <alexs1010@gmail.com>
- Fernando Magariños Mancha <mancha@gmail.com>
- Boyan Georgiev <bbgeorgiev96@gmail.com>

License
=======
SALVA is released under the [GPL-2 License](http://opensource.org/licenses/GPL-2.0).

HELP
====
You can ask for help at the [SALVA-UNAM](https://groups.google.com/forum/#!forum/salva-unam) group.
