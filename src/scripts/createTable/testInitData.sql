INSERT t_bd_shop(fid,fname,fnumber,fparentid)
VALUES('shop1','1号店','shop1','0');

INSERT t_pm_user(fid,fname,fnumber,fshopid,ftype,fpassword)
VALUES('user1','店铺1管理员','shop1admin','1',10,'');

INSERT t_pm_userrole(fid,froleid,fuserid)
VALUES('ur1','role1','user1');

INSERT t_pm_role(fid,fname,fnumber,fshopid,fdescription) 
VALUES('role1','管理员','bizadmin','0','业务管理员');

INSERT t_pm_roleperm(fid,froleid,fpermid)
VALUES('rp1','role1','permitem1');

INSERT t_pm_roleperm(fid,froleid,fpermid)
VALUES('rp1','role1','permitem2');

INSERT t_pm_permitem(fid,fname,fnumber,fui,falias,flongnumber,ftype,fparentid,fisleaf,fdescription) 
VALUES('permitem1','角色菜单','role_menu','','','role_menu',1,'',0,'');

INSERT t_pm_permitem(fid,fname,fnumber,fui,falias,flongnumber,ftype,fparentid,fisleaf,fdescription) 
VALUES('permitem2','角色查看权限','role_view','','','role_menu!role_view',1,'permitem1',1,'');

