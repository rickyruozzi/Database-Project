import threading 
import socket
import mysql.connector
import random
comunicazioni = ["",""]
PASSWORD = "CIAO"
id_c=1
def gestisci_comunicazione(conn):
    conn.send("Benvenuto, inserisci password: ".encode())
    data = conn.recv(1024).decode()
    i=0
    while data != PASSWORD and i<2:
        i+=1
        conn.send(f"Password ERRATA, reinserisci password: tentativi rimasti {3-i} ".encode())
        data = conn.recv(1024).decode()      

    if(data != PASSWORD):
        conn.send("Tenativi esauriti!".encode())
        conn.close()
        return
    conn.send("Corretto!".encode())
    while True:
        conn.send("Benvenuto, cosa vuoi fare: I=insert, U=update,R=read,D=delete".encode())
        data = conn.recv(1024).decode()
        print(data)
        if(data=="R"):
            conn.send("su che tabella vuoi cercare: C=clienti, Z=zone di lavoro".encode())
            data = conn.recv(1024).decode()  
            if data=="Z":          
                dati_query = db_get_zl()
                print(dati_query)
                conn.send(str(dati_query).encode())
            elif data=="C":
                dati_query = db_get_C()
                print(dati_query)
                conn.send(str(dati_query).encode())
        elif(data=="I"):
            conn.send("Su che tabella vuoi aggiungere l'elemento? C-Clienti o Z-Zona_di_lavoro".encode())
            risposta=conn.recv(1024).decode()
            print(risposta)
            if risposta=="Z":
                db_add_Z(conn)
            if risposta=="C":
                db_add_C(conn)
        elif(data=="D"):
            conn.send("su che tabella vuoi eliminare un elemento? C-Clienti Z-Zona_di_lavoro".encode())
            scelta=conn.recv(1024)
            if(scelta.decode()=="Z"):
                db_del_z(conn)
            if(scelta.decode()=="C"):
                db_del_c(conn)
        elif data=="U":
            conn.send("Su che tabella vuoi aggiornare un elemento? C-Clienti Z-Zona_di_lavoro".encode())
            scelta=conn.recv(1024).decode()
            if scelta=="C":
                db_update_C(conn)
            if scelta=="Z":
                db_update_Z(conn)
        break
    return
def db_get_zl():
    conn = mysql.connector.connect(
        host="127.0.0.1",
        user="root",
        # password="root",
        database="5atepsit",
        port=3306, 
        )
    cur = conn.cursor()
    query = "SELECT * FROM zona_di_lavoro_ruozzi_riccardo"
    cur.execute(query)
    dati = cur.fetchall()
    return dati

def db_get_C():
    conn = mysql.connector.connect(
        host="127.0.0.1",
        user="root",
        # password="root",
        database="5atepsit",
        port=3306, 
        )
    cur = conn.cursor()
    query = "SELECT * FROM clienti_ruozzi_riccardo"
    cur.execute(query)
    dati = cur.fetchall()
    return dati

def db_add_Z(conn):
    nome=conn.recv(1024).decode()
    id_dipendente=conn.recv(1024).decode()
    nome_gatto=conn.recv(1024).decode()
    query = f"INSERT INTO zona_di_lavoro_ruozzi_riccardo (nome_zona, id_dipendente, nome_gatto) VALUES (%s, %s, %s)"
    values=(nome, id_dipendente, nome_gatto)
    connessione = mysql.connector.connect(
        host="127.0.0.1",
        user="root",
        # password="root",
        database="5atepsit",
        port=3306,
        )
    cur = connessione.cursor()
    cur.execute(query,values)
    connessione.commit()
    connessione.close()

def db_del_z(conn):
    conn.send("selezionare id dell'elemento da eliminare (importante: verificare che l'elemento sia presente)".encode())
    scelta=conn.recv(1024).decode()
    query = f"DELETE FROM zona_di_lavoro_ruozzi_riccardo WHERE id={scelta}"
    connessione = mysql.connector.connect(
        host="127.0.0.1",
        user="root",
        # password="root",
        database="5atepsit",
        port=3306,
        )
    cur = connessione.cursor()
    cur.execute(query)
    connessione.commit()
    connessione.close()

def db_del_c(conn):
    conn.send("selezionare id dell'elemento da eliminare (importante: verificare che l'elemento sia presente)".encode())
    scelta=conn.recv(1024).decode()
    query = f"DELETE FROM clienti_riccardo_ruozzi WHERE id={scelta}"
    connessione = mysql.connector.connect(
        host="127.0.0.1",
        user="root",
        # password="root",
        database="5atepsit",
        port=3306,
        )
    cur = connessione.cursor()
    cur.execute(query)
    connessione.commit()
    connessione.close()

def db_add_C(conn):
    nome=conn.recv(1024).decode()
    cognome=conn.recv(1024).decode()
    pos_lav=conn.recv(1024).decode()
    data_ass=conn.recv(1024).decode()
    data_nas=conn.recv(1024).decode()
    query = f"INSERT INTO clienti_riccardo_ruozzi (nome, cognome, pos_lav, data_ass, data_nas) VALUES (%s, %s, %s,%s,%s)"
    values=(nome,cognome,pos_lav,data_ass,data_nas)
    connessione = mysql.connector.connect(
        host="127.0.0.1",
        user="root",
        # password="root",
        database="5atepsit",
        port=3306,
        )
    cur = connessione.cursor()
    cur.execute(query,values)
    connessione.commit()
    connessione.close()

def db_update_C(conn):
    conn.send("inserire campo da modificare (il campo deve esistere)".encode())
    scelta=conn.recv(1024).decode()
    conn.send("inserire il nuovo valore del campo: ".encode())
    val=conn.recv(1024)
    conn.send("inserire id dell'elemento da modificare".encode())
    id=conn.recv(1024).decode()
    id=int(id)
    query = f"UPDATE clienti_riccardo_ruozzi SET {scelta}= %s WHERE id= %s"
    connessione = mysql.connector.connect(
        host="127.0.0.1",
        user="root",
        # password="root",
        database="5atepsit",
        port=3306,
        )
    cur = connessione.cursor()
    cur.execute(query,(val,id))
    connessione.commit()
    connessione.close()
def db_update_Z(conn):
    conn.send("inserire campo da modificare (il campo deve esistere)".encode())
    scelta=conn.recv(1024).decode()
    conn.send("inserire il nuovo valore del campo: ".encode())
    val=conn.recv(1024)
    conn.send("inserire id dell'elemento da modificare".encode())
    id=conn.recv(1024).decode()
    id=int(id)
    query = f"UPDATE zona_di_lavoro_ruozzi_riccardo SET {scelta}=%s WHERE id=%s"
    connessione = mysql.connector.connect(
        host="127.0.0.1",
        user="root",
        # password="root",
        database="5atepsit",
        port=3306,
        )
    cur = connessione.cursor()
    cur.execute(query,(val,id))
    connessione.commit()
    connessione.close()

print("server in ascolto: ")
lock = threading.Lock()
HOST = ''                
PORT = 50010            
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.bind((HOST, PORT))
s.listen(10)
thread = []
lista_connessioni = []
i=0
while True:
    lista_connessioni.append( s.accept() ) 
    print('Connected by', lista_connessioni[i][1]) 
    thread.append(threading.Thread(target=gestisci_comunicazione, args = (lista_connessioni[i][0],) )) 
    thread[i].start()
    i+=1
