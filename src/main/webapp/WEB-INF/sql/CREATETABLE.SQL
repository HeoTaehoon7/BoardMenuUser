-- 메뉴 목록
CREATE  TABLE   MENUS (
     MENU_ID     VARCHAR2(6)   PRIMARY KEY
    ,MENU_NAME   VARCHAR2(100)
    ,MENU_SEQ    NUMBER(5)
);

INSERT  INTO   MENUS  VALUES ('MENU01', 'JAVA', 1 );
COMMIT;