a;
select type, title_content, country, rating, duration, listed_in from content;

b;

select id_content, title_production, genre, runtime, imdb_Score from production;

c;

select  id_content, type, title_content, director, cast, rating, duration, listed_in from content
where Country like "Argentina";

d;
select  id_production, title_production, genre, language, imdb_score from production 
where imdb_score >= 7.5; 

e;

select id_content, type, title_content, listed_in from content

where rating like "TV-Y";

f;

select  production.id_production, production.title_production, production.genre, content.duration from production
inner join content on production.id_content  = content.id_content
where duration <= 105;

g;

select  type, rating from content 
order by  rating, type;

h;
 select language from production
 order by language desc;

select count(title_production) as cantidad , language from production
where language = "Portuguese" or language = "French" or language = "Italian" or language = "German" or language = "Spanish"
group by language
order by cantidad DESC;


