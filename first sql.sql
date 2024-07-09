show databases;

use sakila;

select database();

show tables;
select * from actor;
desc actor;

select actor_id,first_name from actor;
select * from actor where first_name='ED';
select * from actor where actor_id  in(3,5,7);
select * from actor where first_name in( 'john','nick');

select * from actor where first_name like 'S__S%';
select * from actor where first_name in('PENELOPE', 'NICK') and actor_id>2
-- single row function
use sakila;
select first_name,upper(first_name) from actor;
select 1+2 from dual;
select length('hello') from dual;

--substring
use sakila;
select first_name,substr(first_name,3,3) from actor;

select first_name,substr(first_name,3,3) from actor;
select first_name,substr(first_name,3,3) from actor;
select first_name,instr(first_name,'c')from actor;
select first_name ,last_name,concat_ws('- ',first_name,last_name) from actor;
select  rtrim('        hey   ' )from dual;
select first_name,replace(first_name,'E','#')from actor;
select round(12.586) from dual;
select round(12.586) from dual;
select truncate(12.5839,3)from dual;
select truncate(12.5839,3)from dual;
select first_name,if(first_name='NICK','yes','no') from actor;

-- if(condition,True,False)
-- if(condition,True,if(condition,True,False))

select first_name,actor_id,substr(first_name,1,1),
if (mod (actor_id,2)=0,actor_id*10,
if(mod(actor_id,5)=0,actor_id*20,actor_id*100))
        as 'new'
from actor;

-- case statement

/* 
select col,
	case expression
    when value then work
    when value then work 
    end
    from table
*/

select actor_id,first_name,
	case first_name
    when 'NICK' then actor_id+10
    else actor_id
from actor;

select first_name,actor_id,substr(first_name,1,1),
if ((actor_id>10),'best',
if(mod(actor_id,5)=0,actor_id*20,actor_id*100))
        as 'new'
from actor;

-- nullif(exp1,exp2)
-- exp1 =exp2(return null otherwise return exp1)
