--------------------------------------------------------
--  파일이 생성됨 - 월요일-7월-13-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table NOTICE
--------------------------------------------------------

  CREATE TABLE "JSPEXAM"."NOTICE" 
   (	"SEQ" NUMBER, 
	"SUBJECT" VARCHAR2(255 BYTE), 
	"CONTENT" VARCHAR2(4000 BYTE), 
	"RANK" NUMBER DEFAULT 0, 
	"LOGTIME" DATE DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into JSPEXAM.NOTICE
SET DEFINE OFF;
Insert into JSPEXAM.NOTICE (SEQ,SUBJECT,CONTENT,RANK,LOGTIME) values (3,'(주)1조 고객센터 7~8월 업무일 안내','안녕하세요. (주)1조 입니다.<br>
항상 저희 서비스를 이용해 주시는 고객님께 감사드립니다.<br>
<br>
오는 7월 말~8월 초 연휴로 인해 아래와 같이 고객센터 업무가 일시 중단될 예정입니다.<br>
해당 기간 중에는 콜센터(070-7011-3900), 헬프데스크 응대가 중단 되오니 이용에 참고해주시기 바랍니다.<br>
<br>
-고객센터 7~8월 업무일 안내-<br>
■ 2020.7.27(월)~8.3(월) : 휴무<br>
■ 2020.8.4(화) : 정상 업무 진행<br>
<br>
해당 기간 동안 문의사항이 있으신 경우 헬프데스크의 FAQ 내용을 우선 확인해주시고,<br>
이후 온라인 문의를 남겨주시면 업무 재개가 되는 5월 6일에 빠른 안내를 해드리겠습니다.<br>
<br>
<a href="http://localhost:8080/example/index.do#question-section">[(주)1조 Helpdesk 바로가기]</a><br>
<br>
앞으로도 저희 (주)1조 임직원 모두는 세계 제일의 비즈니스 서비스를 제공해 고객이 만족할 때까지 최선을 다하겠습니다.<br>
<br>
감사합니다.',3,to_date('20/07/08','RR/MM/DD'));
Insert into JSPEXAM.NOTICE (SEQ,SUBJECT,CONTENT,RANK,LOGTIME) values (7,'8월 시스템 정기 점검 사전 안내 (2020년 8월 25일 예정)','안녕하세요. (주)1조입니다. <br>
항상 저희 서비스를 이용해 주시는 고객님께 감사 드립니다.<br>
<br>
보다 좋은 서비스를 위해 다음과 같이 8월 시스템 정기 점검을 진행하고자 하오니 고객님의 양해를 부탁드립니다.<br>
작업 예정 시간 동안 대상 서비스 이용 시, 일시적으로 접속이 원활하지 않을 수 있으니 서비스 이용에 참고하시기 바랍니다.<br>
<br>
앞으로도 더 나은 서비스를 제공할 수 있도록 노력하겠습니다.<br>
<br>
◆ 작업 예정일 : 2020년 8월 25일 (화) AM 00:00 ~ 07:00 (한국 시간 기준)<br>
<br>
◆ 주요 점검 내역<br>
1. 시스템 Maintenance 작업<br>
- RemoteView 중계/세션 Maintenance<br>
(보안 패치 포함)<br>
- RemoteView 브랜드 사이트 Maintenance<br>
(보안 패치 포함)<br>
- Mobizen 미러링 서비스 Maintenance<br>
(보안 패치 포함)<br>
<br>
◆ 문의 및 연락처<br>
이번 시스템 점검과 관련하여 문의사항이나 불편사항이 있으신 경우<br>
아래 연락처로 연락 주시면 친절히 답변 드리도록 하겠습니다.<br>
<br>
- 전화 : 070-7011-3900<br>
- Email : support.kr@1jo.com<br>
<br>
감사합니다.<br>',1,to_date('20/07/09','RR/MM/DD'));
Insert into JSPEXAM.NOTICE (SEQ,SUBJECT,CONTENT,RANK,LOGTIME) values (8,'새 공지','공지 사항을 입력해주세요.',2,to_date('20/07/09','RR/MM/DD'));
--------------------------------------------------------
--  Constraints for Table NOTICE
--------------------------------------------------------

  ALTER TABLE "JSPEXAM"."NOTICE" MODIFY ("CONTENT" NOT NULL ENABLE);
 
  ALTER TABLE "JSPEXAM"."NOTICE" MODIFY ("SUBJECT" NOT NULL ENABLE);
 
  ALTER TABLE "JSPEXAM"."NOTICE" MODIFY ("SEQ" NOT NULL ENABLE);
