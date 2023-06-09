drop database if exists queries_mysql;
create database if not exists queries_mysql;
use queries_mysql;

/*==============================================================*/
/* Table: DEPARTAMENTOS                                         */
/*==============================================================*/

create table DEPARTAMENTOS (
	   DEPTNO               int                  not null,
	   DNAME                varchar(15)          not null,
	   LOC                  varchar(10)          not null,
	   constraint PK_DEPARTAMENTOS primary key nonclustered (DEPTNO)
);


/*==============================================================*/
/* Table: EMPLEADOS                                             */
/*==============================================================*/
create table EMPLEADOS (
	   EMPNO                int                  not null,
	   DEPTNO               int                  null,
	   ENAME                varchar(10)          not null,
	   JOB                  varchar(20)          not null,
	   MGR                  int                  null,
	   HIREDATE             datetime             not null,
	   SAL                  int                  not null,
	   COMM                 int                  null,
	   constraint PK_EMPLEADOS primary key nonclustered (EMPNO)
);

/*==========================================================*/
/* Index: TIENE_FK                                              */
/*==============================================================*/
create index TIENE_FK on EMPLEADOS (
	DEPTNO ASC
);

alter table EMPLEADOS
   add constraint FK_EMPLEADO_TIENE_DEPARTAM foreign key (DEPTNO)
      references DEPARTAMENTOS (DEPTNO);


insert into DEPARTAMENTOS values 
(10, 'ACCOUNTING', 'NEW YORK'),
(20, 'RESEARCH', 'DALLAS'),
(30, 'SALES', 'CHICAGO'),
(40, 'OPERATIONS','BOSTON');

insert into EMPLEADOS (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) values
(7369, 'SMITH', 'CLERK', 7902, '1980/12/17', 800, null, 20),
(7499, 'ALLEN', 'SALESMAN', 7698, '1981/02/20', 1600, 300, 30),
(7521, 'WARD', 'SALESMAN', 7698, '1981/02/22', 1250, 500, 30),
(7566, 'JONES', 'MANAGER', 7839, '1981/04/02', 2975, null, 20),
(7654, 'MARTIN', 'SALESMAN', 7698, '1981/09/28', 1250, 1400, 30),
(7698, 'BLAKE', 'MANAGER', 7839, '1981/05/01', 2850, null, 30),
(7782, 'CLARK', 'MANAGER', 7839, '1981/06/09', 2450, null, 10),
(7788, 'SCOTT', 'ANALYST', 7566, '1982/12/09', 3000, null, 20),
(7839, 'KING', 'PRESIDENT', null, '1981/11/17', 5000, null, 10),
(7844, 'TURNER', 'SALESMAN', 7698, '1981/09/08', 1500, 0, 30),
(7876, 'ADAMS', 'CLERK', 7788, '1983/01/12', 1100, null, 20),
(7900, 'JAMES', 'CLERK', 7698, '1981/12/03', 950, null, 30),
(7902, 'FORD', 'ANALYST', 7566, '1981/12/03', 3000, null, 20),
(7934, 'MILLER', 'CLERK', 7782, '1982/01/23', 1300, null, 10);
