# 设置参数
$TEMP_CONTAINERS = "temp_mysql_5"
$TEMP_IMAGE = "cheakf/custom-mysql_5:latest"
$FINAL_IMAGE = "cheakf/data_governance:latest"

# 构建自定义镜像
docker stop $TEMP_CONTAINERS
docker rm $TEMP_CONTAINERS
docker rmi $TEMP_IMAGE
docker rmi $FINAL_IMAGE
Write-Host "---------------------清理之前的可能文件--------------------"
docker build -t $FINAL_IMAGE .
Write-Host "---------------------构建镜像完成--------------------"
# 创建并启动容器（自动执行SQL脚本）
docker run -d `
    --name $TEMP_CONTAINERS `
    -e MYSQL_ROOT_PASSWORD=Swq8855830. `
    -p 3306:3306 `
    $TEMP_IMAGE
Write-Host "--------------------临时容器启动完成--------------------"
Write-Host "--------------------开始进行数据库初始化--------------------"
do {
    $status = docker inspect -f '{{.State.Health.Status}}' $TEMP_CONTAINERS
    Write-Host "当前状态: $status"
    if ($status -eq "healthy") { break }
    Start-Sleep -Seconds 10
} while ($true)
Write-Host "--------------------数据库初始化完成--------------------"
# 提交容器为新镜像
docker commit $TEMP_CONTAINERS $FINAL_IMAGE
Write-Host "--------------------提交镜像完成--------------------"
# 清理中间文件
docker stop $TEMP_CONTAINERS
docker rm $TEMP_CONTAINERS
docker rmi $TEMP_IMAGE
Write-Host "--------------------临时文件删除完成--------------------"
Write-Host "操作完成！新镜像已保存为：$FINAL_IMAGE"