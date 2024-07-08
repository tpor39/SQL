#A)
select c.title_content as "TITULO", c.type as "TIPO", p.language, p.runtime from content c
inner join production p
on p.id_content = c.id_content

where runtime >90 and language = 'french'
order by title_content asc	;

#B)
select c.title_content as "TITULO", c.director as "DIRECTOR", c.country as "PAIS DE ORIGEN" from content c 
where duration > 70 and country is NOT NULL and director is NOT NULL
order by title_content ASC;

#C)

select c.country as "PAIS", sum(c.duration) as 'DURACION', p.genre as "GEENRO" from content c
inner join production p
 on p.id_content = c.id_content
 where country in  ('United States', 'India', 'Japan', 'Spain', 'Mexico')
group by country, genre
order by country;

#D#
select  title_production as "TITULO DE PRODUCCION" from production p 
inner join oscar o 
on p.id_content = o.id_content
where p.genre = 'drama' and o.year_ceremony between 2010 and 2020;

#E#
select c.title_content as "TITULO", p.genre as "GENERO" from content c 
inner join oscar o 
on o.id_content = c.id_content
inner join production p 
on p.id_content = c.id_content
where o.imdb between 7 and 10 and p.language = 'english';

#F) 
select count(title_production) AS "TITULO", genre as "GENERO"from production 
group by genre
order by  count(title_production) desc, genre ASC;


#G) no corrio
select c.title_content, o.budget, o.box_office, (o.budget / o.box_office) from content c
left join oscar o 
on o.id_content = c.id_content
IF imdb (between 7 and 9), (o.budget/o.box_office), 'no aplica');

#H)
select o.year_ceremony, c.title_content from content c
inner join oscar o  
on o.id_content = c.id_content
where o.category = 'Best Picture'
order by o.year_ceremony desc;

#I)
select c.title_content, o.year_ceremony from content c
inner join oscar o
on o.id_content = c.id_content
where o.imdb between 7 and 9
order by c.title_content asc, o.year_ceremony desc;

#J) hay que poner solo las ganadoras

select c.title_content, o.category, p.genre, p.runtime, p.imdb_score, p.premiere, o.year_ceremony from production p
inner join oscar o 
on o.id_content = p.id_content
inner join content c 
on c.id_content = p.id_content
where o.winner = 1 and o.distributed_by = 'Netflix';

#K)

SELECT c.title_content AS "Título", o.category AS "Categoría", o.year_ceremony AS "Año de la Ceremonia"
FROM content c
INNER JOIN oscar o ON c.id_content = o.id_content
WHERE o.distributed_by = 'Netflix' 
ORDER BY o.year_ceremony, c.title_content;















