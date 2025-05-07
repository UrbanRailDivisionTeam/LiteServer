# 设置参数
$FINAL_IMAGE = "cheakf/production_support_systems:latest"

docker build -t cheakf/production_support_systems:latest .
Write-Host "操作完成！新镜像已保存为：$FINAL_IMAGE"