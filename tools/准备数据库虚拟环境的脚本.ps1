# 定义要处理的数据库目录
$databases = @(
    "机车数据库",
    "金蝶云苍穹-测试库",
    "金蝶云苍穹-正式库",
    "考勤系统",
    "生产辅助系统",
    "数据治理平台-测试库",
    "数据治理平台-正式库",
    "智能立库",
    "eas",
    "mes",
    "shr"
)

# 并行处理每个数据库
foreach ($db in $databases) {
    $scriptPath = Join-Path -Path "..\db\$db" -ChildPath "build.ps1"
    Start-Process pwsh -ArgumentList "-NoProfile -ExecutionPolicy Bypass -File `"$scriptPath`"" -WindowStyle Normal
    Write-Host "已启动 $db 的构建进程"
}

Write-Host "所有数据库构建进程已启动，请等待所有窗口完成构建"