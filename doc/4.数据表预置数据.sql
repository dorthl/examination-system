-- Ԥ�����ݿ��Զ��ѡ�е���
-- ----------------------------
-- ��ʼ��-���ű�����
-- ----------------------------
insert into sys_dept(dept_id,parent_id,ancestors,dept_code,dept_name,order_num,leader,phone,email,status,del_flag,create_by,create_time) values (100,0,'0','5301001','�����õ�λ',0,'','13512345678','','0','0','admin',sysdate);

-- ----------------------------
-- ��ʼ��-�û���Ϣ������
-- ----------------------------
insert into SYS_USER (user_id, user_code, dept_id, user_name, nick_name, user_type, email, phonenumber, sex, avatar, password, status, del_flag, login_ip, login_date, create_by, create_time, update_by, update_time, remark)
values (2, '40288b0186e867550186e867559d0000', 100, 'user1', '�û�һ', null, null, '13654128596', null, null, '$2a$10$aqSRTGVSqrZFwp.s5JXic.5JtZDYFq.19hriwW7seEdPGo6SJu3.W', '0', '0', '127.0.0.1', to_date('16-03-2023 11:16:56', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('16-03-2023 11:11:57', 'dd-mm-yyyy hh24:mi:ss'), null, to_date('16-03-2023 11:16:42', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into SYS_USER (user_id, user_code, dept_id, user_name, nick_name, user_type, email, phonenumber, sex, avatar, password, status, del_flag, login_ip, login_date, create_by, create_time, update_by, update_time, remark)
values (3, '40288b0186e867550186e86911cc0001', 100, 'user2', '�û���', null, null, '13698568741', null, null, '$2a$10$Sh3WZ3ozH8Q88oG7mla.jerm3f3rCaq0QzD1KEPXXFrzcay0Hgz.S', '0', '0', null, null, 'admin', to_date('16-03-2023 11:13:51', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into SYS_USER (user_id, user_code, dept_id, user_name, nick_name, user_type, email, phonenumber, sex, avatar, password, status, del_flag, login_ip, login_date, create_by, create_time, update_by, update_time, remark)
values (1, 'F6FFFC4E3A50062DE0534479C80A75C1', 100, 'admin', 'ϵͳ����Ա', '00', 'abc@qq.com', '13512345678', '0', null, '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', to_date('16-03-2023 11:19:58', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, to_date('16-03-2023 11:19:44', 'dd-mm-yyyy hh24:mi:ss'), null);

-- ��ʼ��-��λ��Ϣ������
-- ----------------------------
insert into sys_post (post_id,post_code,post_name,post_sort,status,del_flag,create_by,create_time) values(1, 'ceo',  '���³�',    1, '0',  '0','admin', sysdate);

-- ----------------------------
-- ��ʼ��-��ɫ��Ϣ������
-- ----------------------------
insert into SYS_ROLE (role_id, role_name, role_key, role_sort, data_scope, menu_check_strictly, dept_check_strictly, status, del_flag, create_by, create_time, update_by, update_time, remark)
values (2, 'ѧԱ', 'student', 2, null, 1, 1, '0', '0', 'admin', to_date('16-03-2023 11:01:28', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('16-03-2023 11:16:25', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into SYS_ROLE (role_id, role_name, role_key, role_sort, data_scope, menu_check_strictly, dept_check_strictly, status, del_flag, create_by, create_time, update_by, update_time, remark)
values (1, '��������Ա', 'admin', 1, '1', 1, 1, '0', '0', 'admin', to_date('16-03-2023 10:31:19', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
commit;


-- ----------------------------
-- ��ʼ��-�˵���Ϣ������
-- ----------------------------
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1, 'ϵͳ����', 0, 1, 'system', null, 1, 0, 'M', '0', '0', '0', null, 'system', 'admin', null, null, null, 'ϵͳ����Ŀ¼');
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (2, 'ϵͳ���', 0, 3, 'monitor', null, 1, 0, 'M', '0', '0', '0', null, 'monitor', 'admin', null, null, null, 'ϵͳ���Ŀ¼');
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (3, 'ϵͳ����', 0, 4, 'tool', null, 1, 0, 'M', '0', '0', '0', null, 'tool', 'admin', null, null, null, 'ϵͳ����Ŀ¼');
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (8, '���Ϲ���', 0, 8, 'fms', null, 1, 0, 'M', '0', '0', '0', null, 'files', 'admin', null, null, null, '�ļ�����Ŀ¼');
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (9, '�������', 0, 9, 'questions', null, 1, 0, 'M', '0', '0', '0', null, 'questions', 'admin', null, null, null, '�������Ŀ¼');
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (10, '���Թ���', 0, 10, 'exammanager', null, 1, 0, 'M', '0', '0', '0', null, 'exammanager', 'admin', null, null, null, '���Թ���Ŀ¼');
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (11, '���߿���', 0, 11, 'onlineexam', null, 1, 0, 'M', '0', '0', '0', null, 'onlineexam', 'admin', null, null, null, '���߿���Ŀ¼');
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (100, '�û�����', 1, 1, 'user', 'system/user/index', 1, 0, 'C', '0', '0', '0', 'system:user:list', 'user', 'admin', null, null, null, '�û�����˵�');
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (101, '��ɫ����', 1, 2, 'role', 'system/role/index', 1, 0, 'C', '0', '0', '0', 'system:role:list', 'peoples', 'admin', null, null, null, '��ɫ����˵�');
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (102, '�˵�����', 1, 3, 'menu', 'system/menu/index', 1, 0, 'C', '0', '0', '0', 'system:menu:list', 'tree-table', 'admin', null, null, null, '�˵�����˵�');
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (103, '���Ź���', 1, 4, 'dept', 'system/dept/index', 1, 0, 'C', '0', '0', '0', 'system:dept:list', 'tree', 'admin', null, null, null, '���Ź���˵�');
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (104, '��λ����', 1, 5, 'post', 'system/post/index', 1, 0, 'C', '0', '0', '0', 'system:post:list', 'post', 'admin', null, null, null, '��λ����˵�');
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (105, '�ֵ����', 1, 6, 'dict', 'system/dict/index', 1, 0, 'C', '0', '0', '0', 'system:dict:list', 'dict', 'admin', null, null, null, '�ֵ����˵�');
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (106, '��������', 1, 7, 'config', 'system/config/index', 1, 0, 'C', '0', '0', '0', 'system:config:list', 'edit', 'admin', null, null, null, '�������ò˵�');
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (107, '֪ͨ����', 1, 8, 'notice', 'system/notice/index', 1, 0, 'C', '0', '0', '0', 'system:notice:list', 'message', 'admin', null, null, null, '֪ͨ����˵�');
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (108, '��־����', 1, 9, 'log', null, 1, 0, 'M', '0', '0', '0', null, 'log', 'admin', null, null, null, '��־����˵�');
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (109, '�����û�', 2, 1, 'online', 'monitor/online/index', 1, 0, 'C', '0', '0', '0', 'monitor:online:list', 'online', 'admin', null, null, null, '�����û��˵�');
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (110, '��ʱ����', 2, 2, 'job', 'monitor/job/index', 1, 0, 'C', '0', '0', '0', 'monitor:job:list', 'job', 'admin', null, null, null, '��ʱ����˵�');
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (111, '���ݼ��', 2, 3, 'druid', 'monitor/druid/index', 1, 0, 'C', '0', '0', '0', 'monitor:druid:list', 'druid', 'admin', null, null, null, '���ݼ�ز˵�');
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (112, '������', 2, 4, 'server', 'monitor/server/index', 1, 0, 'C', '0', '0', '0', 'monitor:server:list', 'server', 'admin', null, null, null, '�����ز˵�');
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (113, '������', 2, 5, 'cache', 'monitor/cache/index', 1, 0, 'C', '0', '0', '0', 'monitor:cache:list', 'redis', 'admin', null, null, null, '�����ز˵�');
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (114, '������', 3, 1, 'build', 'tool/build/index', 1, 0, 'C', '0', '0', '0', 'tool:build:list', 'build', 'admin', null, null, null, '�������˵�');
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (115, '��������', 3, 2, 'gen', 'tool/gen/index', 1, 0, 'C', '0', '0', '0', 'tool:gen:list', 'code', 'admin', null, null, null, '�������ɲ˵�');
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (116, 'ϵͳ�ӿ�', 3, 3, 'swagger', 'tool/swagger/index', 1, 0, 'C', '0', '0', '0', 'tool:swagger:list', 'swagger', 'admin', null, null, null, 'ϵͳ�ӿڲ˵�');
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (121, '��Ա����', 1, 11, 'group', 'system/group/index', 1, 0, 'C', '0', '0', null, 'system:group:list', 'group', 'admin', to_date('28-01-2023 19:40:40', 'dd-mm-yyyy hh24:mi:ss'), null, null, '��Ա����˵�');
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (220, '������־', 108, 1, 'operlog', 'monitor/operlog/index', 1, 0, 'C', '0', '0', '0', 'monitor:operlog:list', 'form', 'admin', null, null, null, '������־�˵�');
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (230, '��¼��־', 108, 2, 'logininfor', 'monitor/logininfor/index', 1, 0, 'C', '0', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', null, null, null, '��¼��־�˵�');
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (300, 'ͼƬ����', 8, 1, 'photo', 'fms/photo/index', 1, 0, 'C', '0', '0', null, 'fms:photo:list', 'photo', 'admin', to_date('14-12-2021 15:24:20', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'ͼƬ����˵�');
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (305, '�ļ�����', 8, 1, 'files', 'fms/files/index', 1, 0, 'C', '0', '0', null, 'fms:files:list', 'film', 'admin', to_date('17-12-2021 23:15:50', 'dd-mm-yyyy hh24:mi:ss'), null, null, '�ļ�����˵�');
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (320, '������', 9, 1, 'examtype', 'questions/examtype/index', 1, 0, 'C', '0', '0', null, 'questions:examtype:list', 'examtype', 'admin', to_date('14-12-2022 14:28:22', 'dd-mm-yyyy hh24:mi:ss'), null, null, '���Է���˵�');
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (325, '�������', 9, 2, 'questionsbank', 'questions/questionsbank/index', 1, 0, 'C', '0', '0', null, 'questions:questionsbank:list', 'questionsbank', 'admin', to_date('19-12-2022 14:10:57', 'dd-mm-yyyy hh24:mi:ss'), null, null, '������˵�');
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (330, '������Ŀ����', 9, 5, 'examquestions', 'questions/examquestions/index', 1, 0, 'C', '0', '0', null, 'questions:examquestions:list', 'examquestions', 'admin', to_date('27-12-2022 20:08:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '������Ŀ����˵�');
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (350, '��������', 10, 1, 'examtask', 'exam/examtask/index', 1, 0, 'C', '0', '0', null, 'exam:examtask:list', 'examtask', 'admin', to_date('06-01-2023 13:53:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '�������Բ˵�');
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (360, '��ʼ����', 11, 1, 'examstart', 'onlineexam/examstart/index', 1, 0, 'C', '0', '0', null, 'onlineexam:data:list', 'examstart', 'admin', to_date('06-01-2023 13:53:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '��ʼ���Բ˵�');
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1001, '�û���ѯ', 100, 1, null, null, 1, 0, 'F', '0', '0', '0', 'system:user:query', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1002, '�û�����', 100, 2, null, null, 1, 0, 'F', '0', '0', '0', 'system:user:add', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1003, '�û��޸�', 100, 3, null, null, 1, 0, 'F', '0', '0', '0', 'system:user:edit', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1004, '�û�ɾ��', 100, 4, null, null, 1, 0, 'F', '0', '0', '0', 'system:user:remove', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1005, '�û�����', 100, 5, null, null, 1, 0, 'F', '0', '0', '0', 'system:user:export', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1006, '�û�����', 100, 6, null, null, 1, 0, 'F', '0', '0', '0', 'system:user:import', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1007, '��������', 100, 7, null, null, 1, 0, 'F', '0', '0', '0', 'system:user:resetPwd', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1008, '��ɫ��ѯ', 101, 1, null, null, 1, 0, 'F', '0', '0', '0', 'system:role:query', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1009, '��ɫ����', 101, 2, null, null, 1, 0, 'F', '0', '0', '0', 'system:role:add', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1010, '��ɫ�޸�', 101, 3, null, null, 1, 0, 'F', '0', '0', '0', 'system:role:edit', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1011, '��ɫɾ��', 101, 4, null, null, 1, 0, 'F', '0', '0', '0', 'system:role:remove', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1012, '��ɫ����', 101, 5, null, null, 1, 0, 'F', '0', '0', '0', 'system:role:export', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1013, '�˵���ѯ', 102, 1, null, null, 1, 0, 'F', '0', '0', '0', 'system:menu:query', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1014, '�˵�����', 102, 2, null, null, 1, 0, 'F', '0', '0', '0', 'system:menu:add', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1015, '�˵��޸�', 102, 3, null, null, 1, 0, 'F', '0', '0', '0', 'system:menu:edit', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1016, '�˵�ɾ��', 102, 4, null, null, 1, 0, 'F', '0', '0', '0', 'system:menu:remove', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1017, '���Ų�ѯ', 103, 1, null, null, 1, 0, 'F', '0', '0', '0', 'system:dept:query', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1018, '��������', 103, 2, null, null, 1, 0, 'F', '0', '0', '0', 'system:dept:add', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1019, '�����޸�', 103, 3, null, null, 1, 0, 'F', '0', '0', '0', 'system:dept:edit', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1020, '����ɾ��', 103, 4, null, null, 1, 0, 'F', '0', '0', '0', 'system:dept:remove', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1021, '��λ��ѯ', 104, 1, null, null, 1, 0, 'F', '0', '0', '0', 'system:post:query', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1022, '��λ����', 104, 2, null, null, 1, 0, 'F', '0', '0', '0', 'system:post:add', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1023, '��λ�޸�', 104, 3, null, null, 1, 0, 'F', '0', '0', '0', 'system:post:edit', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1024, '��λɾ��', 104, 4, null, null, 1, 0, 'F', '0', '0', '0', 'system:post:remove', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1025, '��λ����', 104, 5, null, null, 1, 0, 'F', '0', '0', '0', 'system:post:export', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1026, '�ֵ��ѯ', 105, 1, '#', null, 1, 0, 'F', '0', '0', '0', 'system:dict:query', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1027, '�ֵ�����', 105, 2, '#', null, 1, 0, 'F', '0', '0', '0', 'system:dict:add', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1028, '�ֵ��޸�', 105, 3, '#', null, 1, 0, 'F', '0', '0', '0', 'system:dict:edit', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1029, '�ֵ�ɾ��', 105, 4, '#', null, 1, 0, 'F', '0', '0', '0', 'system:dict:remove', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1030, '�ֵ䵼��', 105, 5, '#', null, 1, 0, 'F', '0', '0', '0', 'system:dict:export', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1031, '������ѯ', 106, 1, '#', null, 1, 0, 'F', '0', '0', '0', 'system:config:query', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1032, '��������', 106, 2, '#', null, 1, 0, 'F', '0', '0', '0', 'system:config:add', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1033, '�����޸�', 106, 3, '#', null, 1, 0, 'F', '0', '0', '0', 'system:config:edit', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1034, '����ɾ��', 106, 4, '#', null, 1, 0, 'F', '0', '0', '0', 'system:config:remove', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1035, '��������', 106, 5, '#', null, 1, 0, 'F', '0', '0', '0', 'system:config:export', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1036, '�����ѯ', 107, 1, '#', null, 1, 0, 'F', '0', '0', '0', 'system:notice:query', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1037, '��������', 107, 2, '#', null, 1, 0, 'F', '0', '0', '0', 'system:notice:add', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1038, '�����޸�', 107, 3, '#', null, 1, 0, 'F', '0', '0', '0', 'system:notice:edit', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1039, '����ɾ��', 107, 4, '#', null, 1, 0, 'F', '0', '0', '0', 'system:notice:remove', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1040, '������ѯ', 220, 1, '#', null, 1, 0, 'F', '0', '0', '0', 'monitor:operlog:query', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1041, '����ɾ��', 220, 2, '#', null, 1, 0, 'F', '0', '0', '0', 'monitor:operlog:remove', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1042, '��־����', 220, 4, '#', null, 1, 0, 'F', '0', '0', '0', 'monitor:operlog:export', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1043, '��¼��ѯ', 230, 1, '#', null, 1, 0, 'F', '0', '0', '0', 'monitor:logininfor:query', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1044, '��¼ɾ��', 230, 2, '#', null, 1, 0, 'F', '0', '0', '0', 'monitor:logininfor:remove', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1045, '��־����', 230, 3, '#', null, 1, 0, 'F', '0', '0', '0', 'monitor:logininfor:export', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1046, '���߲�ѯ', 109, 1, '#', null, 1, 0, 'F', '0', '0', '0', 'monitor:online:query', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1047, '����ǿ��', 109, 2, '#', null, 1, 0, 'F', '0', '0', '0', 'monitor:online:batchLogout', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1048, '����ǿ��', 109, 3, '#', null, 1, 0, 'F', '0', '0', '0', 'monitor:online:forceLogout', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1049, '�����ѯ', 110, 1, '#', null, 1, 0, 'F', '0', '0', '0', 'monitor:job:query', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1050, '��������', 110, 2, '#', null, 1, 0, 'F', '0', '0', '0', 'monitor:job:add', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1051, '�����޸�', 110, 3, '#', null, 1, 0, 'F', '0', '0', '0', 'monitor:job:edit', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1052, '����ɾ��', 110, 4, '#', null, 1, 0, 'F', '0', '0', '0', 'monitor:job:remove', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1053, '״̬�޸�', 110, 5, '#', null, 1, 0, 'F', '0', '0', '0', 'monitor:job:changeStatus', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1054, '���񵼳�', 110, 7, '#', null, 1, 0, 'F', '0', '0', '0', 'monitor:job:export', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1055, '���ɲ�ѯ', 115, 1, '#', null, 1, 0, 'F', '0', '0', '0', 'tool:gen:query', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1056, '�����޸�', 115, 2, '#', null, 1, 0, 'F', '0', '0', '0', 'tool:gen:edit', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1057, '����ɾ��', 115, 3, '#', null, 1, 0, 'F', '0', '0', '0', 'tool:gen:remove', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1058, '�������', 115, 2, '#', null, 1, 0, 'F', '0', '0', '0', 'tool:gen:import', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1059, 'Ԥ������', 115, 4, '#', null, 1, 0, 'F', '0', '0', '0', 'tool:gen:preview', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1060, '���ɴ���', 115, 5, '#', null, 1, 0, 'F', '0', '0', '0', 'tool:gen:code', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1061, '���ŵ���', 103, 5, null, null, 1, 0, 'F', '0', '0', '0', 'system:dept:wechatin', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1062, '�û�����', 100, 7, null, null, 1, 0, 'F', '0', '0', '0', 'system:user:wechatin', '#', 'admin', null, null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1080, '��Ա�����ѯ', 121, 1, '#', null, 1, 0, 'F', '0', '0', null, 'system:group:query', '#', 'admin', to_date('28-01-2023 20:02:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1081, '��Ա��������', 121, 2, '#', null, 1, 0, 'F', '0', '0', null, 'system:group:add', '#', 'admin', to_date('28-01-2023 20:02:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1082, '��Ա�����޸�', 121, 3, '#', null, 1, 0, 'F', '0', '0', null, 'system:group:edit', '#', 'admin', to_date('28-01-2023 20:02:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1083, '��Ա����ɾ��', 121, 4, '#', null, 1, 0, 'F', '0', '0', null, 'system:group:remove', '#', 'admin', to_date('28-01-2023 20:02:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1084, '��Ա���鵼��', 121, 5, '#', null, 1, 0, 'F', '0', '0', null, 'system:group:export', '#', 'admin', to_date('28-01-2023 20:02:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1390, 'ͼƬ�����ѯ', 300, 1, '#', null, 1, 0, 'F', '0', '0', null, 'fms:photo:query', '#', 'admin', to_date('14-12-2021 15:28:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1391, 'ͼƬ��������', 300, 2, '#', null, 1, 0, 'F', '0', '0', null, 'fms:photo:add', '#', 'admin', to_date('14-12-2021 15:28:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1392, 'ͼƬ�����޸�', 300, 3, '#', null, 1, 0, 'F', '0', '0', null, 'fms:photo:edit', '#', 'admin', to_date('14-12-2021 15:28:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1393, 'ͼƬ����ɾ��', 300, 4, '#', null, 1, 0, 'F', '0', '0', null, 'fms:photo:remove', '#', 'admin', to_date('14-12-2021 15:28:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1394, 'ͼƬ��������', 300, 5, '#', null, 1, 0, 'F', '0', '0', null, 'fms:photo:export', '#', 'admin', to_date('14-12-2021 15:28:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1420, '�ļ������ѯ', 305, 1, '#', null, 1, 0, 'F', '0', '0', null, 'fms:files:query', '#', 'admin', to_date('17-12-2021 23:18:56', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1421, '�ļ���������', 305, 2, '#', null, 1, 0, 'F', '0', '0', null, 'fms:files:add', '#', 'admin', to_date('17-12-2021 23:18:56', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1422, '�ļ������޸�', 305, 3, '#', null, 1, 0, 'F', '0', '0', null, 'fms:files:edit', '#', 'admin', to_date('17-12-2021 23:18:56', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1423, '�ļ�����ɾ��', 305, 4, '#', null, 1, 0, 'F', '0', '0', null, 'fms:files:remove', '#', 'admin', to_date('17-12-2021 23:18:56', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1424, '�ļ���������', 305, 5, '#', null, 1, 0, 'F', '0', '0', null, 'fms:files:export', '#', 'admin', to_date('17-12-2021 23:18:57', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1501, '���Է����ѯ', 320, 1, '#', null, 1, 0, 'F', '0', '0', null, 'questions:examtype:query', '#', 'admin', to_date('14-12-2022 14:32:15', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1502, '���Է�������', 320, 2, '#', null, 1, 0, 'F', '0', '0', null, 'questions:examtype:add', '#', 'admin', to_date('14-12-2022 14:32:15', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1503, '���Է����޸�', 320, 3, '#', null, 1, 0, 'F', '0', '0', null, 'questions:examtype:edit', '#', 'admin', to_date('14-12-2022 14:32:15', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1504, '���Է���ɾ��', 320, 4, '#', null, 1, 0, 'F', '0', '0', null, 'questions:examtype:remove', '#', 'admin', to_date('14-12-2022 14:32:16', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1505, '���Է��ർ��', 320, 5, '#', null, 1, 0, 'F', '0', '0', null, 'questions:examtype:export', '#', 'admin', to_date('14-12-2022 14:32:16', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1525, '�������ѯ', 325, 1, '#', null, 1, 0, 'F', '0', '0', null, 'questions:questionsbank:query', '#', 'admin', to_date('19-12-2022 14:10:57', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1526, '����������', 325, 2, '#', null, 1, 0, 'F', '0', '0', null, 'questions:questionsbank:add', '#', 'admin', to_date('19-12-2022 14:10:57', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1527, '�������޸�', 325, 3, '#', null, 1, 0, 'F', '0', '0', null, 'questions:questionsbank:edit', '#', 'admin', to_date('19-12-2022 14:10:58', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1528, '������ɾ��', 325, 4, '#', null, 1, 0, 'F', '0', '0', null, 'questions:questionsbank:remove', '#', 'admin', to_date('19-12-2022 14:10:58', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1529, '��������', 325, 5, '#', null, 1, 0, 'F', '0', '0', null, 'questions:questionsbank:export', '#', 'admin', to_date('19-12-2022 14:10:58', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1541, '������Ŀ��ѯ', 330, 1, '#', null, 1, 0, 'F', '0', '0', null, 'questions:examquestions:query', '#', 'admin', to_date('27-12-2022 20:10:55', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1542, '������Ŀ����', 330, 2, '#', null, 1, 0, 'F', '0', '0', null, 'questions:examquestions:add', '#', 'admin', to_date('27-12-2022 20:10:55', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1543, '������Ŀ�޸�', 330, 3, '#', null, 1, 0, 'F', '0', '0', null, 'questions:examquestions:edit', '#', 'admin', to_date('27-12-2022 20:10:56', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1544, '������Ŀɾ��', 330, 4, '#', null, 1, 0, 'F', '0', '0', null, 'questions:examquestions:remove', '#', 'admin', to_date('27-12-2022 20:10:56', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1545, '������Ŀ����', 330, 5, '#', null, 1, 0, 'F', '0', '0', null, 'questions:examquestions:export', '#', 'admin', to_date('27-12-2022 20:10:56', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1601, '�������Բ�ѯ', 350, 1, '#', null, 1, 0, 'F', '0', '0', null, 'exam:examtask:query', '#', 'admin', to_date('06-01-2023 13:56:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1602, '������������', 350, 2, '#', null, 1, 0, 'F', '0', '0', null, 'exam:examtask:add', '#', 'admin', to_date('06-01-2023 13:56:01', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1603, '���������޸�', 350, 3, '#', null, 1, 0, 'F', '0', '0', null, 'exam:examtask:edit', '#', 'admin', to_date('06-01-2023 13:56:01', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1604, '��������ɾ��', 350, 4, '#', null, 1, 0, 'F', '0', '0', null, 'exam:examtask:remove', '#', 'admin', to_date('06-01-2023 13:56:01', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into SYS_MENU (menu_id, menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, del_flag, perms, icon, create_by, create_time, update_by, update_time, remark)
values (1605, '�������Ե���', 350, 5, '#', null, 1, 0, 'F', '0', '0', null, 'exam:examtask:export', '#', 'admin', to_date('06-01-2023 13:56:01', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
commit;


-- ----------------------------
-- ��ʼ��-�û��ͽ�ɫ����������
-- ----------------------------
insert into SYS_USER_ROLE (user_id, role_id)
values (1, 1);
insert into SYS_USER_ROLE (user_id, role_id)
values (2, 2);
insert into SYS_USER_ROLE (user_id, role_id)
values (3, 2);

-- ----------------------------
-- ��ʼ��-��ɫ�Ͳ˵�����������
-- ----------------------------
insert into sys_role_menu values ('2', '1');
insert into sys_role_menu values ('2', '2');
insert into sys_role_menu values ('2', '3');
insert into sys_role_menu values ('2', '4');
insert into sys_role_menu values ('2', '100');
insert into sys_role_menu values ('2', '101');
insert into sys_role_menu values ('2', '102');
insert into sys_role_menu values ('2', '103');
insert into sys_role_menu values ('2', '104');
insert into sys_role_menu values ('2', '105');
insert into sys_role_menu values ('2', '106');
insert into sys_role_menu values ('2', '107');
insert into sys_role_menu values ('2', '108');
insert into sys_role_menu values ('2', '109');
insert into sys_role_menu values ('2', '110');
insert into sys_role_menu values ('2', '111');
insert into sys_role_menu values ('2', '112');
insert into sys_role_menu values ('2', '113');
insert into sys_role_menu values ('2', '114');
insert into sys_role_menu values ('2', '115');
insert into sys_role_menu values ('2', '116');
insert into sys_role_menu values ('2', '500');
insert into sys_role_menu values ('2', '501');
insert into sys_role_menu values ('2', '1000');
insert into sys_role_menu values ('2', '1001');
insert into sys_role_menu values ('2', '1002');
insert into sys_role_menu values ('2', '1003');
insert into sys_role_menu values ('2', '1004');
insert into sys_role_menu values ('2', '1005');
insert into sys_role_menu values ('2', '1006');
insert into sys_role_menu values ('2', '1007');
insert into sys_role_menu values ('2', '1008');
insert into sys_role_menu values ('2', '1009');
insert into sys_role_menu values ('2', '1010');
insert into sys_role_menu values ('2', '1011');
insert into sys_role_menu values ('2', '1012');
insert into sys_role_menu values ('2', '1013');
insert into sys_role_menu values ('2', '1014');
insert into sys_role_menu values ('2', '1015');
insert into sys_role_menu values ('2', '1016');
insert into sys_role_menu values ('2', '1017');
insert into sys_role_menu values ('2', '1018');
insert into sys_role_menu values ('2', '1019');
insert into sys_role_menu values ('2', '1020');
insert into sys_role_menu values ('2', '1021');
insert into sys_role_menu values ('2', '1022');
insert into sys_role_menu values ('2', '1023');
insert into sys_role_menu values ('2', '1024');
insert into sys_role_menu values ('2', '1025');
insert into sys_role_menu values ('2', '1026');
insert into sys_role_menu values ('2', '1027');
insert into sys_role_menu values ('2', '1028');
insert into sys_role_menu values ('2', '1029');
insert into sys_role_menu values ('2', '1030');
insert into sys_role_menu values ('2', '1031');
insert into sys_role_menu values ('2', '1032');
insert into sys_role_menu values ('2', '1033');
insert into sys_role_menu values ('2', '1034');
insert into sys_role_menu values ('2', '1035');
insert into sys_role_menu values ('2', '1036');
insert into sys_role_menu values ('2', '1037');
insert into sys_role_menu values ('2', '1038');
insert into sys_role_menu values ('2', '1039');
insert into sys_role_menu values ('2', '1040');
insert into sys_role_menu values ('2', '1041');
insert into sys_role_menu values ('2', '1042');
insert into sys_role_menu values ('2', '1043');
insert into sys_role_menu values ('2', '1044');
insert into sys_role_menu values ('2', '1045');
insert into sys_role_menu values ('2', '1046');
insert into sys_role_menu values ('2', '1047');
insert into sys_role_menu values ('2', '1048');
insert into sys_role_menu values ('2', '1049');
insert into sys_role_menu values ('2', '1050');
insert into sys_role_menu values ('2', '1051');
insert into sys_role_menu values ('2', '1052');
insert into sys_role_menu values ('2', '1053');
insert into sys_role_menu values ('2', '1054');
insert into sys_role_menu values ('2', '1055');
insert into sys_role_menu values ('2', '1056');
insert into sys_role_menu values ('2', '1057');
insert into sys_role_menu values ('2', '1058');
insert into sys_role_menu values ('2', '1059');
insert into sys_role_menu values ('2', '1060');

-- ----------------------------
-- ��ʼ��-��ɫ�Ͳ��Ź���������
-- ----------------------------
insert into sys_role_dept values ('2', '100');
insert into sys_role_dept values ('2', '101');
insert into sys_role_dept values ('2', '105');

-- ----------------------------
-- ��ʼ��-�û����λ����������
-- ----------------------------
insert into sys_user_post values ('1', '1');
insert into sys_user_post values ('2', '2');

-- ----------------------------
-- ��ʼ��-�ֵ����ͱ�
-- ----------------------------
insert into sys_dict_type values(1,  '�û��Ա�', 'sys_user_sex',        '0', 'admin', sysdate, '', null, '�û��Ա��б�');
insert into sys_dict_type values(2,  '�˵�״̬', 'sys_show_hide',       '0', 'admin', sysdate, '', null, '�˵�״̬�б�');
insert into sys_dict_type values(3,  'ϵͳ����', 'sys_normal_disable',  '0', 'admin', sysdate, '', null, 'ϵͳ�����б�');
insert into sys_dict_type values(4,  '����״̬', 'sys_job_status',      '0', 'admin', sysdate, '', null, '����״̬�б�');
insert into sys_dict_type values(5,  '�������', 'sys_job_group',       '0', 'admin', sysdate, '', null, '��������б�');
insert into sys_dict_type values(6,  'ϵͳ�Ƿ�', 'sys_yes_no',          '0', 'admin', sysdate, '', null, 'ϵͳ�Ƿ��б�');
insert into sys_dict_type values(7,  '֪ͨ����', 'sys_notice_type',     '0', 'admin', sysdate, '', null, '֪ͨ�����б�');
insert into sys_dict_type values(8,  '֪ͨ״̬', 'sys_notice_status',   '0', 'admin', sysdate, '', null, '֪ͨ״̬�б�');
insert into sys_dict_type values(9,  '��������', 'sys_oper_type',       '0', 'admin', sysdate, '', null, '���������б�');
insert into sys_dict_type values(10, 'ϵͳ״̬', 'sys_common_status',   '0', 'admin', sysdate, '', null, '��¼״̬�б�');

-- ----------------------------
-- ��ʼ��-�ֵ����ݱ�
-- ----------------------------
insert into sys_dict_data values(1,  1,  '��',       '0',       'sys_user_sex',        '',   '',        'Y', '0', 'admin', sysdate, '', null, '�Ա���');
insert into sys_dict_data values(2,  2,  'Ů',       '1',       'sys_user_sex',        '',   '',        'N', '0', 'admin', sysdate, '', null, '�Ա�Ů');
insert into sys_dict_data values(3,  3,  'δ֪',     '2',       'sys_user_sex',        '',   '',        'N', '0', 'admin', sysdate, '', null, '�Ա�δ֪');
insert into sys_dict_data values(4,  1,  '��ʾ',     '0',       'sys_show_hide',       '',   'primary', 'Y', '0', 'admin', sysdate, '', null, '��ʾ�˵�');
insert into sys_dict_data values(5,  2,  '����',     '1',       'sys_show_hide',       '',   'danger',  'N', '0', 'admin', sysdate, '', null, '���ز˵�');
insert into sys_dict_data values(6,  1,  '����',     '0',       'sys_normal_disable',  '',   'primary', 'Y', '0', 'admin', sysdate, '', null, '����״̬');
insert into sys_dict_data values(7,  2,  'ͣ��',     '1',       'sys_normal_disable',  '',   'danger',  'N', '0', 'admin', sysdate, '', null, 'ͣ��״̬');
insert into sys_dict_data values(8,  1,  '����',     '0',       'sys_job_status',      '',   'primary', 'Y', '0', 'admin', sysdate, '', null, '����״̬');
insert into sys_dict_data values(9,  2,  '��ͣ',     '1',       'sys_job_status',      '',   'danger',  'N', '0', 'admin', sysdate, '', null, 'ͣ��״̬');
insert into sys_dict_data values(10, 1,  'Ĭ��',     'DEFAULT', 'sys_job_group',       '',   '',        'Y', '0', 'admin', sysdate, '', null, 'Ĭ�Ϸ���');
insert into sys_dict_data values(11, 2,  'ϵͳ',     'SYSTEM',  'sys_job_group',       '',   '',        'N', '0', 'admin', sysdate, '', null, 'ϵͳ����');
insert into sys_dict_data values(12, 1,  '��',       'Y',       'sys_yes_no',          '',   'primary', 'Y', '0', 'admin', sysdate, '', null, 'ϵͳĬ����');
insert into sys_dict_data values(13, 2,  '��',       'N',       'sys_yes_no',          '',   'danger',  'N', '0', 'admin', sysdate, '', null, 'ϵͳĬ�Ϸ�');
insert into sys_dict_data values(14, 1,  '֪ͨ',     '1',       'sys_notice_type',     '',   'warning', 'Y', '0', 'admin', sysdate, '', null, '֪ͨ');
insert into sys_dict_data values(15, 2,  '����',     '2',       'sys_notice_type',     '',   'success', 'N', '0', 'admin', sysdate, '', null, '����');
insert into sys_dict_data values(16, 1,  '����',     '0',       'sys_notice_status',   '',   'primary', 'Y', '0', 'admin', sysdate, '', null, '����״̬');
insert into sys_dict_data values(17, 2,  '�ر�',     '1',       'sys_notice_status',   '',   'danger',  'N', '0', 'admin', sysdate, '', null, '�ر�״̬');
insert into sys_dict_data values(18, 1,  '����',     '1',       'sys_oper_type',       '',   'info',    'N', '0', 'admin', sysdate, '', null, '��������');
insert into sys_dict_data values(19, 2,  '�޸�',     '2',       'sys_oper_type',       '',   'info',    'N', '0', 'admin', sysdate, '', null, '�޸Ĳ���');
insert into sys_dict_data values(20, 3,  'ɾ��',     '3',       'sys_oper_type',       '',   'danger',  'N', '0', 'admin', sysdate, '', null, 'ɾ������');
insert into sys_dict_data values(21, 4,  '��Ȩ',     '4',       'sys_oper_type',       '',   'primary', 'N', '0', 'admin', sysdate, '', null, '��Ȩ����');
insert into sys_dict_data values(22, 5,  '����',     '5',       'sys_oper_type',       '',   'warning', 'N', '0', 'admin', sysdate, '', null, '��������');
insert into sys_dict_data values(23, 6,  '����',     '6',       'sys_oper_type',       '',   'warning', 'N', '0', 'admin', sysdate, '', null, '�������');
insert into sys_dict_data values(24, 7,  'ǿ��',     '7',       'sys_oper_type',       '',   'danger',  'N', '0', 'admin', sysdate, '', null, 'ǿ�˲���');
insert into sys_dict_data values(25, 8,  '���ɴ���', '8',       'sys_oper_type',       '',   'warning', 'N', '0', 'admin', sysdate, '', null, '���ɲ���');
insert into sys_dict_data values(26, 9,  '�������', '9',       'sys_oper_type',       '',   'danger',  'N', '0', 'admin', sysdate, '', null, '��ղ���');
insert into sys_dict_data values(27, 1,  '�ɹ�',     '0',       'sys_common_status',   '',   'primary', 'N', '0', 'admin', sysdate, '', null, '����״̬');
insert into sys_dict_data values(28, 2,  'ʧ��',     '1',       'sys_common_status',   '',   'danger',  'N', '0', 'admin', sysdate, '', null, 'ͣ��״̬');

-- ----------------------------
-- ��ʼ��-�������ñ�
-- ----------------------------
insert into sys_config values(1, '�����ҳ-Ĭ��Ƥ����ʽ����', 'sys.index.skinName',            'skin-blue',     'Y', 'admin', sysdate, '', null, '��ɫ skin-blue����ɫ skin-green����ɫ skin-purple����ɫ skin-red����ɫ skin-yellow' );
insert into sys_config values(2, '�û�����-�˺ų�ʼ����',     'sys.user.initPassword',         '123456',        'Y', 'admin', sysdate, '', null, '��ʼ������ 123456' );
insert into sys_config values(3, '�����ҳ-���������',       'sys.index.sideTheme',           'theme-dark',    'Y', 'admin', sysdate, '', null, '��ɫ����theme-dark��ǳɫ����theme-light' );
insert into sys_config values(4, '�˺�����-��֤�뿪��',       'sys.account.captchaOnOff',      'true',          'Y', 'admin', sysdate, '', null, '�Ƿ�����¼��֤�빦�ܣ�true������false�رգ�');

-- ----------------------------
-- ��ʼ��-������Ϣ������
-- ----------------------------
insert into sys_notice values('1', '��ܰ���ѣ�2018-07-01 �°汾������', '2', '�°汾����', '0', 'admin', sysdate, '', null, '����Ա');
insert into sys_notice values('2', 'ά��֪ͨ��2018-07-01 ϵͳ�賿ά��', '1', 'ά������',   '0', 'admin', sysdate, '', null, '����Ա');
commit;

