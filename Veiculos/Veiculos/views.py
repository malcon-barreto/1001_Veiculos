import mysql.connector
from django.http import HttpResponse
from django.shortcuts import render



def login(request):
    return render(request, 'login.html')

def home(request):
    loginDigitado = request.POST["login"]
    senhaDigitada = request.POST["senha"]

    mydb = mysql.connector.connect(
        host="localhost",
        user="root",
        password="admin",
        database="1001_veiculos"
    )

    cursor = mydb.cursor()
    cursor.execute("SELECT login, senha FROM usuario")
    resultado = cursor.fetchall()

    encontrado = False
    for item in resultado:
        if loginDigitado == item[0] and senhaDigitada == item[1]:
            encontrado = True

    if (encontrado == False):
        context = {}
        context['loginInvalido'] = True
        return render(request, 'login.html', context)

    return render(request, 'home.html')

def cadastro(request):
    return render(request, 'cadastros.html')

def cadastroUsers(request):
    return render(request, 'cadastroUsers.html')

def insertUsers(request):

    login = request.POST['login']
    senha = request.POST['senha']

    mydb = mysql.connector.connect(
        host="localhost",
        user="root",
        password="admin",
        database="1001_veiculos"
    )
    cursor = mydb.cursor()
    cursor.execute("INSERT INTO usuario (login, senha) VALUES ('"+ login +"','"+ senha +"');")
    mydb.commit()

    return listUsers(request)



def listas(request):
    return render(request, 'listas.html')

def listUsers(request):
    mydb = mysql.connector.connect(
        host="localhost",
        user="root",
        password="admin",
        database="1001_veiculos"
    )

    cursor = mydb.cursor()
    cursor.execute("SELECT login FROM usuario")
    resultado = cursor.fetchall()

    resultado = [item[0] for item in resultado]

    content = {}
    content['resultado'] = resultado
    return render(request, 'listUsers.html', content)

def cadastroCliente(request):
    return render(request, 'cadastroCliente.html')

def insertCliente(request):

    nome_cliente = request.POST['nome']
    cpf = request.POST['cpf']

    mydb = mysql.connector.connect(
        host="localhost",
        user="root",
        password="admin",
        database="1001_veiculos"
    )
    cursor = mydb.cursor()
    cursor.execute("INSERT INTO cliente (nome_cliente, cpf) VALUES ('"+ nome_cliente +"','"+ cpf +"');")
    mydb.commit()

    return listCliente(request)

def listCliente(request):
    mydb = mysql.connector.connect(
        host="localhost",
        user="root",
        password="admin",
        database="1001_veiculos"
    )

    cursor = mydb.cursor()
    cursor.execute("SELECT nome_cliente,cpf FROM cliente")
    resultado = cursor.fetchall()

    content = {}
    content['resultado'] = resultado
    return render(request, 'listCliente.html', content)

def listVeiculo(request):
    mydb = mysql.connector.connect(
        host="localhost",
        user="root",
        password="admin",
        database="1001_veiculos"
    )

    cursor = mydb.cursor()
    cursor.execute("SELECT nome_veiculo FROM veiculo")
    resultado = cursor.fetchall()

    content = {}
    content['resultado'] = resultado
    return render(request, 'listVeiculo.html', content)