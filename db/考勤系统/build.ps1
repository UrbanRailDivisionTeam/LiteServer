# 设置参数
$FINAL_IMAGE = "cheakf/attendance:latest"

docker build -t $FINAL_IMAGE .
Write-Host "操作完成！新镜像已保存为：$FINAL_IMAGE"