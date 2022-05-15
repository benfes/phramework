server {
    listen 80 default_server;
    root /app/public;

    index index.php index.html index.htm;

    location ~\.php$ {
        fastcgi_pass php:9000;
        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
        include fastcgi_params;
    }
}
