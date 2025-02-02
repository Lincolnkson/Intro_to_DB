import mysql.connector

my_connection = mysql.connector.connect(
          host="localhost",
          user="root",
          password="!S0nSQLU$er!@#$",
          )

try:

          my_cursor = my_connection.cursor()
          my_cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")

          my_cursor.close()
          my_connection.close()
          print("Database 'alx_book_store' created successfully!")

except mysql.connector.Error as e:
          my_cursor.close()
          my_connection.close()
          print(f"Error: {e.msg}")
 
 