SELECT * FROM demonodejs.user;
SELECT * FROM demonodejs.project;
SELECT * FROM demonodejs.work;
SELECT * FROM demonodejs.plan;

INSERT INTO `demonodejs`.`project`
(`createdAt`,
`updatedAt`,
`name`,
`startDate`)
VALUES
(current_date(),
current_date(),
'Business',
current_date());

INSERT INTO `demonodejs`.`project`
(`createdAt`,
`updatedAt`,
`name`,
`startDate`)
VALUES
(current_date(),
current_date(),
'Economy',
current_date());


INSERT INTO `demonodejs`.`project_attends__user_projects`
(`project_attends`,`user_projects`)VALUES(1,1);

INSERT INTO `demonodejs`.`project_attends__user_projects`
(`project_attends`,`user_projects`)VALUES(2,1);

INSERT INTO `demonodejs`.`work`
(`createdAt`,`updatedAt`,`title`,`workLoad`,`completeDate`,`owner`,`project`)
VALUES(current_date(),current_date(),'Design',5.5,null,1,1);

INSERT INTO `demonodejs`.`work`
(`createdAt`,`updatedAt`,`title`,`workLoad`,`completeDate`,`owner`,`project`)
VALUES(current_date(),current_date(),'Code',5.5,null,1,1);

INSERT INTO `demonodejs`.`work`
(`createdAt`,`updatedAt`,`title`,`workLoad`,`completeDate`,`owner`,`project`)
VALUES(current_date(),current_date(),'Test',5.5,null,1,1);

INSERT INTO `demonodejs`.`work`
(`createdAt`,`updatedAt`,`title`,`workLoad`,`completeDate`,`owner`,`project`)
VALUES(current_date(),current_date(),'Deloy',5.5,null,1,1);



INSERT INTO `demonodejs`.`plan`
(`createdAt`,`updatedAt`,`title`,`workLoad`,`workDate`,`owner`,`project`)
VALUES(current_date(),current_date(),'Code',5.5,null,1,1);

INSERT INTO `demonodejs`.`plan`
(`createdAt`,`updatedAt`,`title`,`workLoad`,`workDate`,`owner`,`project`)
VALUES(current_date(),current_date(),'Review',5.5,null,1,1);


INSERT INTO `demonodejs`.`plan`
(`createdAt`,`updatedAt`,`title`,`workLoad`,`workDate`,`owner`,`project`)
VALUES(current_date(),current_date(),'Code',5.5,null,1,2);

INSERT INTO `demonodejs`.`plan`
(`createdAt`,`updatedAt`,`title`,`workLoad`,`workDate`,`owner`,`project`)
VALUES(current_date(),current_date(),'Test',5.5,current_date(),1,2);