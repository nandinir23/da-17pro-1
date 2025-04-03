select * from restaurants

select DISTINCT optime from restaurants where rating = '5'
select DISTINCT closingtime from restaurants where rating = '4'
select DISTINCT cuisine from restaurants where rating = '3'
select DISTINCT contact from restaurants where rating = '5'
select name, cuisine from restaurants where rating = '4'
select optime, closingtime from restaurants where rating = '3'
select id, address, contact from restaurants where rating = '4'
select closingtime from restaurants where rating = '5'
