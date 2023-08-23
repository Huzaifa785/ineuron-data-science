create database linkedin_ats;

use linkedin_ats;

create table candidates (
	id int,
    technology varchar(20)
);

insert into candidates values 
(1, "Python"),
(1, "SQL"),
(1, "DS"),
(1, "Tableau"),
(2, "PowerBI"),
(2, "AWS"),
(2, "Python")
; 

select * from candidates;

-- "DS", "SQL", "Python" --> fetching candidates with required skills
select id from candidates where technology in ("DS", "SQL", "Python");

-- "DS", "SQL", "Python" --> fetching candidates with ALL required skills
select id from candidates where technology = "DS"
and id in (select id from candidates where technology = "SQL")
and id in (select id from candidates where technology = "Python");