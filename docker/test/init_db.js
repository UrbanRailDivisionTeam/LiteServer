// 切换到 liteweb 数据库
db = db.getSiblingDB("liteweb");

// 创建 calibration_line_total_data 集合并插入示例数据
db.createCollection("calibration_line_total_data");
db.calibration_line_total_data.insertMany([
    {
        index: 0,
        title_name: "未响应异常数",
        trend: "overtime",
        request_value: 12,
        request_time: 120,
        average_time: 203.86128747795414,
    },
    {
        index: 1,
        title_name: "一次诊断进行中流程数",
        trend: "overtime",
        request_value: 0,
        request_time: 120,
        average_time: 2067.414374999999,
    },
    {
        index: 2,
        title_name: "二次诊断进行中流程数",
        trend: "ontime",
        request_value: 28,
        request_time: 120,
        average_time: 119.9724358974359,
    },
    {
        index: 3,
        title_name: "返工进行中流程数",
        trend: "ontime",
        request_value: 0,
        request_time: 120,
        average_time: 0,
    },
    {
        index: 4,
        title_name: "验收进行中流程数",
        trend: "ontime",
        request_value: 0,
        request_time: 120,
        average_time: 0,
    },
]);

// 创建 calibration_line_group_data 集合并插入示例数据
db.createCollection("calibration_line_group_data");
db.calibration_line_group_data.insertMany([
    {
        title_name: "异常响应及时率",
        trend: "overlimit",
        group: [
            {
                group_name: "内装三工位",
                ontime_value: 2,
                total_value: 3,
            },
            {
                group_name: "电气工程设计组",
                ontime_value: 0,
                total_value: 3,
            },
            {
                group_name: "调试组",
                ontime_value: 19,
                total_value: 19,
            },
            {
                group_name: "电工四工位",
                ontime_value: 38,
                total_value: 54,
            },
            {
                group_name: "电工三工位",
                ontime_value: 36,
                total_value: 41,
            },
            {
                group_name: "校线一班",
                ontime_value: 0,
                total_value: 3,
            },
            {
                group_name: "质量保证组",
                ontime_value: 7,
                total_value: 7,
            },
            {
                group_name: "精益信息化组",
                ontime_value: 2,
                total_value: 2,
            },
            {
                group_name: "校线二班",
                ontime_value: 0,
                total_value: 6,
            },
            {
                group_name: "内装一工位",
                ontime_value: 2,
                total_value: 2,
            },
            {
                group_name: "电工一工位",
                ontime_value: 36,
                total_value: 61,
            },
        ],
    },
    {
        title_name: "一次诊断及时率",
        trend: "overlimit",
        group: [
            {
                group_name: null,
                ontime_value: 0,
                total_value: 1,
            },
            {
                group_name: "校线二班",
                ontime_value: 5,
                total_value: 37,
            },
            {
                group_name: "校线一班",
                ontime_value: 2,
                total_value: 43,
            },
        ],
    },
    {
        title_name: "二次诊断及时率",
        trend: "overlimit",
        group: [
            {
                group_name: "电气工程设计组",
                ontime_value: 0,
                total_value: 4,
            },
            {
                group_name: "总成进程组",
                ontime_value: 0,
                total_value: 19,
            },
            {
                group_name: "调试组",
                ontime_value: 3,
                total_value: 3,
            },
            {
                group_name: "质量保证组",
                ontime_value: 1,
                total_value: 1,
            },
            {
                group_name: "电工三工位",
                ontime_value: 6,
                total_value: 12,
            },
            {
                group_name: "校线一班",
                ontime_value: 10,
                total_value: 10,
            },
            {
                group_name: "电工四工位",
                ontime_value: 4,
                total_value: 5,
            },
            {
                group_name: "电气组",
                ontime_value: 2,
                total_value: 2,
            },
            {
                group_name: "电工一工位",
                ontime_value: 20,
                total_value: 24,
            },
            {
                group_name: null,
                ontime_value: 0,
                total_value: 1,
            },
        ],
    },
    {
        title_name: "返工及时率",
        trend: "inlimit",
        group: [
            {
                group_name: "校线二班",
                ontime_value: 13,
                total_value: 13,
            },
            {
                group_name: "校线一班",
                ontime_value: 39,
                total_value: 39,
            },
        ],
    },
    {
        title_name: "验收及时率",
        trend: "inlimit",
        group: [
            {
                group_name: "校线二班",
                ontime_value: 13,
                total_value: 13,
            },
            {
                group_name: "校线一班",
                ontime_value: 39,
                total_value: 39,
            },
        ],
    },
]);

// 创建 pie_chart_error_data 集合并插入示例数据
db.createCollection("pie_chart_error_data");
db.pie_chart_error_data.insertMany([
    {
        title_name: "本月异常构型组成",
        data: [
            {
                label: "线号",
                value: 12,
            },
            {
                label: " ",
                value: 60,
            },
            {
                label: "终端",
                value: 51,
            },
            {
                label: "插芯",
                value: 10,
            },
            {
                label: "标签",
                value: 26,
            },
            {
                label: "电缆",
                value: 28,
            },
            {
                label: "扎带",
                value: 1,
            },
        ],
    },
    {
        title_name: "本月异常项目占比",
        data: [
            {
                label: "SML1EXP4G",
                value: 1,
            },
            {
                label: "MMLRVS2",
                value: 68,
            },
            {
                label: "CSL6",
                value: 1,
            },
            {
                label: "SML18EXP",
                value: 131,
            },
        ],
    },
    {
        title_name: "本月异常责任单位占比",
        data: [
            {
                label: "制造班组",
                value: 57,
            },
            {
                label: " ",
                value: 60,
            },
            {
                label: "供应商",
                value: 10,
            },
            {
                label: "机车事业部管线班",
                value: 10,
            },
            {
                label: "电气工艺",
                value: 15,
            },
            {
                label: "物流",
                value: 2,
            },
            {
                label: "默认",
                value: 4,
            },
            {
                label: "项目工程部",
                value: 2,
            },
            {
                label: "无",
                value: 2,
            },
            {
                label: "项目",
                value: 4,
            },
            {
                label: "设计",
                value: 22,
            },
        ],
    },
    {
        title_name: "本月异常类型组成",
        data: [
            {
                label: "来料_松动",
                value: 1,
            },
            {
                label: "下线.打印_缺失",
                value: 2,
            },
            {
                label: "后续工序_意外破坏",
                value: 7,
            },
            {
                label: "来料_漏导体",
                value: 2,
            },
            {
                label: "下线.裁剪_缺失",
                value: 1,
            },
            {
                label: "工艺.变更转化_漏执行",
                value: 8,
            },
            {
                label: "设计.接口设计_信息误传",
                value: 8,
            },
            {
                label: "设计.原理图设计_设计疏漏",
                value: 4,
            },
            {
                label: "接线.剥护套_漏导体",
                value: 4,
            },
            {
                label: "接线.嵌入_点位不符图",
                value: 11,
            },
            {
                label: "工艺.线表转化_工艺疏漏",
                value: 5,
            },
            {
                label: "变更执行_漏执行",
                value: 1,
            },
            {
                label: "接线.收尾_尺寸不符图",
                value: 1,
            },
            {
                label: "来料_接口失配",
                value: 6,
            },
            {
                label: "接线.嵌入_漏执行",
                value: 1,
            },
            {
                label: "接线.冷压_工具失配",
                value: 2,
            },
            {
                label: "布线.穿线_接口失配",
                value: 3,
            },
            {
                label: "布线.敷设_漏执行",
                value: 11,
            },
            {
                label: "接线.收尾_用料不符图",
                value: 1,
            },
            {
                label: " ",
                value: 60,
            },
            {
                label: "布线.绑扎_漏执行",
                value: 5,
            },
            {
                label: "接线.收尾_粘附破坏",
                value: 1,
            },
            {
                label: "下线.线号打印_文字失真",
                value: 6,
            },
            {
                label: "接线.收尾_缺失",
                value: 22,
            },
            {
                label: "设计.布线设计_选型错",
                value: 10,
            },
            {
                label: "接线.收尾_漏执行",
                value: 2,
            },
            {
                label: "下线.标签打印_文字失真",
                value: 1,
            },
            {
                label: "接线.嵌入_漏导体",
                value: 1,
            },
            {
                label: "来料_断裂",
                value: 1,
            },
        ],
    },
]);
