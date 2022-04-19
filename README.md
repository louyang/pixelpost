# pixelpost
Major revision of the <a href="https://github.com/pixelpost/pixelpost">original pixelpost</a> to make it [mostly] work with PHP7.0 and above.

Remark:
1. patched lots of codes to make it work with PHP7.4 and MariaDB10.5;
2. abandoned the installation - initial installation can be done by importing the sql database into MariaDB (localhost.sql);
3. code tuned and updated for my personal preference - use with your own risk;

Installation:
1. install apache2/nginx/httpd/other web servers;
2. install PHP (work with PHP7.0 and above, not backward compatible);
3. install MariaDB ([should] work with 5.0 and above) and phpmyadmin (optional);
4. import localhost.sql for initial installation (recommend to use phpmyadmin);
