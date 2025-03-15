import sqlite3


class Users:
    def __init__(self):
        self.conn = sqlite3.connect('data/dbs/users.db')
        self.create_users_table()
        
    def create_users_table(self):
        cursor = self.conn.cursor()
        cursor.execute(""" 
            CREATE TABLE IF NOT EXISTS users ( 
                id INTEGER PRIMARY KEY, 
                username TEXT NOT NULL, 
                password TEXT NOT NULL, 
                email TEXT NOT NULL 
            ); 
            """)
        self.conn.commit()