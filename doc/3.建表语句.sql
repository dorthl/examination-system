-- ϵͳ�������
create table sys_dept
(
dept_id Int NOT NULL, 
parent_id Int NULL,
ancestors VARCHAR2(50) null,
dept_code VARCHAR2(50) null,
dept_name VARCHAR2(600) not null,
order_num Int null,
leader VARCHAR2(30) null,
phone VARCHAR2(20) null,
email VARCHAR2(50) NULL, 
status CHAR(1) NULL, 
del_flag CHAR(1) NULL,
create_by VARCHAR2(100) NULL, 
create_time DATE NULL, 
update_by VARCHAR2(100) NULL, 
update_time DATE NULL, 
constraint PK_sys_dept  primary key (dept_id)
);

create table sys_user
(
user_id Int NOT NULL, 
user_code VARCHAR2(100) null,
dept_id Int NULL,
user_name VARCHAR2(100) null,
nick_name VARCHAR2(30) NOT null,
user_type CHAR(2) NULL,
email VARCHAR2(50) null,
phonenumber VARCHAR2(20) null,
sex CHAR(1) null,
avatar VARCHAR2(300) null,
password VARCHAR2(100) null,
status CHAR(1) NULL, 
del_flag CHAR(1) NULL,
login_ip VARCHAR2(128) NULL,
login_date DATE NULL,
create_by VARCHAR2(100) NULL, 
create_time DATE NULL, 
update_by VARCHAR2(100) NULL, 
update_time DATE NULL, 
remark VARCHAR2(600) NULL,
constraint PK_sys_user  primary key (user_id)
);

create table sys_post
(
post_id Int NOT NULL, 
post_code VARCHAR2(64) null,
post_name VARCHAR2(50) NOT null,
post_sort Int NULL,
status CHAR(1) NULL, 
del_flag CHAR(1) NULL,
create_by VARCHAR2(100) NULL, 
create_time DATE NULL, 
update_by VARCHAR2(100) NULL, 
update_time DATE NULL, 
remark VARCHAR2(600) NULL,
constraint PK_sys_post  primary key (post_id)
);


create table sys_role
(
role_id Int NOT NULL, 
role_name VARCHAR2(90) NOT null,
role_key VARCHAR2(200) null,
role_sort Int NULL,
data_scope CHAR(1) NULL,
menu_check_strictly Int NULL,
dept_check_strictly Int NULL,
status CHAR(1) NULL, 
del_flag CHAR(1) NULL,
create_by VARCHAR2(100) NULL, 
create_time DATE NULL, 
update_by VARCHAR2(100) NULL, 
update_time DATE NULL, 
remark VARCHAR2(600) NULL,
constraint PK_sys_role  primary key (role_id)
);

create table sys_menu
(
menu_id Int NOT NULL, 
menu_name VARCHAR2(120) NOT null,
parent_id Int NULL,
order_num Int NULL,
path VARCHAR2(200) null,
component VARCHAR2(300) null,
is_frame Int NULL,
is_cache Int NULL,
menu_type CHAR(1) NULL,
visible CHAR(1) NULL,
status CHAR(1) NULL, 
del_flag CHAR(1) NULL,
perms VARCHAR2(100) NULL,
icon VARCHAR2(100) NULL,
create_by VARCHAR2(100) NULL, 
create_time DATE NULL, 
update_by VARCHAR2(100) NULL, 
update_time DATE NULL, 
remark VARCHAR2(600) NULL,
constraint PK_sys_menu  primary key (menu_id)
);

create table sys_user_role
(
user_id Int NOT NULL, 
role_id Int NOT NULL,
constraint PK_sys_user_role  primary key (user_id, role_id)
);

create table sys_role_menu
(
role_id Int NOT NULL, 
menu_id Int NOT NULL,
constraint PK_sys_role_menu  primary key (role_id, menu_id)
);

create table sys_role_dept
(
role_id Int NOT NULL, 
dept_id Int NOT NULL,
constraint PK_sys_role_dept  primary key (role_id, dept_id)
);

create table sys_user_post
(
user_id Int NOT NULL, 
post_id Int NOT NULL,
constraint PK_sys_user_post  primary key (user_id, post_id)
);

create table sys_oper_log
(
oper_id Int NOT NULL, 
title VARCHAR2(120) NOT null,
business_type Int NULL,
method VARCHAR2(120) NULL,
request_method VARCHAR2(120) NULL,
operator_type Int NULL,
oper_name VARCHAR2(50) null,
dept_name VARCHAR2(120) null,
oper_url VARCHAR2(300) null,
oper_ip VARCHAR2(128) null,
oper_location VARCHAR2(300) null,
oper_param VARCHAR2(2000) null,
json_result VARCHAR2(2000) null,
status CHAR(1) NULL, 
error_msg VARCHAR2(2000) NULL,
oper_time DATE NULL, 
constraint PK_sys_oper_log  primary key (oper_id)
);

create table sys_dict_type
(
dict_id Int NOT NULL, 
dict_name VARCHAR2(200) NOT null,
dict_type VARCHAR2(50) null,
status CHAR(1) NULL, 
create_by VARCHAR2(100) NULL, 
create_time DATE NULL, 
update_by VARCHAR2(100) NULL, 
update_time DATE NULL, 
remark VARCHAR2(600) NULL,
constraint PK_sys_dict_type  primary key (dict_id)
);

create table sys_dict_data
(
dict_code Int NOT NULL, 
dict_sort Int NULL, 
dict_label VARCHAR2(100) NOT null,
dict_value VARCHAR2(100) NOT null,
dict_type VARCHAR2(100) null,
css_class VARCHAR2(100) null,
list_class VARCHAR2(100) null,
is_default CHAR(1) NULL,
status CHAR(1) NULL, 
create_by VARCHAR2(100) NULL, 
create_time DATE NULL, 
update_by VARCHAR2(100) NULL, 
update_time DATE NULL, 
remark VARCHAR2(600) NULL,
constraint PK_sys_dict_data  primary key (dict_code)
);

create table sys_config
(
config_id Int NOT NULL, 
config_name VARCHAR2(100) NOT null,
config_key VARCHAR2(100) null,
config_value VARCHAR2(100) null,
config_type CHAR(1) NULL,
create_by VARCHAR2(100) NULL, 
create_time DATE NULL, 
update_by VARCHAR2(100) NULL, 
update_time DATE NULL, 
remark VARCHAR2(600) NULL,
constraint PK_sys_config  primary key (config_id)
);

create table sys_logininfor
(
info_id Int NOT NULL, 
user_name VARCHAR2(50) NOT null,
ipaddr VARCHAR2(128) null,
login_location VARCHAR2(300) null,
browser VARCHAR2(50) null,
os VARCHAR2(50) null,
status CHAR(1) NULL,
msg VARCHAR2(600) NULL, 
login_time DATE NULL, 
constraint PK_sys_logininfor  primary key (info_id)
);

create table sys_job
(
job_id Int NOT NULL, 
job_name VARCHAR2(120) NOT null,
job_group VARCHAR2(120) null,
invoke_target VARCHAR2(500) null,
cron_expression VARCHAR2(300) null,
misfire_policy VARCHAR2(20) null,
concurrent CHAR(1) NULL,
status CHAR(1) NULL,
create_by VARCHAR2(100) NULL, 
create_time DATE NULL, 
update_by VARCHAR2(100) NULL, 
update_time DATE NULL, 
remark VARCHAR2(600) NULL,
constraint PK_sys_job  primary key (job_id)
);

create table sys_job_log
(
job_log_id Int NOT NULL, 
job_name VARCHAR2(120) NOT null,
job_group VARCHAR2(120) null,
invoke_target VARCHAR2(500) null,
job_message VARCHAR2(500) null,
status CHAR(1) NULL,
exception_info VARCHAR2(2000) NULL, 
create_time DATE NULL, 
constraint PK_sys_job_log  primary key (job_log_id)
);

create table sys_notice
(
notice_id Int NOT NULL, 
notice_title VARCHAR2(120) NOT null,
notice_type CHAR(1) null,
notice_content CLOB null,
status CHAR(1) NULL,
create_by VARCHAR2(100) NULL, 
create_time DATE NULL, 
update_by VARCHAR2(100) NULL, 
update_time DATE NULL, 
remark VARCHAR2(600) NULL,
constraint PK_sys_notice  primary key (notice_id)
);

create table sys_group
(
group_id Int NOT NULL, 
group_code VARCHAR2(50) NOT null,
group_name VARCHAR2(120) NOT null,
group_describe VARCHAR2(200) NOT null,
status CHAR(1) NULL, 
create_by VARCHAR2(100) NULL, 
create_time DATE NULL, 
constraint PK_sys_group  primary key (group_id)
);

COMMENT ON COLUMN sys_group.group_id IS '�������';
COMMENT ON COLUMN sys_group.group_code IS '�������';
COMMENT ON COLUMN sys_group.group_name IS '��������';
COMMENT ON COLUMN sys_group.group_describe IS '��������';
COMMENT ON COLUMN sys_group.status IS '״̬';
COMMENT ON COLUMN sys_group.create_by IS '������';
COMMENT ON COLUMN sys_group.create_time IS '����ʱ��';

create table sys_group_person
(
group_code VARCHAR2(50) NOT null,
person_code VARCHAR2(120) NOT null,
order_id Int null,
constraint PK_sys_group_person  primary key (group_code, person_code)
);


COMMENT ON COLUMN sys_group_person.group_code IS '�������';
COMMENT ON COLUMN sys_group_person.person_code IS '��Ա����';
COMMENT ON COLUMN sys_group_person.order_id IS '��������';


create table sys_user_choice
(
choice_code VARCHAR2(50) NOT null,
user_code VARCHAR2(100) null,
order_id int null,
constraint PK_sys_user_choice  primary key (choice_code, user_code)
);

COMMENT ON COLUMN sys_user_choice.choice_code IS 'ѡ�����';
COMMENT ON COLUMN sys_user_choice.user_code IS '�û�����';
COMMENT ON COLUMN sys_user_choice.order_id IS '�ڲ�����';

create table gen_table
(
table_id Int NOT NULL, 
table_name VARCHAR2(120) NOT null,
table_comment VARCHAR2(500) null,
sub_table_name VARCHAR2(120) null,
sub_table_fk_name VARCHAR2(120) null,
class_name VARCHAR2(100) null,
tpl_category VARCHAR2(200) null,
package_name VARCHAR2(100) null,
module_name VARCHAR2(30) null,
business_name VARCHAR2(30) null,
function_name VARCHAR2(50) null,
function_author VARCHAR2(50) null,
gen_type CHAR(1) null,
gen_path VARCHAR2(200) null,
options VARCHAR2(1000) null,
status CHAR(1) NULL,
create_by VARCHAR2(100) NULL, 
create_time DATE NULL, 
update_by VARCHAR2(100) NULL, 
update_time DATE NULL, 
remark VARCHAR2(600) NULL,
constraint PK_gen_table  primary key (table_id)
);


create table gen_table_column
(
column_id Int NOT NULL,
table_id Int NOT NULL, 
column_name VARCHAR2(200) NOT null,
column_comment VARCHAR2(500) NOT null,
column_type VARCHAR2(100) null,
java_type VARCHAR2(500) null,
java_field VARCHAR2(200) null,
is_pk Char(1) null,
is_increment Char(1) null,
is_required Char(1) null,
is_insert Char(1) null,
is_edit Char(1) null,
is_list Char(1) null,
is_query Char(1) null,
query_type VARCHAR2(200) null,
html_type VARCHAR2(200) null,
dict_type VARCHAR2(200) null,
sort Int NULL,
create_by VARCHAR2(100) NULL, 
create_time DATE NULL, 
update_by VARCHAR2(100) NULL, 
update_time DATE NULL, 
remark VARCHAR2(600) NULL,
constraint PK_gen_table_column  primary key (column_id,table_id)
);



-- ----------------------------
-- 1���洢ÿһ�������õ� jobDetail ����ϸ��Ϣ
-- ----------------------------
create table qrtz_job_details (
    sched_name varchar2(120) not null,
    job_name  varchar2(200) not null,
    job_group varchar2(200) not null,
    description varchar2(250) null,
    job_class_name   varchar2(250) not null,
    is_durable varchar2(1) not null,
    is_nonconcurrent varchar2(1) not null,
    is_update_data varchar2(1) not null,
    requests_recovery varchar2(1) not null,
    job_data blob null,
    constraint qrtz_job_details_pk primary key (sched_name,job_name,job_group)
);

-- ----------------------------
-- 2�� �洢�����õ� Trigger ����Ϣ
-- ----------------------------
create table qrtz_triggers (
    sched_name varchar2(120) not null,
    trigger_name varchar2(200) not null,
    trigger_group varchar2(200) not null,
    job_name  varchar2(200) not null,
    job_group varchar2(200) not null,
    description varchar2(250) null,
    next_fire_time number(13) null,
    prev_fire_time number(13) null,
    priority number(13) null,
    trigger_state varchar2(16) not null,
    trigger_type varchar2(8) not null,
    start_time number(13) not null,
    end_time number(13) null,
    calendar_name varchar2(200) null,
    misfire_instr number(2) null,
    job_data blob null,
    constraint qrtz_triggers_pk primary key (sched_name,trigger_name,trigger_group),
    constraint qrtz_trigger_to_jobs_fk foreign key (sched_name,job_name,job_group)
      references qrtz_job_details(sched_name,job_name,job_group)
);

-- ----------------------------
-- 3�� �洢�򵥵� Trigger�������ظ�������������Լ��Ѵ����Ĵ���
-- ----------------------------
create table qrtz_simple_triggers (
    sched_name varchar2(120) not null,
    trigger_name varchar2(200) not null,
    trigger_group varchar2(200) not null,
    repeat_count number(7) not null,
    repeat_interval number(12) not null,
    times_triggered number(10) not null,
    constraint qrtz_simple_trig_pk primary key (sched_name,trigger_name,trigger_group),
    constraint qrtz_simple_trig_to_trig_fk foreign key (sched_name,trigger_name,trigger_group)
      references qrtz_triggers(sched_name,trigger_name,trigger_group)
);

-- ----------------------------
-- 4�� �洢 Cron Trigger������ Cron ���ʽ��ʱ����Ϣ
-- ---------------------------- 
create table qrtz_cron_triggers (
    sched_name varchar2(120) not null,
    trigger_name varchar2(200) not null,
    trigger_group varchar2(200) not null,
    cron_expression varchar2(120) not null,
    time_zone_id varchar2(80),
    constraint qrtz_cron_trig_pk primary key (sched_name,trigger_name,trigger_group),
    constraint qrtz_cron_trig_to_trig_fk foreign key (sched_name,trigger_name,trigger_group)
      references qrtz_triggers(sched_name,trigger_name,trigger_group)
);

-- ----------------------------
-- 5�� Trigger ��Ϊ Blob ���ʹ洢(���� Quartz �û��� JDBC ���������Լ����Ƶ� Trigger ���ͣ�JobStore ����֪����δ洢ʵ����ʱ��)
-- ---------------------------- 
create table qrtz_blob_triggers (
    sched_name varchar2(120) not null,
    trigger_name varchar2(200) not null,
    trigger_group varchar2(200) not null,
    blob_data blob null,
    constraint qrtz_blob_trig_pk primary key (sched_name,trigger_name,trigger_group),
    constraint qrtz_blob_trig_to_trig_fk foreign key (sched_name,trigger_name,trigger_group)
      references qrtz_triggers(sched_name,trigger_name,trigger_group)
);

-- ----------------------------
-- 6�� �� Blob ���ʹ洢���������Ϣ�� quartz������һ��������ָ��һ��ʱ�䷶Χ
-- ---------------------------- 
create table qrtz_calendars (
    sched_name varchar2(120) not null,
    calendar_name  varchar2(200) not null,
    calendar blob not null,
    constraint qrtz_calendars_pk primary key (sched_name,calendar_name)
);

-- ----------------------------
-- 7�� �洢����ͣ�� Trigger �����Ϣ
-- ---------------------------- 
create table qrtz_paused_trigger_grps (
    sched_name varchar2(120) not null,
    trigger_group  varchar2(200) not null,
    constraint qrtz_paused_trig_grps_pk primary key (sched_name,trigger_group)
);

-- ----------------------------
-- 8�� �洢���Ѵ����� Trigger ��ص�״̬��Ϣ���Լ����� Job ��ִ����Ϣ
-- ---------------------------- 
create table qrtz_fired_triggers (
    sched_name varchar2(120) not null,
    entry_id varchar2(95) not null,
    trigger_name varchar2(200) not null,
    trigger_group varchar2(200) not null,
    instance_name varchar2(200) not null,
    fired_time number(13) not null,
    sched_time number(13) not null,
    priority number(13) not null,
    state varchar2(16) not null,
    job_name varchar2(200) null,
    job_group varchar2(200) null,
    is_nonconcurrent varchar2(1) null,
    requests_recovery varchar2(1) null,
    constraint qrtz_fired_trigger_pk primary key (sched_name,entry_id)
);

-- ----------------------------
-- 9�� �洢�������й� Scheduler ��״̬��Ϣ�����������ڼ�Ⱥ�У����Կ��������� Scheduler ʵ��
-- ---------------------------- 
create table qrtz_scheduler_state (
    sched_name varchar2(120) not null,
    instance_name varchar2(200) not null,
    last_checkin_time number(13) not null,
    checkin_interval number(13) not null,
    constraint qrtz_scheduler_state_pk primary key (sched_name,instance_name)
);

-- ----------------------------
-- 10�� �洢����ı���������Ϣ(����ʹ���˱�����)
-- ---------------------------- 
create table qrtz_locks (
    sched_name varchar2(120) not null,
    lock_name  varchar2(40) not null,
    constraint qrtz_locks_pk primary key (sched_name,lock_name)
);

create table qrtz_simprop_triggers (
    sched_name varchar2(120) not null,
    trigger_name varchar2(200) not null,
    trigger_group varchar2(200) not null,
    str_prop_1 varchar2(512) null,
    str_prop_2 varchar2(512) null,
    str_prop_3 varchar2(512) null,
    int_prop_1 number(10) null,
    int_prop_2 number(10) null,
    long_prop_1 number(13) null,
    long_prop_2 number(13) null,
    dec_prop_1 numeric(13,4) null,
    dec_prop_2 numeric(13,4) null,
    bool_prop_1 varchar2(1) null,
    bool_prop_2 varchar2(1) null,
    constraint qrtz_simprop_trig_pk primary key (sched_name,trigger_name,trigger_group),
    constraint qrtz_simprop_trig_to_trig_fk foreign key (sched_name,trigger_name,trigger_group)
      references qrtz_triggers(sched_name,trigger_name,trigger_group)
);


create index idx_qrtz_j_req_recovery on qrtz_job_details(sched_name,requests_recovery);
create index idx_qrtz_j_grp on qrtz_job_details(sched_name,job_group);

create index idx_qrtz_t_j on qrtz_triggers(sched_name,job_name,job_group);
create index idx_qrtz_t_jg on qrtz_triggers(sched_name,job_group);
create index idx_qrtz_t_c on qrtz_triggers(sched_name,calendar_name);
create index idx_qrtz_t_g on qrtz_triggers(sched_name,trigger_group);
create index idx_qrtz_t_state on qrtz_triggers(sched_name,trigger_state);
create index idx_qrtz_t_n_state on qrtz_triggers(sched_name,trigger_name,trigger_group,trigger_state);
create index idx_qrtz_t_n_g_state on qrtz_triggers(sched_name,trigger_group,trigger_state);
create index idx_qrtz_t_next_fire_time on qrtz_triggers(sched_name,next_fire_time);
create index idx_qrtz_t_nft_st on qrtz_triggers(sched_name,trigger_state,next_fire_time);
create index idx_qrtz_t_nft_misfire on qrtz_triggers(sched_name,misfire_instr,next_fire_time);
create index idx_qrtz_t_nft_st_misfire on qrtz_triggers(sched_name,misfire_instr,next_fire_time,trigger_state);
create index idx_qrtz_t_nft_st_misfire_grp on qrtz_triggers(sched_name,misfire_instr,next_fire_time,trigger_group,trigger_state);

create index idx_qrtz_ft_trig_inst_name on qrtz_fired_triggers(sched_name,instance_name);
create index idx_qrtz_ft_inst_job_req_rcvry on qrtz_fired_triggers(sched_name,instance_name,requests_recovery);
create index idx_qrtz_ft_j_g on qrtz_fired_triggers(sched_name,job_name,job_group);
create index idx_qrtz_ft_jg on qrtz_fired_triggers(sched_name,job_group);
create index idx_qrtz_ft_t_g on qrtz_fired_triggers(sched_name,trigger_name,trigger_group);

create index idx_qrtz_ft_tg on qrtz_fired_triggers(sched_name,trigger_group);

commit;

-- ���Ϲ������
create table fms_photo
(
photo_id Int NOT NULL, 
file_name VARCHAR2(600) NOT null,
photo_path VARCHAR2(100) NOT null,
photo_url VARCHAR2(100) NOT null,
original_name VARCHAR2(600) null,
upload_name VARCHAR2(100) NULL, 
upload_dept VARCHAR2(50) NULL, 
upload_time DATE NULL,
status Int NULL,
constraint PK_fms_photo  primary key (photo_id)
);

COMMENT ON COLUMN fms_photo.photo_id IS 'ͼƬ���';
COMMENT ON COLUMN fms_photo.file_name IS '�ļ�����';
COMMENT ON COLUMN fms_photo.photo_path IS 'ͼƬ·��';
COMMENT ON COLUMN fms_photo.photo_url IS 'ͼƬ����';
COMMENT ON COLUMN fms_photo.original_name IS 'ԭʼ����';
COMMENT ON COLUMN fms_photo.upload_name IS '�ϴ���';
COMMENT ON COLUMN fms_photo.upload_dept IS '�ϴ�����';
COMMENT ON COLUMN fms_photo.upload_time IS '�ϴ�ʱ��';
COMMENT ON COLUMN fms_photo.status IS '״̬';

create table fms_files
(
file_id Int NOT NULL, 
file_title VARCHAR2(120) null,
file_describe VARCHAR2(300) null,
file_name VARCHAR2(600) NOT null,
file_path VARCHAR2(100) NOT null,
file_url VARCHAR2(100) NOT null,
file_suffix VARCHAR2(30) null,
original_name VARCHAR2(600) null,
upload_name VARCHAR2(100) NULL, 
upload_dept VARCHAR2(50) NULL, 
upload_time DATE NULL,
status Int NULL,
constraint PK_fms_files  primary key (file_id)
);

COMMENT ON COLUMN fms_files.file_id IS '�ļ����';
COMMENT ON COLUMN fms_files.file_title IS '�ļ�����';
COMMENT ON COLUMN fms_files.file_describe IS '�ļ�����';
COMMENT ON COLUMN fms_files.file_name IS '�ļ�����';
COMMENT ON COLUMN fms_files.file_path IS '�ļ�·��';
COMMENT ON COLUMN fms_files.file_url IS '�ļ�����';
COMMENT ON COLUMN fms_files.file_suffix IS '�ļ�����';
COMMENT ON COLUMN fms_files.original_name IS 'ԭʼ����';
COMMENT ON COLUMN fms_files.upload_name IS '�ϴ���';
COMMENT ON COLUMN fms_files.upload_dept IS '�ϴ�����';
COMMENT ON COLUMN fms_files.upload_time IS '�ϴ�ʱ��';
COMMENT ON COLUMN fms_files.status IS '״̬';


-- ����ϵͳ���
create table exam_type
(
type_id Int NOT NULL, 
parent_id Int NULL,
type_code VARCHAR2(50) null,
type_name VARCHAR2(60) not null,
order_id Int null,
status Int NULL, 
create_by VARCHAR2(100) NULL, 
create_time DATE NULL, 
constraint PK_exam_type  primary key (type_id)
);


COMMENT ON COLUMN exam_type.type_id IS '���id';
COMMENT ON COLUMN exam_type.parent_id IS '�ϼ����ID';
COMMENT ON COLUMN exam_type.type_code IS '������';
COMMENT ON COLUMN exam_type.type_name IS '�������';
COMMENT ON COLUMN exam_type.order_id IS '˳��Id';
COMMENT ON COLUMN exam_type.status IS '״̬';
COMMENT ON COLUMN exam_type.create_by IS '������';
COMMENT ON COLUMN exam_type.create_time IS '����ʱ��';


create table exam_questions_bank
(
bank_id Int NOT NULL, 
bank_code VARCHAR2(50) NOT NULL,
bank_name VARCHAR2(120) NOT null,
bank_describe VARCHAR2(300) null,
bank_version VARCHAR2(60) null,
exam_type Int NULL, 
online_date DATE NULL, 
picture_url VARCHAR2(600) NULL,
radio_score Int NULL, 
choice_score Int NULL, 
judge_score Int NULL,
status Int NULL, 
create_by VARCHAR2(100) NULL, 
create_dept Int NULL, 
create_time DATE NULL, 
constraint PK_exam_questions_bank  primary key (bank_code)
);


COMMENT ON COLUMN exam_questions_bank.bank_id IS '���id';
COMMENT ON COLUMN exam_questions_bank.bank_code IS '������';
COMMENT ON COLUMN exam_questions_bank.bank_name IS '�������';
COMMENT ON COLUMN exam_questions_bank.bank_describe IS '�������';
COMMENT ON COLUMN exam_questions_bank.bank_version IS '���汾';
COMMENT ON COLUMN exam_questions_bank.exam_type IS '��������';
COMMENT ON COLUMN exam_questions_bank.online_date IS '��������';
COMMENT ON COLUMN exam_questions_bank.picture_url IS 'ͼƬ����';
COMMENT ON COLUMN exam_questions_bank.radio_score IS '��ѡ����';
COMMENT ON COLUMN exam_questions_bank.choice_score IS '��ѡ����';
COMMENT ON COLUMN exam_questions_bank.judge_score IS '�жϷ���';
COMMENT ON COLUMN exam_questions_bank.status IS '״̬';
COMMENT ON COLUMN exam_questions_bank.create_by IS '������';
COMMENT ON COLUMN exam_questions_bank.create_dept IS '��������';
COMMENT ON COLUMN exam_questions_bank.create_time IS '����ʱ��';


create table exam_bank_picture
(
photo_id Int not null,
photo_code VARCHAR2(200) not null,
photo_path VARCHAR2(200) null,
photo_url VARCHAR2(200) null,
file_name VARCHAR2(60) null,
original_name VARCHAR2(200) null,
create_by VARCHAR2(100) NULL, 
create_time DATE NULL, 
status Int null,
constraint PK_exam_bank_picture  primary key (photo_code)
);

COMMENT ON COLUMN exam_bank_picture.photo_id IS 'ͼƬ���';
COMMENT ON COLUMN exam_bank_picture.photo_code IS 'ͼƬ����';
COMMENT ON COLUMN exam_bank_picture.photo_path IS '�ĵ�����';
COMMENT ON COLUMN exam_bank_picture.photo_url IS 'ͼƬ����';
COMMENT ON COLUMN exam_bank_picture.file_name IS '�ļ�����';
COMMENT ON COLUMN exam_bank_picture.original_name IS 'ԭʼ����';
COMMENT ON COLUMN exam_bank_picture.create_by IS '������';
COMMENT ON COLUMN exam_bank_picture.create_time IS '����ʱ��';
COMMENT ON COLUMN exam_bank_picture.status IS '״̬';

create table exam_questions_content
(
questions_code VARCHAR2(50) NOT NULL,
questions_content CLOB NOT null,
constraint PK_exam_questions_content  primary key (questions_code)
);


COMMENT ON COLUMN exam_questions_content.questions_code IS '�������';
COMMENT ON COLUMN exam_questions_content.questions_content IS '������Ŀ';


create table exam_questions_property
(
bank_code VARCHAR2(50) NOT NULL,
questions_id Int NOT NULL, 
questions_code VARCHAR2(50) NOT NULL,
questions_title VARCHAR2(4000) NULL,
questions_type Int NULL, 
questions_score Int NULL,
rate_number Int NULL,
right_answer VARCHAR2(20) NULL,
answer_analyse VARCHAR2(3000) null,
status Int NULL, 
create_by VARCHAR2(100) NULL, 
create_dept Int NULL, 
create_time DATE NULL, 
constraint PK_exam_questions_property  primary key (questions_code)
);


COMMENT ON COLUMN exam_questions_property.bank_code IS '������';
COMMENT ON COLUMN exam_questions_property.questions_id IS '����id';
COMMENT ON COLUMN exam_questions_property.questions_code IS '�������';
COMMENT ON COLUMN exam_questions_property.questions_title IS '������Ŀ';
COMMENT ON COLUMN exam_questions_property.questions_type IS '��������';
COMMENT ON COLUMN exam_questions_property.questions_score IS '��Ŀ����';
COMMENT ON COLUMN exam_questions_property.rate_number IS '���Ӷ�';
COMMENT ON COLUMN exam_questions_property.right_answer IS '��ȷ��';
COMMENT ON COLUMN exam_questions_property.answer_analyse IS '�𰸷���';
COMMENT ON COLUMN exam_questions_property.status IS '״̬';
COMMENT ON COLUMN exam_questions_property.create_by IS '������';
COMMENT ON COLUMN exam_questions_property.create_dept IS '��������';
COMMENT ON COLUMN exam_questions_property.create_time IS '����ʱ��';


create table exam_questions_answer
(
questions_code VARCHAR2(50) NOT NULL,
option_code CHAR(1) NOT null,
option_describe VARCHAR2(600) NOT null,
Is_right Int null,
order_id Int NULL, 
constraint PK_exam_questions_answer  primary key (questions_code, option_code)
);


COMMENT ON COLUMN exam_questions_answer.questions_code IS '�������';
COMMENT ON COLUMN exam_questions_answer.option_code IS '����ѡ��';
COMMENT ON COLUMN exam_questions_answer.option_describe IS 'ѡ������';
COMMENT ON COLUMN exam_questions_answer.Is_right IS '�Ƿ���ȷ';
COMMENT ON COLUMN exam_questions_answer.order_id IS '������';

create table exam_questions
(
bank_code VARCHAR2(50) NOT NULL,
questions_id Int NOT NULL, 
questions_code VARCHAR2(50) NOT NULL,
questions_title VARCHAR2(4000) null,
questions_content CLOB NULL,
questions_type Int NULL, 
questions_score Int NULL,
rate_number Int NULL,
right_answer VARCHAR2(20) NULL,
answer_analyse VARCHAR2(3000) null,
status Int NULL, 
create_by VARCHAR2(100) NULL, 
create_dept Int NULL, 
create_time DATE NULL, 
constraint PK_exam_questions  primary key (questions_code)
);

COMMENT ON COLUMN exam_questions.bank_code IS '������';
COMMENT ON COLUMN exam_questions.questions_id IS '����id';
COMMENT ON COLUMN exam_questions.questions_code IS '�������';
COMMENT ON COLUMN exam_questions.questions_title IS '������Ŀ';
COMMENT ON COLUMN exam_questions.questions_content IS '��������';
COMMENT ON COLUMN exam_questions.questions_type IS '��������';
COMMENT ON COLUMN exam_questions.questions_score IS '��Ŀ����';
COMMENT ON COLUMN exam_questions.rate_number IS '���Ӷ�';
COMMENT ON COLUMN exam_questions.right_answer IS '��ȷ��';
COMMENT ON COLUMN exam_questions.answer_analyse IS '�𰸷���';
COMMENT ON COLUMN exam_questions.status IS '״̬';
COMMENT ON COLUMN exam_questions.create_by IS '������';
COMMENT ON COLUMN exam_questions.create_dept IS '��������';
COMMENT ON COLUMN exam_questions.create_time IS '����ʱ��';


create table exam_task_manager
(
exam_id Int NOT NULL, 
exam_code VARCHAR2(50) NOT NULL,
exam_name VARCHAR2(120) NOT null,
exam_describe VARCHAR2(300) null,
build_type CHAR(1) null,
force_done CHAR(1) NULL, 
exam_bank VARCHAR2(600) null,
exam_bank_text VARCHAR2(1200) null,
picture_url VARCHAR2(200) null,
start_time DATE NULL, 
end_time DATE NULL,
exam_duration VARCHAR2(30) NULL, 
status Int NULL, 
create_by VARCHAR2(100) NULL, 
create_dept Int NULL, 
create_time DATE NULL, 
constraint PK_exam_task_manager  primary key (exam_code)
);


COMMENT ON COLUMN exam_task_manager.exam_id IS '�������';
COMMENT ON COLUMN exam_task_manager.exam_code IS '���Դ���';
COMMENT ON COLUMN exam_task_manager.exam_name IS '��������';
COMMENT ON COLUMN exam_task_manager.exam_describe IS '����˵��';
COMMENT ON COLUMN exam_task_manager.build_type IS '���ʽ';
COMMENT ON COLUMN exam_task_manager.force_done IS 'ǿ�Ƴ��';
COMMENT ON COLUMN exam_task_manager.exam_bank IS '�������';
COMMENT ON COLUMN exam_task_manager.exam_bank_text IS '�����������';
COMMENT ON COLUMN exam_task_manager.picture_url IS 'ͼƬ����';
COMMENT ON COLUMN exam_task_manager.start_time IS '��ʼʱ��';
COMMENT ON COLUMN exam_task_manager.end_time IS '����ʱ��';
COMMENT ON COLUMN exam_task_manager.exam_duration IS '����ʱ��';
COMMENT ON COLUMN exam_task_manager.status IS '״̬';
COMMENT ON COLUMN exam_task_manager.create_by IS '������';
COMMENT ON COLUMN exam_task_manager.create_dept IS '��������';
COMMENT ON COLUMN exam_task_manager.create_time IS '����ʱ��';

create table exam_task_picture
(
photo_id Int not null,
photo_code VARCHAR2(200) not null,
photo_path VARCHAR2(200) null,
photo_url VARCHAR2(200) null,
file_name VARCHAR2(60) null,
original_name VARCHAR2(200) null,
create_by VARCHAR2(100) NULL, 
create_time DATE NULL, 
status Int null,
constraint PK_exam_task_picture  primary key (photo_code)
);

COMMENT ON COLUMN exam_task_picture.photo_id IS 'ͼƬ���';
COMMENT ON COLUMN exam_task_picture.photo_code IS 'ͼƬ����';
COMMENT ON COLUMN exam_task_picture.photo_path IS '�ĵ�����';
COMMENT ON COLUMN exam_task_picture.photo_url IS 'ͼƬ����';
COMMENT ON COLUMN exam_task_picture.file_name IS '�ļ�����';
COMMENT ON COLUMN exam_task_picture.original_name IS 'ԭʼ����';
COMMENT ON COLUMN exam_task_picture.create_by IS '������';
COMMENT ON COLUMN exam_task_picture.create_time IS '����ʱ��';
COMMENT ON COLUMN exam_task_picture.status IS '״̬';

create table exam_task_questions
(
exam_code VARCHAR2(50) NOT NULL,
questions_code VARCHAR2(50) NOT NULL,
questions_number Int null,
constraint PK_exam_task_questions  primary key (exam_code, questions_code)
);


COMMENT ON COLUMN exam_task_questions.exam_code IS '���Դ���';
COMMENT ON COLUMN exam_task_questions.questions_code IS '��Ŀ����';
COMMENT ON COLUMN exam_task_questions.questions_number IS '���';


create table exam_task_group
(
exam_code VARCHAR2(50) NOT NULL,
group_code VARCHAR2(50) NOT NULL,
order_id Int null,
constraint PK_exam_task_group  primary key (exam_code, group_code)
);


COMMENT ON COLUMN exam_task_group.exam_code IS '���Դ���';
COMMENT ON COLUMN exam_task_group.group_code IS '�������';
COMMENT ON COLUMN exam_task_group.order_id IS '������';


create table exam_task_person
(
exam_code VARCHAR2(50) NOT NULL,
user_code VARCHAR2(120) NOT null,
task_code VARCHAR2(50) NOT NULL,
start_time DATE NULL,
end_time DATE NULL,
status Int null,
constraint PK_exam_task_person  primary key (exam_code,user_code)
);


COMMENT ON COLUMN exam_task_person.exam_code IS '���Դ���';
COMMENT ON COLUMN exam_task_person.user_code IS '������Ա';
COMMENT ON COLUMN exam_task_person.task_code IS '�������';
COMMENT ON COLUMN exam_task_person.start_time IS '��ʼʱ��';
COMMENT ON COLUMN exam_task_person.end_time IS '����ʱ��';
COMMENT ON COLUMN exam_task_person.status IS '״̬';

create table exam_user_score
(
exam_code VARCHAR2(50) NOT NULL,
user_code VARCHAR2(120) NOT null,
start_time DATE NULL,
end_time DATE NULL,
questions_score NUMBER(8,2) null,
exam_score NUMBER(8,2) null,
exam_number int null,
answered_number int null,
not_answered int null,
status Int null,
constraint PK_exam_user_score  primary key (exam_code,user_code)
);


COMMENT ON COLUMN exam_user_score.exam_code IS '���Դ���';
COMMENT ON COLUMN exam_user_score.user_code IS '������Ա';
COMMENT ON COLUMN exam_user_score.start_time IS '��ʼʱ��';
COMMENT ON COLUMN exam_user_score.end_time IS '����ʱ��';
COMMENT ON COLUMN exam_user_score.questions_score IS '��Ŀ����';
COMMENT ON COLUMN exam_user_score.exam_score IS '����';
COMMENT ON COLUMN exam_user_score.exam_number IS '��Ŀ��';
COMMENT ON COLUMN exam_user_score.answered_number IS '������';
COMMENT ON COLUMN exam_user_score.not_answered IS 'δ������';
COMMENT ON COLUMN exam_user_score.status IS '״̬';


create table exam_task_answer
(
exam_code VARCHAR2(50) NOT NULL,
user_code VARCHAR2(100) NOT NULL,
questions_code VARCHAR2(50) NOT NULL,
questions_number Int NOT NULL,
questions_type int NOT NULL,
questions_answer VARCHAR2(20) NULL,
is_mark CHAR(1) NULL,
is_current CHAR(1) NULL,
constraint PK_exam_task_answer  primary key (exam_code, questions_code, user_code)
);


COMMENT ON COLUMN exam_task_answer.exam_code IS '���Դ���';
COMMENT ON COLUMN exam_task_answer.user_code IS '�����û�';
COMMENT ON COLUMN exam_task_answer.questions_code IS '��Ŀ����';
COMMENT ON COLUMN exam_task_answer.questions_number IS '���';
COMMENT ON COLUMN exam_task_answer.questions_type IS '��������';
COMMENT ON COLUMN exam_task_answer.questions_answer IS '��Ŀ�ش�';
COMMENT ON COLUMN exam_task_answer.is_mark IS '�Ƿ���';
COMMENT ON COLUMN exam_task_answer.is_current IS '�Ƿ�ǰ';

create table exam_finish_answer
(
exam_code VARCHAR2(50) NOT NULL,
user_code VARCHAR2(100) NOT NULL,
questions_code VARCHAR2(50) NOT NULL,
exam_score Number(8,2) NULL,
right_answer VARCHAR2(20) NULL,
questions_answer VARCHAR2(20) NULL,
questions_score Int NULL,
constraint PK_exam_finish_answer  primary key (exam_code, questions_code, user_code)
);


COMMENT ON COLUMN exam_finish_answer.exam_code IS '���Դ���';
COMMENT ON COLUMN exam_finish_answer.user_code IS '�����û�';
COMMENT ON COLUMN exam_finish_answer.questions_code IS '��Ŀ����';
COMMENT ON COLUMN exam_finish_answer. exam_score IS '����';
COMMENT ON COLUMN exam_finish_answer.right_answer IS '��ȷ��';
COMMENT ON COLUMN exam_finish_answer.questions_answer IS '��Ŀ�ش�';
COMMENT ON COLUMN exam_finish_answer.questions_score IS '��Ŀ�÷�';









