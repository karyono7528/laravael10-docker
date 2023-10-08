# untuk menjalankan setelah clone dari github
make setup

# buat file .htaccess di root dengan bash
- docker exec -it laravel-docker bash
- cat > .htaccess
# copy dan paste code dibawah
RewriteEngine On
RewriteCond %{REQUEST_URI} !^/public/
RewriteRule ^(.*)$ /public/$1 [L,QSA]

# untuk memberi akses ke storage
chown -R www-data:www-data . 

# untuk instal npm / jalankan di local
docker-compose run --rm npm install

# untuk run npm / jalankan di local
docker-compose run --rm npm run dev
