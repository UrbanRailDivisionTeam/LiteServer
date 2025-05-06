// 切换到 liteweb 数据库
db = db.getSiblingDB('liteweb');

// 创建 calibration_line_total_data 集合并插入示例数据
db.createCollection('calibration_line_total_data');
db.calibration_line_total_data.insertMany([
    {
        index: 0,
        title_name: "未响应异常数",
        trend: "overtime",
        request_value: 12,
        request_time: 120,
        average_time: 203.86128747795414
    },
    {
        index: 1,
        title_name: "一次诊断进行中流程数",
        trend: "overtime",
        request_value: 0,
        request_time: 120,
        average_time: 203.86128747795414
    },
    {
        index: 2,
        title_name: "未响应异常数",
        trend: "overtime",
        request_value: 12,
        request_time: 120,
        average_time: 203.86128747795414
    },
    {
        index: 3,
        title_name: "未响应异常数",
        trend: "overtime",
        request_value: 12,
        request_time: 120,
        average_time: 203.86128747795414
    },
    {
        index: 4,
        title_name: "未响应异常数",
        trend: "overtime",
        request_value: 12,
        request_time: 120,
        average_time: 203.86128747795414
    },
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