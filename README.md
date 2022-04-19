# pixelpost
Major revision of the original pixelpost to make it [mostly] work with PHP7.0 and above

Remark:
1. patched lots of codes to make it work with PHP7.4 and MariaDB10.5;
2. abandoned the installation - initial installation can be done by importing the sql database into MariaDB (localhost.sql);
3. code tuned and updated for my personal preference - use with your own risk;

Installation:
a. install apache2/nginx/httpd/other web servers;
b. install PHP (work with PHP7.0 and above, no backward compatible);
c. install MariaDB ([should] work with 5.0 and above) and phpmyadmin (optional);
d. import localhost.sql for initial installation (recommend to use phpmyadmin);
