-- 1. Брой на потребители;
select count(*) from users;

-- 2. Най-стария потребител.
select * from users order by birthDate desc limit 1;

-- 3. Най-младия потребител.
select * from users order by birthDate asc limit 1;

-- 4. Колко юзъра са регистрирани с мейли от abv и колко от gmail и колко с различни от двата.alter
select count(*) from users where email like '%@gmail.com';
select count(*) from users where email like '%@abv.bg';
select count(*) from users where email not like '%@abv.bg' or '%@gmail.com';

-- 5. Кои юзъри са banned.
select * from users where isBanned = 1;

-- 6. Изкарайте всички потребители от базата като ги наредите по име в азбучен ред и дата на раждане(от най-младия към най-възрастния)
select * from users order by username asc, birthDate desc;

-- 7. Изкарайте всички потребители от базата, на които потребителското име започва с "a".alter.
select * from users where username like 'a%';

-- 8. Изкарайте всички потребители от базата, които съдържат а username името си.
select * from users where username like 'username%' or '%username';

-- 9. Изкарайте всички потребители от базата, чието име се състои от 2 имена.
select * from users where username like '% %';

-- 10. Регистрирайте 1 юзър през UI-а и го забранете след това от базата.
Update users set isBanned = '1' where username = 'dashovka' ;

-- 11. Брой на всички постове.
select count(*) from posts;

-- 12. Брой на всички постове групирани по статуса на post-a.
select count(*) from posts group by postStatus = 'private', 'public';

-- 13. Намерете поста/овете с най-къс caption.
select * from posts order by length(caption) asc;

-- 14. Покажете поста с най-дълъг caption.
select * from posts order by length(caption) desc;

-- 15. Кой потребител има най-много постове. Използвайте join заявка.
select count(*) as numberOfPosts, username from users u join posts p on u.id = p.userId
group by p.userId order by numberOfPosts desc limit 1;

-- 16. Кои потребители имат най-малко постове. Използвайте join заявка.
select count(*) as numberOfPosts, username from users u join posts p on u.id = p.userId
group by p.userId order by numberOfPosts asc;

-- 17. Колко потребителя с по 1 пост имаме. Използвайте join заявка, having clause и вложени заявки.
SELECT gr.numberOfPosts, gr.username
from
(select count(*) as numberOfPosts, username from users u join posts p on u.id = p.userId group by p.userId order by numberOfPosts asc) as gr
having gr.numberOfPosts = 1;

-- 18. Колко потребителя с по малко от 5 поста имаме. Използвайте join заявка, having clause и вложени заявки.
select Count(*) as usersWithLessThanFivePosts from (SELECT *
from
(select count(*) as numberOfPosts, username from users u join posts p on u.id = p.userId group by p.userId order by numberOfPosts asc) as gr
having gr.numberOfPosts < 5) as damn;


-- 19. Кои са постовете с най-много коментари. Използвайте вложена заявка и where clause.
select * 




