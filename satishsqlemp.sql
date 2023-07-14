select * from satish;
select dept from satish
where job in('clerk','Manager')
group by dept,job
Having (job='clerk' and count(*)>2) or
(job='Manager' and count(*)>3);
--duplicate rows
SELECT *
FROM satish
WHERE (num, ename) IN (
    SELECT num, ename
    FROM satish
    GROUP BY num, ename
    HAVING COUNT(*) > 1
);
--Max salary
select * from satish
order by sal ASC
Limit 1 offset 3;
--count no of departments
select count(distinct job) from satish;
--count no of emp hired in all dept
select ename from satish 
group by ename
Having count(distinct dept)= (select count(*) from dept);
--ename hired date
--display salary
select ename ,
Case 
when sal>1500 then CAST(sal AS TEXT)
when sal=1500 then '1500'
Else 'Below 1500'
End 
As salary 
From satish;
--avg salary
select sal,avg(sal) from satish group by sal;
--no of diff emps and diff dpts
select Distinct(ename,dept) from satish;
--difference
select max(sal)-Min(sal) as difference from satish;
--Find all the departments having more than 3 employees. 
select dept from satish
Group By dept
Having count(*)>=3;
--
select count(*),count(Distinct ename),avg(sal) from satish;
--
select * from satish;
--
select ename from satish
where sal>=1000
and sal in(
select Min(sal) from satish group by mgr);
select ename, To_CHAR(hiredate,'FMMonth, FMDDth YYYY') from satish;
--
select sal,sal-Avg(sal) OVER() As diff from satish;
SELECT sal, sal-(select Avg(sal) from satish) AS salary_difference
FROM satish;
select dept,job,avg(sal) from satish 
group by dept,job;
select ename from satish
where sal>=1000
and sal in(select min(sal) from satish group by mgr;
--select ename from satish group by mgr; 

	
select ename from satish
where sal not in(
select min(sal) from satish where dept=30);
select ename from satish
where dept=30 and sal>Min(sal);
select ename from satish where dept=30 and sal>
		  select min(sal) from satish where dept=30;
	select job from satish order by sal limit 1;	   
		   
		   create table govindhu as select * from satish where dept=10;
		   select * from govindhu;
		   
		   ---
		   
		   SELECT column_name, data_type
FROM satish.columns
WHERE table_schema = ''
  AND table_name = 'satish';
		   describe satish;
		   \d satish;
select dept,sal from satish where sal in(select max(sal) from satish) ;
