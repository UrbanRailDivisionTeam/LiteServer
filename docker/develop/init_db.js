// 切换到 liteweb 数据库
db = db.getSiblingDB("liteweb");

// 创建 calibration_line_total_data 集合并插入示例数据
db.createCollection("calibration_line_total_data");

// 创建 calibration_line_group_data 集合并插入示例数据
db.createCollection("calibration_line_group_data");

// 创建 pie_chart_error_data 集合并插入示例数据
db.createCollection("pie_chart_error_data");
