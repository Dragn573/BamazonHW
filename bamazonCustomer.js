const mysql = require("mysql");
const inquirer = require("inquirer");
var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
  
    
    password: "sql573",
    database: "Bamazon_DB"
  });
  
  connection.connect(function(err) {
    if (err) throw err;
    console.log("connected as id " + connection.threadId + "\n");
    readData();
  });

  function readData(){
      connection.query("SELECT * FROM products", function (err, result){
          if (err) throw err;
          console.log(result);
          buyProduct();
      });
  }

  function buyProduct(){
      inquirer.prompt([
        {
          message: "What do you want to buy?",
          name: "selectOne",
        },{
            message: "How many do you want?",
            name: "quantity",
        }
      ]).then (function(answers){
          var qty = answers.quantity;
          var product = answers.selectOne;
          connection.query("SELECT * FROM products WHERE position =" + answers.selectOne, function (err, result){
            var total = qty * result[0].price
              console.log(result[0]);
              if (qty > result[0].stockQuantity){
                  console.log("there's not enough");
              } else {
                connection.query(
                    "UPDATE products SET ? WHERE ?",
                    [
                        {
                            stockQuantity: result[0].stockQuantity - qty
                        },
            
                        {
                            position: product
                        }
                    ],
                    function(err, result){
                        if (err){
                            console.log("your code sucks ass");
                            return;
                        }
                    console.log("Your total is " + total);
                    }
                )
              }
              connection.end();
          });
      });
  }
      