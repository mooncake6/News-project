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
	CREATE_TIME TIMESTAMP,                 --?��??
	CREATE_USER VARCHAR(32),                       --?����
	UPDATE_TIME TIMESTAMP,                          --�X�V??
	UPDATE_USER VARCHAR(32)                        --�X�V��
)

create table NEWS(
	ID INT NOT NULL primary key GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1 ),                   --�V?ID
	TITLE VARCHAR(128) NOT NULL,                   --??
	TYPE_ID VARCHAR(4) NOT NULL,                   --??ID
	NEWS_DATE DATE,                                --�V?����
	AUTHOR VARCHAR(32),                            --�V?���
	CONTENT VARCHAR(1600) NOT NULL,                         --�V?���e
	CREATE_TIME TIMESTAMP,                          --?��??
	CREATE_USER VARCHAR(32),                       --?����
	UPDATE_TIME TIMESTAMP,                          --�X�V??
	UPDATE_USER VARCHAR(32)                        --�X�V��
)


insert into User(NAME,PASSWORD,AUTHORITY_TYPE) values('admin','admin','1')

SELECT * FROM BK0134.USER WHERE USER='admin' and PASSWORD='admin'

delete from NEWS where ID='1';

insert into NEWS(ID,TITLE,TYPE_ID,CONTENT) values('1','���{��','3','���{��\�e�X�g');