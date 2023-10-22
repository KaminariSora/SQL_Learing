import sqlite3

connection = sqlite3.connect('chinook.db')
print("DB connected")
cursor = connection.execute("SELECT * FROM Customers;")
for row in cursor:
    print("Employee :", row[0],row[1], row[2])
connection.close()