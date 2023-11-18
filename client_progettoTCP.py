import socket
import random
HOST = 'localhost'    # Il nodo remoto, qui metti il tuo indirizzo IP per provare connessione server e client dalla tua macchina alla tua macchina
PORT = 50010             # La stessa porta usata dal server
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect((HOST, PORT))

while True:
    data = s.recv(1024)
    if(data.decode()=="Tentativi Esauriti!"):
        print("password ERRATA troppe volte, arrivederci")
        s.close()
        break
    if(data.decode()=="Corretto!"):
        print("Corretto!")
        break
    print('Received: ', data.decode())
    testo = input("").encode()
    s.send(testo)
while True:
    messaggio=s.recv(1024).decode()
    print(messaggio)
    scelta=input("inserire opzione: ")
    s.send(scelta.encode())
    if scelta=="R":
        dati=s.recv(1024)
        print(dati)
        sc=input("inserire opzione: ")
        s.send(sc.encode())
        data=s.recv(1024)
        print(data.decode())
    if scelta=="I":
        messaggio=s.recv(1024).decode()
        print(messaggio)
        sc=input("inserire opzione: ")
        s.send(sc.encode())
        if sc=="Z":
            nome=input("inserire nome da inserire: ")
            cognome=input("inserisci cognome: ")
            id_dipendente=f"{cognome}.{nome}"
            nome_gatto=input("inserisci nome_gatto (se non ne hai uno inventatelo): ")
            s.send(nome.encode())
            s.send(id_dipendente.encode())
            s.send(nome_gatto.encode())
        if sc=="C":
            nome=input("inserire nome da inserire: ")
            cognome=input("inserire cognome:")
            pos_lav=input("inserire posto di lavoro: ")
            data_ass=input("inserire data di associazione: ")
            data_nas=input("inserire data di nascita: ")
            s.send(nome.encode())
            s.send(cognome.encode())
            s.send(pos_lav.encode())
            s.send(data_ass.encode())
            s.send(data_nas.encode())
    if scelta=="D":
            messaggio=s.recv(1024)
            print(messaggio.decode())
            sc=input("inserire opzione: ")
            s.send(sc.encode())
            messaggio=s.recv(1024)
            print(messaggio.decode())
            sc=input("inserire: ")
            s.send(sc.encode())
    if scelta=="U":
        messaggio=s.recv(1024)
        print(messaggio.decode())
        sc=input("inserire: ")
        s.send(sc.encode())
        messaggio=s.recv(1024)
        print(messaggio.decode())
        sc=input("inserire campo:")
        s.send(sc.encode())
        messaggio=s.recv(1024)
        print(messaggio.decode())
        valore=input("valore del campo: ")
        s.send(valore.encode())
        messaggio=s.recv(1024).decode()
        print(messaggio)
        sc=input("inserire: ")
        s.send(sc.encode())
    break
s.close()