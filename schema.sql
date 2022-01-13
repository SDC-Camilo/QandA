 CREATE TABLE questions (id INT PRIMARY KEY,product_id INT,body varchar,date_written varchar,asker_name varchar,asker_email varchar,reported boolean,helpful int
 );

CREATE TABLE answers (id int PRIMARY KEY,question_id int, FOREIGN KEY(question_id) REFERENCES questions(id), body varchar,date_written varchar,answerer_name varchar,answerer_email varchar,reported boolean,helpful int);


CREATE TABLE photos (
id INT PRIMARY KEY,
answer_id,
FOREIGN KEY(answer_id) REFERENCES answers(id),
url varchar);
