# nginx
sudo apt install nginx -y
sudo ufw allow 'Nginx Full'

echo 'server {
    listen 80;
    server_name iottrafficanalyzer iottrafficanalyzer.com;
    location / {
        proxy_pass http://127.0.0.1:8000/;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
        proxy_set_header X-Forwarded-Host $host;
        proxy_set_header X-Forwarded-Prefix /;
    }
}' 
>> /etc/nginx/nginx.conf


# iot project deploy
sudo apt-get update
sudo apt-get install python3-pip -y
sudo apt-get install tshark -y
git clone https://github.com/ahmed0tolba/IOTtrafficAnalyzer.git --branch master
cd IOTtrafficAnalyzer/
mkdir uploadedFiles
pip install -r requirements

