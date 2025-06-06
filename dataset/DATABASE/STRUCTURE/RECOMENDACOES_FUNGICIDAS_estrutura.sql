
  CREATE TABLE "ADMIN"."RECOMENDACOES_FUNGICIDAS" 
   (	"ID_FUNGICIDA" NUMBER NOT NULL ENABLE, 
	"ID_RECOMENDACOES_FUNGICIDA" NUMBER GENERATED BY DEFAULT AS IDENTITY MINVALUE 1 MAXVALUE 9999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, 
	"ID_RECOMENDACOES" NUMBER NOT NULL ENABLE, 
	 CONSTRAINT "RECOMEND_FUNG_FUNGICIDAS_FK" FOREIGN KEY ("ID_FUNGICIDA")
	  REFERENCES "ADMIN"."FUNGICIDAS" ("ID_FUNGICIDA") ENABLE, 
	 CONSTRAINT "RECOMEND_FUNG_RECOMENDACOES_FK" FOREIGN KEY ("ID_RECOMENDACOES")
	  REFERENCES "ADMIN"."RECOMENDACOES" ("ID_RECOMENDACAO") ENABLE
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 10 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA" 