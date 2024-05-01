@echo off
echo Maven projesi temizleniyor ve paketleniyor...
mvn clean package

echo Docker image oluşturuluyor...
docker build -t blogappjdk .

echo Docker container çalıştırılıyor...
docker run -p 4444:80 --name myblogapp blogappjdk

echo İşlemler tamamlandı.