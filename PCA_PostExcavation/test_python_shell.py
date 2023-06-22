import pyodbc


# Connect to the Access database
conn_str = r'DRIVER={Microsoft Access Driver (*.mdb, *.accdb)};DBQ=C:\Users\vpinna\Desktop\Test Access update\DB test 1.accdb;'
conn = pyodbc.connect(conn_str)

# Get a cursor to execute SQL queries
cursor = conn.cursor()

# Specify the table name and the field name you want to modify
table_name = 'Table1'
field_name = 'Test2'
new_data_type = 'Number'  # The new data type you want to assign

# Execute an ALTER TABLE query to change the data type of the field
alter_query = f"ALTER TABLE {table_name} ALTER COLUMN {field_name} {new_data_type}"
cursor.execute(alter_query)

# Commit the changes to the database
conn.commit()

# Close the cursor and connection
cursor.close()
conn.close()