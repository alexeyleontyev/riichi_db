--  общая стата 
select 
	player as игрок, 
	avg(place) as среднее_место, 
	avg(points) as средние_очки, 
	count(*) AS ханчаны 
from 
	rating 
where 
	bet != 0 
group by 
	player 
having 
	count(*)> 10 
order by 
	2; 

--  стата в играх по 2р/100 
select 
	player as игрок, 
	avg(place) as среднее_место, 
	sum(points)* 0.02 as выигрыш, 
	count(*) AS ханчаны 
from 
	rating 
where 
	bet = 2 
group by 
	player 
having 
	count(*)> 5 
order by 
	2;

--  стата в играх по 3р/100 
select 
	player as игрок, 
	avg(place) as среднее_место, 
	sum(points)* 0.03 as выигрыш, 
	count(*) AS ханчаны 
from 
	rating 
where 
	bet = 3 
group by 
	player 
having 
	count(*)> 5 
order by 
	2;

--  стата в играх по 5р/100 
select 
	player as игрок, 
	avg(place) as среднее_место, 
	sum(points)* 0.03 as выигрыш, 
	count(*) AS ханчаны 
from 
	rating 
where 
	bet = 5 
group by 
	player 
having 
	count(*)> 5
order by 2;