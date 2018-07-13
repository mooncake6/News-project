use schema1;

DROP TABLE USER;

create table USER(
    ID INT NOT NULL primary key,                   --用户ID
    NAME VARCHAR(32) NOT NULL,                     --用户名
    PASSWORD VARCHAR(32) NOT NULL,                 --密码
    AUTHORITY_TYPE VARCHAR(32) NOT NULL,           --权限种别
    CREATE_TIME DATETIME,                          --创建时间
    CREATE_NAME VARCHAR(32),                       --创建者
    UPDATE_TIME DATETIME,                          --更新时间
    UPDATE_NAME VARCHAR(32)                        --更新者
);

create table NEWSTYPE(
    ID INT NOT NULL primary key,                   --种类ID
	TYPEDETAIL VARCHAR(8) NOT NULL,                --种类详细
	CREATE_TIME DATETIME,                          --创建时间
	CREATE_NAME VARCHAR(32),                       --创建者
	UPDATE_TIME DATETIME,                          --更新时间
	UPDATE_NAME VARCHAR(32)                        --更新者
)

create table NEWS(
	ID INT NOT NULL primary key,                   --新闻ID
	TITLE VARCHAR(128) NOT NULL,                   --标题
	TYPE_ID VARCHAR(4) NOT NULL,                   --种类ID
	NEWS_DATE DATE,                                --新闻日期
	AUTHOR VARCHAR(32),                            --新闻作者
	CONTENT TEXT NOT NULL,                         --新闻内容
	CREATE_TIME DATETIME,                          --创建时间
	CREATE_NAME VARCHAR(32),                       --创建者
	UPDATE_TIME DATETIME,                          --更新时间
	UPDATE_NAMW VARCHAR(32)                        --更新者
)
