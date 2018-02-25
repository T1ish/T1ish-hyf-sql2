USE taskdb;

SELECT * FROM status;
SELECT * FROM task;
SELECT * FROM user;

DESCRIBE task;

/*Adding a new task item*/
INSERT INTO task (title, description, created, updated, due_date, status_id) 
VALUES ("Do your HYF homework","This weeks homework is about mySQL and connecting it to nodeJS.", 2018-02-18, 2018-02-18, 2018-02-25, 2);

/*Changing the name, the due date, or the status of a task item*/
UPDATE task SET title="Finish your HYF homework", status_id=1 WHERE id = 36;

/*Marking a task item as completed*/
UPDATE task SET status_id= 3 WHERE id = 36;

/*Deleting a task item*/
SELECT * FROM task WHERE id = 36;
DELETE FROM task WHERE id = 36;

/*Deleting a user*/
SELECT * FROM user WHERE id = 14;
DELETE FROM user WHERE id = 14;
