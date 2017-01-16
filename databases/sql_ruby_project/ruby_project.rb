# Mailing list for small business

#require gems
require 'sqlite3'
require 'faker'

#create database
db = SQLite3::Database.new("mailing_list.db")
db.results_as_hash = true

#create a table if not already existing
create_table_cmd = <<-SQL 
	CREATE TABLE IF NOT EXISTS customers(
	id INTEGER PRIMARY KEY,
	customer_name VARCHAR(255),
	address VARCHAR(255),
	)
SQL

#runs above
db.execute(create_table_cmd)

#data input method
def customer_info do |customer_name, address|
	puts "please enter customer name"
	customer_name = gets.chomp
	puts "please enter customer address"
	address = gets.chomp
end


value = 0
puts "please enter 1 to input customer data or 2 to access the mailing list"
value = gets.chomp
if value == 1 
	customer_info
end
