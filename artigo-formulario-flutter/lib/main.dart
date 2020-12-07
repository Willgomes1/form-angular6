import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final TextEditingController _controladorUsername = TextEditingController();
  final TextEditingController _controladorNome = TextEditingController();
  final TextEditingController _controladorSobrenome = TextEditingController();
  final TextEditingController _controladorNascimento = TextEditingController();
  final TextEditingController _controladorEmail = TextEditingController();
  final TextEditingController _controladorSenha = TextEditingController();
 //final TextEditingController _controladorQuantidade = TextEditingController();
  //final TextEditingController _controladorValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cadastrando Usuario '),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              TextField(
                controller: _controladorUsername,
                decoration: InputDecoration(labelText: 'username'),
              ),
              TextField(
                controller: _controladorNome,
                decoration: InputDecoration(labelText: 'Nome'),
              ),
              TextField(
                controller: _controladorSobrenome,
                decoration: InputDecoration(labelText: 'Sobrenome'),
              ),
              TextField(
                controller: _controladorNascimento,
                decoration: InputDecoration(labelText: 'Nascimento'),
              ),
              TextField(
                controller: _controladorEmail,
                decoration: InputDecoration(labelText: 'Email'),
              ),
              TextField(
                controller: _controladorSenha,
                decoration: InputDecoration(labelText: 'Senha'),
              ),
             
             //Padding(
             //  padding: const EdgeInsets.only(top: 16.0),
             //  child: TextField(
             //    controller: _controladorQuantidade,
             //   decoration: InputDecoration(labelText: 'Quantidade'),
             //    keyboardType: TextInputType.number,
             //   ),
             //  ),
             // Padding(
             //   padding: const EdgeInsets.only(top: 16.0),
             //   child: TextField(
             //    controller: _controladorValor,
             //    decoration: InputDecoration(labelText: 'Valor'),
             //    keyboardType: TextInputType.number,
             //    ),
             //   ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: RaisedButton(
                  child: Text('Cadastrar'),
                  onPressed: () {
                    final String username = _controladorUsername.text;
                    final String nome = _controladorNome.text;
                    final String sobrenome = _controladorSobrenome.text;
                    final String nascimento = _controladorNascimento.text;
                    final String email = _controladorEmail.text;
                    final String senha = _controladorSenha.text;
                    
                    //final int quantidade =
                        //int.tryParse(_controladorQuantidade.text);
                    //final double valor =
                       // double.tryParse(_controladorValor.text);

                    final Usuario usuarioNovo =
                        Usuario(username, nome, sobrenome, nascimento, email, senha); //quantidade, valor);
                    print(usuarioNovo);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Usuario {
  final String username;
  final String nome;
  final String sobrenome;
  final String nascimento;
  final String email;
  final String senha;

 // final int quantidade;
 // final double valor;

  Usuario(
    this.username,
    this.nome,
    this.sobrenome,
    this.nascimento,
    this.email,
    this.senha
   // this.quantidade,
    //this.valor,
  );

  @override
  String toString() {
    return 'Usuario{username: $username, nome: $nome,sobrenome: $sobrenome, nascimento: $nascimento, email: $email, senha: $senha, }';   //quantidade: $quantidade, valor: $valor}';
  }
}
