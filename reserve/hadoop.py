import pymysql

def top5():
    conn = pymysql.connect(
        user='root',
        passwd='1234',
        host='localhost',
        port=3708,
        db='big',
        charset='utf8'
    )
    cursor = conn.cursor(pymysql.cursors.DictCursor)
    sql = "select movie_id from count order by count desc limit 5"

    cursor.execute(sql, )
    conn.commit()
    return cursor.fetchall()
