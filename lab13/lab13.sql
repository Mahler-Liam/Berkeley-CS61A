.read data.sql


CREATE TABLE bluedog AS
  SELECT color, pet from students where color = 'blue' and pet = 'dog';

CREATE TABLE bluedog_songs AS
  SELECT color, pet, song from students where color = 'blue' and pet = 'dog';


CREATE TABLE matchmaker AS
  SELECT st1.pet, st1.song, st1.color, st2.color from students as st1, students as st2 where st1.pet = st2.pet and st1.song = st2.song and st1.time < st2.time;

CREATE TABLE sevens AS
  SELECT stu.seven from students as stu, numbers as num where stu.time = num.time and stu.number = 7 and num.'7' = 'True';


CREATE TABLE favpets AS
  SELECT pet, COUNT(*) as count from students GROUP BY pet ORDER BY count DESC LIMIT 10;


CREATE TABLE dog AS
  SELECT pet, COUNT(pet) from students where pet = 'dog';


CREATE TABLE bluedog_agg AS
  SELECT song, COUNT(*) as count from bluedog_songs GROUP BY song ORDER BY count DESC;


CREATE TABLE instructor_obedience AS
  SELECT seven, instructor, COUNT(instructor) from students where seven = '7' GROUP BY instructor ;

