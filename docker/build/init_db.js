// 切换到 liteweb 数据库
db = db.getSiblingDB('liteweb');

// 创建 calibration_line_total_data 集合并插入示例数据
db.createCollection('calibration_line_total_data');
db.calibration_line_total_data.insertMany([
    {
        name: "总数",
        value: 100,
        updatedAt: new Date()
    }
]);

// 创建 calibration_line_group_data 集合并插入示例数据
db.createCollection('calibration_line_group_data');
db.calibration_line_group_data.insertMany([
    {
        group: "A组",
        rate: 0.95,
        updatedAt: new Date()
    }
]);

// 创建 pie_chart_error_data 集合并插入示例数据
db.createCollection('pie_chart_error_data');
db.pie_chart_error_data.insertMany([
    {
        type: "错误类型1",
        count: 10,
        updatedAt: new Date()
    }
]);