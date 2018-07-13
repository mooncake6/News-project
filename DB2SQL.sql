set schema = BK0134;


drop table USER;
drop table NEWS;
drop table NEWSTYPE;

create table USER(
    ID INT NOT NULL primary key GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1 ),
    NAME VARCHAR(32) NOT NULL,
    PASSWORD VARCHAR(32) NOT NULL,
    AUTHORITY_TYPE VARCHAR(32) NOT NULL,
    CREATE_TIME TIMESTAMP,
    CREATE_USER VARCHAR(32),
    UPDATE_TIME TIMESTAMP,
    UPDATE_USER VARCHAR(32)
);

create table NEWSTYPE(
     ID INT NOT NULL primary key GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1 ),                   --??ID
	TYPEDETAIL VARCHAR(8) NOT NULL,                      --????
	CREATE_TIME TIMESTAMP,                 --?建??
	CREATE_USER VARCHAR(32),                       --?建者
	UPDATE_TIME TIMESTAMP,                          --更新??
	UPDATE_USER VARCHAR(32)                        --更新者
)

create table NEWS(
	ID INT NOT NULL primary key GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1 ),                   --新?ID
	TITLE VARCHAR(128) NOT NULL,                   --??
	TYPE_ID VARCHAR(4) NOT NULL,                   --??ID
	NEWS_DATE DATE,                                --新?日期
	AUTHOR VARCHAR(32),                            --新?作者
	CONTENT VARCHAR(1600) NOT NULL,                         --新?内容
	CREATE_TIME TIMESTAMP,                          --?建??
	CREATE_USER VARCHAR(32),                       --?建者
	UPDATE_TIME TIMESTAMP,                          --更新??
	UPDATE_USER VARCHAR(32)                        --更新者
)


insert into User(NAME,PASSWORD,AUTHORITY_TYPE) values('admin','admin','1')

SELECT * FROM BK0134.USER WHERE USER='admin' and PASSWORD='admin'

delete from NEWS where ID='1';

insert into NEWS(ID,TITLE,TYPE_ID,CONTENT) values('1','日本語','3','日本語可能テスト');