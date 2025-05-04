-- 创建 kingdee 用户，并设置密码
CREATE USER 'kingdee'@'%' IDENTIFIED BY 'kingdee2020';

-- 赋予 kingdee 用户所有权限（管理员权限）
GRANT ALL PRIVILEGES ON *.* TO 'kingdee'@'%' WITH GRANT OPTION;

-- 创建数据库
CREATE DATABASE IF NOT EXISTS crrc_secd DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE DATABASE IF NOT EXISTS crrc_sys DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE DATABASE IF NOT EXISTS crrc_wfs DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- 刷新权限
FLUSH PRIVILEGES;