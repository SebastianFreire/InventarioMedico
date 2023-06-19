require 'pg'

conn = PG.connect(
    :host => 'localhost',
    :dbname => 'root',
    :user => 'root',
    :password => 'root'
)

conn.exec("CREATE TABLE users (id serial PRIMARY KEY, name varchar(255))")

conn.exec("INSERT INTO users (name) VALUES ('Alice')")

conn.exec("INSERT INTO users (name) VALUES ('Bob')")

conn.exec("INSERT INTO users (name) VALUES ('Charlie')")

conn.exec("INSERT INTO users (name) VALUES ('Dave')")

conn.exec("INSERT INTO users (name) VALUES ('Eve')")

result = conn.exec("SELECT * FROM users")

result.each do |row|
        puts row['name']
end

conn.close
