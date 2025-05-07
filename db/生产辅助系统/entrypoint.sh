/opt/mssql/bin/sqlservr &
sleep 30

echo "开始执行初始化脚本..."
for sql_file in $(ls /init-sql/*.sql | sort -V); do
    echo "正在执行: $(basename $sql_file)"
    /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P "$SA_PASSWORD" -i "$sql_file" || exit 1
done
echo "所有SQL脚本执行完成"
wait