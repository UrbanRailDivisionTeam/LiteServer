# 获取所有SQL文件
$sqlFiles = Get-ChildItem -Path "d:\workspace\LiteServer\db\生产辅助系统\table copy" -Filter "*.sql" -Recurse

foreach ($file in $sqlFiles) {
    # 读取文件内容
    $content = Get-Content -Path $file.FullName -Raw

    $pattern_0 = '(?s)CREATE\s+UNIQUE\s+NONCLUSTERED\s+INDEX[\s\S]*?;'
    $newContent_0 = [regex]::Replace($content, $pattern_0, '')
    $pattern_1 = '(?s)ALTER\s+TABLE[\s\S]*?;'
    $newContent_1 = [regex]::Replace($newContent_0, $pattern_1, '')
    $pattern_2 = '(?s)CREATE\s+NONCLUSTERED\s+INDEX[\s\S]*?;'
    $newContent_2 = [regex]::Replace($newContent_1, $pattern_2, '')
    $pattern_3 = '(?s)CREATE\s+VIEW[\s\S]*?;'
    $newContent_3 = [regex]::Replace($newContent_2, $pattern_3, '')
    $pattern_4 = '(?s)CREATE\s+UNIQUE\s+NONNONCLUSTEREDRED\s+INDEX[\s\S]*?;'
    $newContent_4 = [regex]::Replace($newContent_3, $pattern_4, '')
    $pattern_5 = '(?s)CREATE\s+NONCLUSTEREDRED\s+INDEX[\s\S]*?;'
    $newContent_5 = [regex]::Replace($newContent_4, $pattern_5, '')
    $newContent_6 = [regex]::Replace($newContent_5, '[\r\n]{5,}', "`n")

    # 将处理后的内容写回文件
    $newContent_6 | Set-Content -Path $file.FullName -Force
}

Write-Host "所有SQL文件处理完成"