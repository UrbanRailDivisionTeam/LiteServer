# 设置参数
$TEMP_CONTAINERS = "temp_mysql_3"
$TEMP_IMAGE = "cheakf/custom-mysql_3:latest"
$FINAL_IMAGE = "cheakf/data_governance_test:latest"

# 构建自定义镜像
docker stop $TEMP_CONTAINERS
docker rm $TEMP_CONTAINERS
docker rmi $TEMP_IMAGE
docker rmi $FINAL_IMAGE
Write-Host "---------------------清理之前的可能文件--------------------"
Set-Location $PSScriptRoot
docker build -t $TEMP_IMAGE .
Write-Host "---------------------构建镜像完成--------------------"
# 创建并启动容器（自动执行SQL脚本）
docker run -d `
    --name $TEMP_CONTAINERS `
    -e MYSQL_ROOT_PASSWORD=Swq8855830. `
    $TEMP_IMAGE
Write-Host "--------------------临时容器启动完成--------------------"
Write-Host "--------------------开始进行数据库初始化--------------------"
do {
    $confirm = Read-Host "$TEMP_CONTAINERS 数据库是否初始化完成？(输入y继续)"
    if ($confirm -eq "y") { break }
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