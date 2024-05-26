select * from artist;
select * from canvas_size;
select * from image_link;
select * from museum;
select * from museum_hours;
select * from product_size;
select * from subject;
select * from work;

--1)What museums are open both on Sunday and Monday?
select m.name as museum_name, m.city
from museum_hours mh1
join museum m on m.museum_id=mh1.museum_id
where day = 'Monday'
and exists (select 1 from museum_hours mh2
	        where mh2.museum_id = mh1.museum_id
	        and mh2.day = 'Sunday')


