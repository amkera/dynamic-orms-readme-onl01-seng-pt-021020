require 'sqlite3'


DB = {:conn => SQLite3::Database.new("db/songs.db")}
#Creating the database 


DB[:conn].execute("DROP TABLE IF EXISTS songs")
#dropping the songs table to avoid an error

sql = <<-SQL
  CREATE TABLE IF NOT EXISTS songs (
  id INTEGER PRIMARY KEY,
  name TEXT,
  album TEXT
  )
SQL
#Creating the songs table

DB[:conn].execute(sql)
DB[:conn].results_as_hash = true
