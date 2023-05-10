-- 系统管理相关
create table sys_dept (
    dept_id Int NOT NULL, 
    parent_id Int NULL,
    ancestors VARCHAR(50) null,
    dept_code VARCHAR(50) null,
    dept_name VARCHAR(600) not null,
    order_num Int null,
    leader VARCHAR(30) null,
    phone VARCHAR(20) null,
    email VARCHAR(50) NULL, 
    status CHAR(1) NULL, 
    del_flag CHAR(1) NULL,
    create_by VARCHAR(100) NULL, 
    create_time DATE NULL, 
    update_by VARCHAR(100) NULL, 
    update_time DATE NULL, 
    constraint PK_sys_dept  primary key (dept_id)
);

create table sys_user (
    user_id Int NOT NULL, 
    user_code VARCHAR(100) null,
    dept_id Int NULL,
    user_name VARCHAR(100) null,
    nick_name VARCHAR(30) NOT null,
    user_type CHAR(2) NULL,
    email VARCHAR(50) null,
    phonenumber VARCHAR(20) null,
    sex CHAR(1) null,
    avatar VARCHAR(300) null,
    password VARCHAR(100) null,
    status CHAR(1) NULL, 
    del_flag CHAR(1) NULL,
    login_ip VARCHAR(128) NULL,
    login_date DATE NULL,
    create_by VARCHAR(100) NULL, 
    create_time DATE NULL, 
    update_by VARCHAR(100) NULL, 
    update_time DATE NULL, 
    remark VARCHAR(600) NULL,
    constraint PK_sys_user  primary key (user_id)
);

create table sys_post (
    post_id Int NOT NULL, 
    post_code VARCHAR(64) null,
    post_name VARCHAR(50) NOT null,
    post_sort Int NULL,
    status CHAR(1) NULL, 
    del_flag CHAR(1) NULL,
    create_by VARCHAR(100) NULL, 
    create_time DATE NULL, 
    update_by VARCHAR(100) NULL, 
    update_time DATE NULL, 
    remark VARCHAR(600) NULL,
    constraint PK_sys_post  primary key (post_id)
);


create table sys_role (
    role_id Int NOT NULL, 
    role_name VARCHAR(90) NOT null,
    role_key VARCHAR(200) null,
    role_sort Int NULL,
    data_scope CHAR(1) NULL,
    menu_check_strictly Int NULL,
    dept_check_strictly Int NULL,
    status CHAR(1) NULL, 
    del_flag CHAR(1) NULL,
    create_by VARCHAR(100) NULL, 
    create_time DATE NULL, 
    update_by VARCHAR(100) NULL, 
    update_time DATE NULL, 
    remark VARCHAR(600) NULL,
    constraint PK_sys_role  primary key (role_id)
);

create table sys_menu (
    menu_id Int NOT NULL, 
    menu_name VARCHAR(120) NOT null,
    parent_id Int NULL,
    order_num Int NULL,
    path VARCHAR(200) null,
    component VARCHAR(300) null,
    is_frame Int NULL,
    is_cache Int NULL,
    menu_type CHAR(1) NULL,
    visible CHAR(1) NULL,
    status CHAR(1) NULL, 
    del_flag CHAR(1) NULL,
    perms VARCHAR(100) NULL,
    icon VARCHAR(100) NULL,
    create_by VARCHAR(100) NULL, 
    create_time DATE NULL, 
    update_by VARCHAR(100) NULL, 
    update_time DATE NULL, 
    remark VARCHAR(600) NULL,
    constraint PK_sys_menu  primary key (menu_id)
);

create table sys_user_role (
    user_id Int NOT NULL, 
    role_id Int NOT NULL,
    constraint PK_sys_user_role  primary key (user_id, role_id)
);

create table sys_role_menu (
    role_id Int NOT NULL, 
    menu_id Int NOT NULL,
    constraint PK_sys_role_menu  primary key (role_id, menu_id)
);

create table sys_role_dept (
    role_id Int NOT NULL, 
    dept_id Int NOT NULL,
    constraint PK_sys_role_dept  primary key (role_id, dept_id)
);

create table sys_user_post (
    user_id Int NOT NULL, 
    post_id Int NOT NULL,
    constraint PK_sys_user_post  primary key (user_id, post_id)
);

create table sys_oper_log (
    oper_id Int NOT NULL, 
    title VARCHAR(120) NOT null,
    business_type Int NULL,
    method VARCHAR(120) NULL,
    request_method VARCHAR(120) NULL,
    operator_type Int NULL,
    oper_name VARCHAR(50) null,
    dept_name VARCHAR(120) null,
    oper_url VARCHAR(300) null,
    oper_ip VARCHAR(128) null,
    oper_location VARCHAR(300) null,
    oper_param VARCHAR(2000) null,
    json_result VARCHAR(2000) null,
    status CHAR(1) NULL, 
    error_msg VARCHAR(2000) NULL,
    oper_time DATE NULL, 
    constraint PK_sys_oper_log  primary key (oper_id)
);

create table sys_dict_type (
    dict_id Int NOT NULL, 
    dict_name VARCHAR(200) NOT null,
    dict_type VARCHAR(50) null,
    status CHAR(1) NULL, 
    create_by VARCHAR(100) NULL, 
    create_time DATE NULL, 
    update_by VARCHAR(100) NULL, 
    update_time DATE NULL, 
    remark VARCHAR(600) NULL,
    constraint PK_sys_dict_type  primary key (dict_id)
);

create table sys_dict_data (
    dict_code Int NOT NULL, 
    dict_sort Int NULL, 
    dict_label VARCHAR(100) NOT null,
    dict_value VARCHAR(100) NOT null,
    dict_type VARCHAR(100) null,
    css_class VARCHAR(100) null,
    list_class VARCHAR(100) null,
    is_default CHAR(1) NULL,
    status CHAR(1) NULL, 
    create_by VARCHAR(100) NULL, 
    create_time DATE NULL, 
    update_by VARCHAR(100) NULL, 
    update_time DATE NULL, 
    remark VARCHAR(600) NULL,
    constraint PK_sys_dict_data  primary key (dict_code)
);

create table sys_config (
    config_id Int NOT NULL, 
    config_name VARCHAR(100) NOT null,
    config_key VARCHAR(100) null,
    config_value VARCHAR(100) null,
    config_type CHAR(1) NULL,
    create_by VARCHAR(100) NULL, 
    create_time DATE NULL, 
    update_by VARCHAR(100) NULL, 
    update_time DATE NULL, 
    remark VARCHAR(600) NULL,
    constraint PK_sys_config  primary key (config_id)
);

create table sys_logininfor (
    info_id Int NOT NULL, 
    user_name VARCHAR(50) NOT null,
    ipaddr VARCHAR(128) null,
    login_location VARCHAR(300) null,
    browser VARCHAR(50) null,
    os VARCHAR(50) null,
    status CHAR(1) NULL,
    msg VARCHAR(600) NULL, 
    login_time DATE NULL, 
    constraint PK_sys_logininfor  primary key (info_id)
);

create table sys_job (
    job_id Int NOT NULL, 
    job_name VARCHAR(120) NOT null,
    job_group VARCHAR(120) null,
    invoke_target VARCHAR(500) null,
    cron_expression VARCHAR(300) null,
    misfire_policy VARCHAR(20) null,
    concurrent CHAR(1) NULL,
    status CHAR(1) NULL,
    create_by VARCHAR(100) NULL, 
    create_time DATE NULL, 
    update_by VARCHAR(100) NULL, 
    update_time DATE NULL, 
    remark VARCHAR(600) NULL,
    constraint PK_sys_job  primary key (job_id)
);

create table sys_job_log (
    job_log_id Int NOT NULL, 
    job_name VARCHAR(120) NOT null,
    job_group VARCHAR(120) null,
    invoke_target VARCHAR(500) null,
    job_message VARCHAR(500) null,
    status CHAR(1) NULL,
    exception_info VARCHAR(2000) NULL, 
    create_time DATE NULL, 
    constraint PK_sys_job_log  primary key (job_log_id)
);

create table sys_notice (
    notice_id Int NOT NULL, 
    notice_title VARCHAR(120) NOT null,
    notice_type CHAR(1) null,
    notice_content longtext null,
    status CHAR(1) NULL,
    create_by VARCHAR(100) NULL, 
    create_time DATE NULL, 
    update_by VARCHAR(100) NULL, 
    update_time DATE NULL, 
    remark VARCHAR(600) NULL,
    constraint PK_sys_notice  primary key (notice_id)
);

create table sys_group (
    group_id Int NOT NULL, 
    group_code VARCHAR(50) NOT null,
    group_name VARCHAR(120) NOT null,
    group_describe VARCHAR(200) NOT null,
    status CHAR(1) NULL, 
    create_by VARCHAR(100) NULL, 
    create_time DATE NULL, 
    constraint PK_sys_group  primary key (group_id)
);

create table sys_group_person (
    group_code VARCHAR(50) NOT null,
    person_code VARCHAR(120) NOT null,
    order_id Int null,
    constraint PK_sys_group_person  primary key (group_code, person_code)
);

create table sys_user_choice (
    choice_code VARCHAR(50) NOT null,
    user_code VARCHAR(100) null,
    order_id int null,
    constraint PK_sys_user_choice  primary key (choice_code)
);

create table gen_table (
    table_id Int NOT NULL, 
    table_name VARCHAR(120) NOT null,
    table_comment VARCHAR(500) null,
    sub_table_name VARCHAR(120) null,
    sub_table_fk_name VARCHAR(120) null,
    class_name VARCHAR(100) null,
    tpl_category VARCHAR(200) null,
    package_name VARCHAR(100) null,
    module_name VARCHAR(30) null,
    business_name VARCHAR(30) null,
    function_name VARCHAR(50) null,
    function_author VARCHAR(50) null,
    gen_type CHAR(1) null,
    gen_path VARCHAR(200) null,
    options VARCHAR(1000) null,
    status CHAR(1) NULL,
    create_by VARCHAR(100) NULL, 
    create_time DATE NULL, 
    update_by VARCHAR(100) NULL, 
    update_time DATE NULL, 
    remark VARCHAR(600) NULL,
    constraint PK_gen_table  primary key (table_id)
);


create table gen_table_column (
    column_id Int NOT NULL,
    table_id Int NOT NULL, 
    column_name VARCHAR(200) NOT null,
    column_comment VARCHAR(500) NOT null,
    column_type VARCHAR(100) null,
    java_type VARCHAR(500) null,
    java_field VARCHAR(200) null,
    is_pk Char(1) null,
    is_increment Char(1) null,
    is_required Char(1) null,
    is_insert Char(1) null,
    is_edit Char(1) null,
    is_list Char(1) null,
    is_query Char(1) null,
    query_type VARCHAR(200) null,
    html_type VARCHAR(200) null,
    dict_type VARCHAR(200) null,
    sort Int NULL,
    create_by VARCHAR(100) NULL, 
    create_time DATE NULL, 
    update_by VARCHAR(100) NULL, 
    update_time DATE NULL, 
    remark VARCHAR(600) NULL,
    constraint PK_gen_table_column  primary key (column_id,table_id)
);



-- ----------------------------
-- 1、存储每一个已配置的 jobDetail 的详细信息
-- ----------------------------
create table qrtz_job_details (
    sched_name VARCHAR(120) not null,
    job_name  VARCHAR(200) not null,
    job_group VARCHAR(200) not null,
    description VARCHAR(250) null,
    job_class_name   VARCHAR(250) not null,
    is_durable VARCHAR(1) not null,
    is_nonconcurrent VARCHAR(1) not null,
    is_update_data VARCHAR(1) not null,
    requests_recovery VARCHAR(1) not null,
    job_data blob null,
    constraint qrtz_job_details_pk primary key (sched_name,job_name,job_group)
);

-- ----------------------------
-- 2、 存储已配置的 Trigger 的信息
-- ----------------------------
create table qrtz_triggers (
    sched_name VARCHAR(120) not null,
    trigger_name VARCHAR(200) not null,
    trigger_group VARCHAR(200) not null,
    job_name  VARCHAR(200) not null,
    job_group VARCHAR(200) not null,
    description VARCHAR(250) null,
    next_fire_time decimal(13) null,
    prev_fire_time decimal(13) null,
    priority decimal(13) null,
    trigger_state VARCHAR(16) not null,
    trigger_type VARCHAR(8) not null,
    start_time decimal(13) not null,
    end_time decimal(13) null,
    calendar_name VARCHAR(200) null,
    misfire_instr decimal(2) null,
    job_data blob null,
    constraint qrtz_triggers_pk primary key (sched_name,trigger_name,trigger_group),
    constraint qrtz_trigger_to_jobs_fk foreign key (sched_name,job_name,job_group)
    references qrtz_job_details(sched_name,job_name,job_group)
);

-- ----------------------------
-- 3、 存储简单的 Trigger，包括重复次数，间隔，以及已触发的次数
-- ----------------------------
create table qrtz_simple_triggers (
    sched_name VARCHAR(120) not null,
    trigger_name VARCHAR(200) not null,
    trigger_group VARCHAR(200) not null,
    repeat_count decimal(7) not null,
    repeat_interval decimal(12) not null,
    times_triggered decimal(10) not null,
    constraint qrtz_simple_trig_pk primary key (sched_name,trigger_name,trigger_group),
    constraint qrtz_simple_trig_to_trig_fk foreign key (sched_name,trigger_name,trigger_group)
    references qrtz_triggers(sched_name,trigger_name,trigger_group)
);

-- ----------------------------
-- 4、 存储 Cron Trigger，包括 Cron 表达式和时区信息
-- ---------------------------- 
create table qrtz_cron_triggers (
    sched_name VARCHAR(120) not null,
    trigger_name VARCHAR(200) not null,
    trigger_group VARCHAR(200) not null,
    cron_expression VARCHAR(120) not null,
    time_zone_id VARCHAR(80),
    constraint qrtz_cron_trig_pk primary key (sched_name,trigger_name,trigger_group),
    constraint qrtz_cron_trig_to_trig_fk foreign key (sched_name,trigger_name,trigger_group)
    references qrtz_triggers(sched_name,trigger_name,trigger_group)
);

-- ----------------------------
-- 5、 Trigger 作为 Blob 类型存储(用于 Quartz 用户用 JDBC 创建他们自己定制的 Trigger 类型，JobStore 并不知道如何存储实例的时候)
-- ---------------------------- 
create table qrtz_blob_triggers (
    sched_name VARCHAR(120) not null,
    trigger_name VARCHAR(200) not null,
    trigger_group VARCHAR(200) not null,
    blob_data blob null,
    constraint qrtz_blob_trig_pk primary key (sched_name,trigger_name,trigger_group),
    constraint qrtz_blob_trig_to_trig_fk foreign key (sched_name,trigger_name,trigger_group)
    references qrtz_triggers(sched_name,trigger_name,trigger_group)
);

-- ----------------------------
-- 6、 以 Blob 类型存储存放日历信息， quartz可配置一个日历来指定一个时间范围
-- ---------------------------- 
create table qrtz_calendars (
    sched_name VARCHAR(120) not null,
    calendar_name  VARCHAR(200) not null,
    calendar blob not null,
    constraint qrtz_calendars_pk primary key (sched_name,calendar_name)
);

-- ----------------------------
-- 7、 存储已暂停的 Trigger 组的信息
-- ---------------------------- 
create table qrtz_paused_trigger_grps (
    sched_name VARCHAR(120) not null,
    trigger_group  VARCHAR(200) not null,
    constraint qrtz_paused_trig_grps_pk primary key (sched_name,trigger_group)
);

-- ----------------------------
-- 8、 存储与已触发的 Trigger 相关的状态信息，以及相联 Job 的执行信息
-- ---------------------------- 
create table qrtz_fired_triggers (
    sched_name VARCHAR(120) not null,
    entry_id VARCHAR(95) not null,
    trigger_name VARCHAR(200) not null,
    trigger_group VARCHAR(200) not null,
    instance_name VARCHAR(200) not null,
    fired_time decimal(13) not null,
    sched_time decimal(13) not null,
    priority decimal(13) not null,
    state VARCHAR(16) not null,
    job_name VARCHAR(200) null,
    job_group VARCHAR(200) null,
    is_nonconcurrent VARCHAR(1) null,
    requests_recovery VARCHAR(1) null,
    constraint qrtz_fired_trigger_pk primary key (sched_name,entry_id)
);

-- ----------------------------
-- 9、 存储少量的有关 Scheduler 的状态信息，假如是用于集群中，可以看到其他的 Scheduler 实例
-- ---------------------------- 
create table qrtz_scheduler_state (
    sched_name VARCHAR(120) not null,
    instance_name VARCHAR(200) not null,
    last_checkin_time decimal(13) not null,
    checkin_interval decimal(13) not null,
    constraint qrtz_scheduler_state_pk primary key (sched_name,instance_name)
);

-- ----------------------------
-- 10、 存储程序的悲观锁的信息(假如使用了悲观锁)
-- ---------------------------- 
create table qrtz_locks (
    sched_name VARCHAR(120) not null,
    lock_name  VARCHAR(40) not null,
    constraint qrtz_locks_pk primary key (sched_name,lock_name)
);

create table qrtz_simprop_triggers (
    sched_name VARCHAR(120) not null,
    trigger_name VARCHAR(200) not null,
    trigger_group VARCHAR(200) not null,
    str_prop_1 VARCHAR(512) null,
    str_prop_2 VARCHAR(512) null,
    str_prop_3 VARCHAR(512) null,
    int_prop_1 decimal(10) null,
    int_prop_2 decimal(10) null,
    long_prop_1 decimal(13) null,
    long_prop_2 decimal(13) null,
    dec_prop_1 decimal(13,4) null,
    dec_prop_2 decimal(13,4) null,
    bool_prop_1 VARCHAR(1) null,
    bool_prop_2 VARCHAR(1) null,
    constraint qrtz_simprop_trig_pk primary key (sched_name,trigger_name,trigger_group),
    constraint qrtz_simprop_trig_to_trig_fk foreign key (sched_name,trigger_name,trigger_group)
    references qrtz_triggers(sched_name,trigger_name,trigger_group)
);


-- 资料管理相关
create table fms_photo (
    photo_id Int NOT NULL, 
    file_name VARCHAR(600) NOT null,
    photo_path VARCHAR(100) NOT null,
    photo_url VARCHAR(100) NOT null,
    original_name VARCHAR(600) null,
    upload_name VARCHAR(100) NULL, 
    upload_dept VARCHAR(50) NULL, 
    upload_time DATE NULL,
    status Int NULL,
    constraint PK_fms_photo  primary key (photo_id)
);

create table fms_files (
    file_id Int NOT NULL, 
    file_title VARCHAR(120) null,
    file_describe VARCHAR(300) null,
    file_name VARCHAR(600) NOT null,
    file_path VARCHAR(100) NOT null,
    file_url VARCHAR(100) NOT null,
    file_suffix VARCHAR(30) null,
    original_name VARCHAR(600) null,
    upload_name VARCHAR(100) NULL, 
    upload_dept VARCHAR(50) NULL, 
    upload_time DATE NULL,
    status Int NULL,
    constraint PK_fms_files  primary key (file_id)
);

-- 考试系统相关
create table exam_type (
    type_id Int NOT NULL, 
    parent_id Int NULL,
    type_code VARCHAR(50) null,
    type_name VARCHAR(60) not null,
    order_id Int null,
    status Int NULL, 
    create_by VARCHAR(100) NULL, 
    create_time DATE NULL, 
    constraint PK_exam_type  primary key (type_id)
);

create table exam_questions_bank (
    bank_id Int NOT NULL, 
    bank_code VARCHAR(50) NOT NULL,
    bank_name VARCHAR(120) NOT null,
    bank_describe VARCHAR(300) null,
    bank_version VARCHAR(60) null,
    exam_type Int NULL, 
    online_date DATE NULL, 
    picture_url VARCHAR(600) NULL,
    radio_score Int NULL, 
    choice_score Int NULL, 
    judge_score Int NULL,
    status Int NULL, 
    create_by VARCHAR(100) NULL, 
    create_dept Int NULL, 
    create_time DATE NULL, 
    constraint PK_exam_questions_bank  primary key (bank_code)
);

create table exam_bank_picture (
    photo_id Int not null,
    photo_code VARCHAR(200) not null,
    photo_path VARCHAR(200) null,
    photo_url VARCHAR(200) null,
    file_name VARCHAR(60) null,
    original_name VARCHAR(200) null,
    create_by VARCHAR(100) NULL, 
    create_time DATE NULL, 
    status Int null,
    constraint PK_exam_bank_picture  primary key (photo_code)
);

create table exam_questions_content (
    questions_code VARCHAR(50) NOT NULL,
    questions_content longtext NOT null,
    constraint PK_exam_questions_content  primary key (questions_code)
);

create table exam_questions_property(
    bank_code VARCHAR(50) NOT NULL,
    questions_id Int NOT NULL, 
    questions_code VARCHAR(50) NOT NULL,
    questions_title VARCHAR(4000) NULL,
    questions_type Int NULL, 
    questions_score Int NULL,
    rate_number Int NULL,
    right_answer VARCHAR(20) NULL,
    answer_analyse VARCHAR(3000) null,
    status Int NULL, 
    create_by VARCHAR(100) NULL, 
    create_dept Int NULL, 
    create_time DATE NULL, 
    constraint PK_exam_questions_property  primary key (questions_code)
);

create table exam_questions_answer (
    questions_code VARCHAR(50) NOT NULL,
    option_code CHAR(1) NOT null,
    option_describe VARCHAR(600) NOT null,
    Is_right Int null,
    order_id Int NULL, 
    constraint PK_exam_questions_answer  primary key (questions_code, option_code)
);

create table exam_questions (
    bank_code VARCHAR(50) NOT NULL,
    questions_id Int NOT NULL, 
    questions_code VARCHAR(50) NOT NULL,
    questions_title VARCHAR(4000) null,
    questions_content longtext NULL,
    questions_type Int NULL, 
    questions_score Int NULL,
    rate_number Int NULL,
    right_answer VARCHAR(20) NULL,
    answer_analyse VARCHAR(3000) null,
    status Int NULL, 
    create_by VARCHAR(100) NULL, 
    create_dept Int NULL, 
    create_time DATE NULL, 
    constraint PK_exam_questions  primary key (questions_code)
);

create table exam_task_manager(
    exam_id Int NOT NULL, 
    exam_code VARCHAR(50) NOT NULL,
    exam_name VARCHAR(120) NOT null,
    exam_describe VARCHAR(300) null,
    build_type CHAR(1) null,
    force_done CHAR(1) NULL, 
    exam_bank VARCHAR(600) null,
    exam_bank_text VARCHAR(1200) null,
    picture_url VARCHAR(200) null,
    start_time DATE NULL, 
    end_time DATE NULL,
    exam_duration VARCHAR(30) NULL, 
    status Int NULL, 
    create_by VARCHAR(100) NULL, 
    create_dept Int NULL, 
    create_time DATE NULL, 
    constraint PK_exam_task_manager  primary key (exam_code)
);

create table exam_task_picture (
    photo_id Int not null,
    photo_code VARCHAR(200) not null,
    photo_path VARCHAR(200) null,
    photo_url VARCHAR(200) null,
    file_name VARCHAR(60) null,
    original_name VARCHAR(200) null,
    create_by VARCHAR(100) NULL, 
    create_time DATE NULL, 
    status Int null,
    constraint PK_exam_task_picture  primary key (photo_code)
);

create table exam_task_questions (
    exam_code VARCHAR(50) NOT NULL,
    questions_code VARCHAR(50) NOT NULL,
    questions_number Int null,
    constraint PK_exam_task_questions  primary key (exam_code, questions_code)
);

create table exam_task_group(
    exam_code VARCHAR(50) NOT NULL,
    group_code VARCHAR(50) NOT NULL,
    order_id Int null,
    constraint PK_exam_task_group  primary key (exam_code, group_code)
);

create table exam_task_person(
    exam_code VARCHAR(50) NOT NULL,
    user_code VARCHAR(120) NOT null,
    task_code VARCHAR(50) NOT NULL,
    start_time DATE NULL,
    end_time DATE NULL,
    status Int null,
    constraint PK_exam_task_person  primary key (exam_code,user_code)
);

create table exam_user_score (
    exam_code VARCHAR(50) NOT NULL,
    user_code VARCHAR(120) NOT null,
    start_time DATE NULL,
    end_time DATE NULL,
    questions_score decimal(8,2) null,
    exam_score decimal(8,2) null,
    exam_number int null,
    answered_number int null,
    not_answered int null,
    status Int null,
    constraint PK_exam_user_score  primary key (exam_code,user_code)
);

create table exam_task_answer(
    exam_code VARCHAR(50) NOT NULL,
    user_code VARCHAR(100) NOT NULL,
    questions_code VARCHAR(50) NOT NULL,
    questions_number Int NOT NULL,
    questions_type int NOT NULL,
    questions_answer VARCHAR(20) NULL,
    is_mark CHAR(1) NULL,
    is_current CHAR(1) NULL,
    constraint PK_exam_task_answer  primary key (exam_code, questions_code, user_code)
);

create table exam_finish_answer (
    exam_code VARCHAR(50) NOT NULL,
    user_code VARCHAR(100) NOT NULL,
    questions_code VARCHAR(50) NOT NULL,
    exam_score decimal(8,2) NULL,
    right_answer VARCHAR(20) NULL,
    questions_answer VARCHAR(20) NULL,
    questions_score Int NULL,
    constraint PK_exam_finish_answer  primary key (exam_code, questions_code, user_code)
);
