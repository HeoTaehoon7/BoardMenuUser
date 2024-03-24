-- 메뉴 목록
CREATE  TABLE   MENUS (
     MENU_ID     VARCHAR2(6)   PRIMARY KEY
    ,MENU_NAME   VARCHAR2(100)
    ,MENU_SEQ    NUMBER(5)
);

INSERT  INTO   MENUS  VALUES ('MENU01', 'JAVA', 1 );
COMMIT;

-- 회원정보
CREATE   TABLE   TUSER (
     USERID      VARCHAR2(12)  PRIMARY KEY
   , PASSWD      VARCHAR2(12)  NOT NULL
   , USERNAME    VARCHAR2(30)  NOT NULL
   , EMAIL       VARCHAR2(320)
   , UPOINT      NUMBER(10)    DEFAULT 0  
   , INDATE      DATE          DEFAULT SYSDATE
);

INSERT INTO tuser (
    userid,
    passwd,
    username,
    email,
    upoint,
    indate
) VALUES (
    'sky',
    '1234',
    '관리자',
    'admin@green.com',
    1000,
    sysdate
);

commit;

----------------------------------------------
--  board 게시판
----------------------------------------------
CREATE   TABLE   BOARD
(
      IDX            NUMBER(5, 0)        PRIMARY KEY
    , MENU_ID        VARCHAR2( 6 )       NOT NULL
        REFERENCES   MENUS ( MENU_ID  )
    , TITLE          VARCHAR2( 300  )    NOT NULL
    , CONT           VARCHAR2( 4000 )  
    , WRITER         VARCHAR2( 30 )
    , REGDATE        DATE                DEFAULT  SYSDATE 
    , READCOUNT      NUMBER( 6, 0 )      DEFAULT  0   
)





