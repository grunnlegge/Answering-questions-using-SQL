import pandas as pd
from sqlalchemy import create_engine

conn_string =  'postgresql://username:password@localhost/artist'
db = create_engine(conn_string)
conn = db.connect()

files = ['artist', 'canvas_size', 'image_link', 'museum', 'museum_hours', 'product_size', 'subject', 'work']

for file in files:
  df = pd.read_csv(f"/Users/username/folder/dataset/{file}.csv")
  df.to_sql(file, con=conn, if_exists='replace', index=False)




