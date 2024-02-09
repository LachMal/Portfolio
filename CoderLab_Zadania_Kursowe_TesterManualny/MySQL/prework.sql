USE world;
show tables;
describe country;
describe city;
describe countrylanguage;

select * from country where name like 'Po%';
select Code, Name from country where Continent='Europe';
select CountryCode from countrylanguage where language='Polish' and IsOfficial='F';
select * from city where CountryCode like 'ARG' and Population>190000 order by Population DESC;
select name from city where Population<10000 order by Population asc;
select name, continent, headofstate from country where headofstate is null or headofstate like 'K%'; 
