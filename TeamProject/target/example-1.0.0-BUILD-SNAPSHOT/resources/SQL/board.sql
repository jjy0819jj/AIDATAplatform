--------------------------------------------------------
--  파일이 생성됨 - 월요일-7월-13-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BOARD
--------------------------------------------------------

  CREATE TABLE "JSPEXAM"."BOARD" 
   (	"SEQ" NUMBER, 
	"EMAIL" VARCHAR2(20 BYTE), 
	"NAME" VARCHAR2(40 BYTE) DEFAULT null, 
	"QUESTION" VARCHAR2(255 BYTE), 
	"ANSWER" VARCHAR2(4000 BYTE), 
	"HIT" NUMBER DEFAULT 0, 
	"LOGTIME" DATE DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into JSPEXAM.BOARD
SET DEFINE OFF;
Insert into JSPEXAM.BOARD (SEQ,EMAIL,NAME,QUESTION,ANSWER,HIT,LOGTIME) values (6,'hong3@naver.com','고길동','입사지원서 첨부 시 한글파일 가능한가요?','asd',1,to_date('20/07/09','RR/MM/DD'));
Insert into JSPEXAM.BOARD (SEQ,EMAIL,NAME,QUESTION,ANSWER,HIT,LOGTIME) values (4,'hong@naver.com','홍길동','2020 상반기 HR 부서 지원 시 6개월 경력도 인정되나요?','안녕하세요, (주)1조 인사팀 입니다. <br> 저희 (주)1조에 관심과 애정을 갖고 지원해주셔서 대단히 감사드립니다. <br><br> 아쉽게도, 현재 채용중인 2020 상반기 HR 부서 경력 지원의 경우, 1년 이상 경력만 인정되오니 이 점 참고하시기 바랍니다. <br> 따라서, 본 지원자분께서는 2020년 하반기 공개채용 신입 부분에 지원하실 수 있습니다.  <br><br> 더 궁금하신 사항이 있으신 경우, 다시 한 번 문의주시거나 고객센터 전화를 이용해주시기 바랍니다.<br>감사합니다.',1,to_date('20/07/09','RR/MM/DD'));
Insert into JSPEXAM.BOARD (SEQ,EMAIL,NAME,QUESTION,ANSWER,HIT,LOGTIME) values (5,'hong2@naver.com','김길동','지원자를 평가하는 요소가 궁금합니다.','안녕하세요, (주)1조 인사팀 입니다. <br> 우선, 저희 (주)1조에 관심과 애정을 갖고 지원해주셔서 대단히 감사드립니다. <br><br> 저희 (주)1조에서는 인재상 및 조직문화와 지원자의 일치 또는 적응 가능여부, 지원자의 역량 및 가능성 등 모든 부분을 종합적으로 판단하여 인재를 채용하고 있습니다. 회사 또는 부서 측에서 지원자님을 적합하다고 판단하는 경우, 바로 입사를 제안하오니 망설임없이 지원해주시기 바랍니다. <br><br> 더 궁금하신 사항이 있으신 경우, 다시 한 번 문의주시거나 고객센터 전화를 이용해주시기 바랍니다.<br>감사합니다.',1,to_date('20/07/09','RR/MM/DD'));
--------------------------------------------------------
--  Constraints for Table BOARD
--------------------------------------------------------

  ALTER TABLE "JSPEXAM"."BOARD" MODIFY ("SEQ" NOT NULL ENABLE);
 
  ALTER TABLE "JSPEXAM"."BOARD" MODIFY ("EMAIL" NOT NULL ENABLE);
 
  ALTER TABLE "JSPEXAM"."BOARD" MODIFY ("QUESTION" NOT NULL ENABLE);
 
  ALTER TABLE "JSPEXAM"."BOARD" MODIFY ("ANSWER" NOT NULL ENABLE);
