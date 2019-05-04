INSERT INTO `auth_function` VALUES ('11', '基础档案', 'jichudangan', null, null, '1', '0', null);
INSERT INTO `auth_function` VALUES ('112', '收派标准', 'standard', null, 'page_base_standard.action', '1', '1', '11');
INSERT INTO `auth_function` VALUES ('113', '取派员设置', 'staff', null, 'page_base_staff.action', '1', '2', '11');
INSERT INTO `auth_function` VALUES ('114', '区域设置', 'region', null, 'page_base_region.action', '1', '3', '11');
INSERT INTO `auth_function` VALUES ('115', '管理分区', 'subarea', null, 'page_base_subarea.action', '1', '4', '11');
INSERT INTO `auth_function` VALUES ('116', '管理定区/调度排班', 'decidedzone', null, 'page_base_decidedzone.action', '1', '5', '11');
INSERT INTO `auth_function` VALUES ('12', '受理', 'shouli', null, null, '1', '1', null);
INSERT INTO `auth_function` VALUES ('121', '业务受理', 'noticebill', null, 'page_qupai_noticebill_add.action', '1', '0', '12');
INSERT INTO `auth_function` VALUES ('122', '工作单快速录入', 'quickworkordermanage', null, 'page_qupai_quickworkorder.action', '1', '1', '12');
INSERT INTO `auth_function` VALUES ('124', '工作单导入', 'workordermanageimport', null, 'page_qupai_workorderimport.action', '1', '3', '12');
INSERT INTO `auth_function` VALUES ('13', '调度', 'diaodu', null, null, '1', '2', null);
INSERT INTO `auth_function` VALUES ('131', '查台转单', 'changestaff', null, null, '1', '0', '13');
INSERT INTO `auth_function` VALUES ('132', '人工调度', 'personalassign', null, 'page_qupai_diaodu.action', '1', '1', '13');
INSERT INTO `auth_function` VALUES ('14', '物流配送流程管理', 'zhongzhuan', null, null, '1', '3', null);
INSERT INTO `auth_function` VALUES ('141', '启动配送流程', 'start', null, 'workOrderManageAction_list.action', '1', '0', '14');
INSERT INTO `auth_function` VALUES ('142', '查看个人任务', 'personaltask', null, 'taskAction_findPersonalTask.action', '1', '1', '14');
INSERT INTO `auth_function` VALUES ('143', '查看我的组任务', 'grouptask', null, 'taskAction_findGroupTask.action', '1', '2', '14');

//下面是所有的更新语句

UPDATE auth_function SET NAME='基础档案',CODE='jichudangan',generatemenu='1',zindex='0'WHERE id='11';
UPDATE auth_function SET NAME='受理',CODE='shouli',generatemenu='1',zindex='1' WHERE id='12';
UPDATE auth_function SET NAME='调度',CODE='diaodu',generatemenu='1',zindex='2' WHERE id='13';
UPDATE auth_function SET NAME='物流配送流程管理',CODE='zhongzhuan',generatemenu='1',zindex='3' WHERE id='14';
UPDATE auth_function SET NAME='收派标准',CODE='standard',generatemenu='1',page='page_base_standard.action',zindex='1',pid='11'WHERE id='112';
UPDATE auth_function SET NAME='取派员设置',CODE='staff',generatemenu='1',page='page_base_staff.action',zindex='2',pid='11' WHERE id='113';
UPDATE auth_function SET NAME='区域设置',CODE='region',generatemenu='1',page='page_base_region.action',zindex='3',pid='11' WHERE id='114';
UPDATE auth_function SET NAME='管理分区',CODE='subarea',generatemenu='1',page='page_base_subarea.action',zindex='4',pid='11' WHERE id='115';
UPDATE auth_function SET NAME='管理定区/调度排班',CODE='decidedzone',generatemenu='1',page='page_base_decidedzone.action',zindex='5',pid='11' WHERE id='116';
UPDATE auth_function SET NAME='业务受理',CODE='noticebill',generatemenu='1',page='page_qupai_noticebill_add.action',zindex='0',pid='12' WHERE id='121';
UPDATE auth_function SET NAME='工作单快速录入',CODE='quickworkordermanage',generatemenu='1',page='page_qupai_quickworkorder.action',zindex='1',pid='12' WHERE id='122';
UPDATE auth_function SET NAME='工作单导入',CODE='workordermanageimport',generatemenu='1',page='page_qupai_workorderimport.action',zindex='3',pid='12' WHERE id='124';
UPDATE auth_function SET NAME='查台转单',CODE='changestaff',generatemenu='1',zindex='0',pid='13' WHERE id='131';
UPDATE auth_function SET NAME='人工调度',CODE='personalassign',generatemenu='1',page='page_qupai_diaodu.action',zindex='1',pid='13' WHERE id='132';
UPDATE auth_function SET NAME='启动配送流程',CODE='start',generatemenu='1',page='workOrderManageAction_list.action',zindex='0',pid='14' WHERE id='141';
UPDATE auth_function SET NAME='查看个人任务',CODE='personaltask',generatemenu='1',page='taskAction_findPersonalTask.action',zindex='1',pid='14' WHERE id='142';
UPDATE auth_function SET NAME='查看我的组任务',CODE='grouptask',generatemenu='1',page='taskAction_findGroupTask.action',zindex='2',pid='14' WHERE id='143