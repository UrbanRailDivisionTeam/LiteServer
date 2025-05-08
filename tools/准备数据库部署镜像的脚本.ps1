cd ../web
docker build -t cheakf/lite-web:latest  -f ./production.dockerfile .
Write-Host "----------构建前端镜像完成----------"
cd ../api
docker build -t cheakf/lite-api:latest -f ./dockerfile .
Write-Host "----------构建后端api完成----------"
cd ../etl
docker build -t cheakf/lite-etl:latest -f ./dockerfile .
Write-Host "----------构建后端etl完成----------"
cd ../tools

docker save -o ./lite-web.zip cheakf/lite-web:latest
Write-Host "----------导出前端镜像完成----------"
docker save -o ./lite-api.zip cheakf/lite-api:latest
Write-Host "----------导出后端api镜像完成----------"
docker save -o ./lite-etl.zip cheakf/lite-etl:latest
Write-Host "----------导出后端etl镜像完成----------"
docker save -o ./mongo.zip mongodb/mongodb-community-server:latest
Write-Host "----------导出数据库镜像完成----------"