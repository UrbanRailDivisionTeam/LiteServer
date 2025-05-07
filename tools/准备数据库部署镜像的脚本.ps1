cd ../web
docker build -t cheakf/lite-web:latest  -f ./production.dockerfile .
cd ../api
docker build -t cheakf/lite-api:latest -f ./dockerfile .
cd ../etl
docker build -t cheakf/lite-etl:latest -f ./dockerfile .
cd ../tools

docker save -o ./lite-web.zip cheakf/lite-web:latest
docker save -o ./lite-api.zip cheakf/lite-api:latest
docker save -o ./lite-etl.zip cheakf/lite-etl:latest
docker save -o ./mongo.zip mongodb/mongodb-community-server:latest