var fs = require('fs');
var mysql = require('mysql');

var config = JSON.parse(fs.readFileSync("config-secret.json"))

var connection = mysql.createConnection({
    host: config.host,
    user: config.user,
    password: config.password,
    port: config.port,
    database: config.database
});

connection.connect();

// connection.query('SELECT * FROM user', function(error, results, fields) {  console.log(results); });

/*Adding a new task item*/
/*
connection.query('INSERT INTO task (title, description, created, updated, due_date, status_id) VALUES ("Do your HYF homework","This weeks homework is about mySQL and connecting it to nodeJS.", "2018-02-18", "2018-02-18", "2018-02-25", 2);', 
	function(error, results, fields){  
		console.log(results); 
	}
);*/


/*Changing the name, the due date, or the status of a task item*/
/*
connection.query('UPDATE task SET title="Finish your HYF homework", status_id=1 WHERE id=36', 
	function(error, results, fields){
		console.log(results);
	}

);*/

/*Marking a task item as completed*/
/*
connection.query('UPDATE task SET status_id= 3 WHERE id = 36', 
	function(error, results, fields){
		console.log(results);
	}
);*/


/*Deleting a task item*/
/*
connection.query('SELECT * FROM task WHERE id = 36', 
	function(error, results, fields){
		console.log(results);
	}
);

connection.query('DELETE FROM task WHERE id = 36', 
	function(error, results, fields){
		console.log(results);
	}
);

connection.query('SELECT * FROM task', 
	function(error, results, fields){
		console.log(results);
	}
);*/


/*Deleting a user*/
/*
connection.query('SELECT * FROM user WHERE id = 14', 
	function(error, results, fields){
		console.log(results);
	}

);

connection.query('DELETE FROM user WHERE id = 14;', 
	function(error, results, fields){
		console.log(results);
	}

);

connection.query('SELECT * FROM user', 
	function(error, results, fields){
		console.log(results);
	}

);*/

/*
//Insert the user again into user table
connection.query('INSERT INTO user (id, name, email, phone) VALUES (14, "John Doe", "doe@gmail.com", "666-123-456")', 
	function(error, results, fields){
		console.log(results);
	}

);
*/


connection.end();
