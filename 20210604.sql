create  database three20210603 default charset=utf8;
use three20210603;
create table student(
`name` varchar(20),
sex char,
age int,
address varchar(100)
);
insert into student value('张三','男',20,"河南省郑州市"),
('张三丰','男',50,"河南省少林寺"),('张无忌','男',18,"河南省洛阳市"),('王三','男',30,"河南省郑州市"), ('王无','男',20,"河南省郑州市"),
('王峰','男',31,"河南省安阳市");
insert into student values("任盈盈",'女',17,"日月神教黑木崖"),
("许盈",'女',20,"华山");
insert into student values("__q",'女',23,"日月神教")
select*from student;

# 模糊查询  %  通配符  零个或者多个字符    _统配一个字符
select*from student where `name` like "张%";
select*from student where `name` like "_盈";
select*from student where `name` like "_盈_";
select*from student where `name` like "%盈%";
select*from student where `name` like "王%";


select*from student where `name` like "`_`%";

# between  and   什么什么之间 
注意事项：
	使用between and  可以提高语句的简洁度
	包含临界值
	两个临界值不要调换位置
	小的在前大的在后
	完全等于>=   <=
	
	# 查询一个人的地址 是河南省少林寺
	in 
	含义：
	用于判断某字段的值是否属于in表汇总大哥某一次昂的值
	特点 
  使用in提高简洁度
	in列表的值类型必须同意或者兼容
	in等价于 = 
	
	select* from where address
select * from student where  age between 18 and 20;

select avg(age) from student;
select count(*) from student;

select Max(age) from student;
select Min(age) from student;
select sum(age) from student;


create table score(
	sid int,
	cid int,
	grade  int
);
insert into score values(1 , 201 , 95),(2,202,86),(3,203,76);
select*from score;

insert into score value(1,202,98),(1,203,97),(2,201,80),(2,203,79),
(3,201,79),(3,202,86);
select cid, avg(grade)from score group by cid;

select cid, avg(grade)from score group by sid;


select cid, avg(grade)from score group by cid having avg(grade) >81;

# group by 和 having 一块的

select cid, avg(grade)from score group by cid having avg(grade) >84 order by avg(grade) desc;




