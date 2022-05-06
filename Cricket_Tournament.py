import psycopg2
#cimport openpyxl 
#import tkinter 
 
#from openpyxl import *
#from tkinter import *

conn = psycopg2.connect("postgresql:admin//@localhost/cricket")
cur = conn.cursor()

while True:
    print("Please enter Team ID")
    Team_id = int(input())
    print("Please enter Captain ID")
    captain_id  = int(input())
    print("Please enter Coach ID")
    Coach_id = int(input())
cur.execute("""
    SELECT team.name, captain.name ,Coach 
    FROM team, captain, Coach 
    WHERE Team.Coach_id=Coach.Coach_id
        AND team.Coach_id=Coach.Coach_id
        AND team_id=%s
""", (Team_id,));

      

cur.close()
conn.close()