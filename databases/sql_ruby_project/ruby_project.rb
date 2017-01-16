# Mailing list for small business

#require gems
require 'sqlite3'
require 'faker'

#create database
db = SQLite3::Database.new("customers.db")
db.results_as_hash = true

#create a table if not already existing
create_table_cmd = <<-SQL 
	CREATE TABLE IF NOT EXISTS customers(
	id INTEGER PRIMARY KEY,
	customer_name VARCHAR(255),
	address VARCHAR(255),
	income INT
	)
SQL

#runs above
db.execute(create_table_cmd)

#populate databse with faker for testing
def create_customer(db, customer_name, address, income)
	db.execute("INSERT INTO customers (customer_name, address, income) VALUES (?, ?, ?)", [customer_name, address, income])
end


#create fake database for testing
1000.times do 
	create_customer(db, Faker::Name.name, Faker::Address.street_address, income= 0+rand(100000))
end

#initialize value
value = 0

# ask for user to select a baseline income
puts "enter the lowest income you would like this mailer to be sent to"
value = gets.chomp

#run and print based on users input on lowes input
mailer = db.execute("SELECT * FROM customers WHERE income > #{value}")
mailer.each do |mailer|
puts "#{mailer['customer_name']} --- #{mailer['address']}"
end