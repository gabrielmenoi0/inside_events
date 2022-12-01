import 'package:flutter/material.dart';

class Login_page extends StatefulWidget {
  const Login_page({super.key});

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 43, right: 53),
        child: Column(children: <Widget>[
          SizedBox(
            height: 122,
            width: 122,
            child: Image.network(
              'https://picsum.photos/250?image=9',
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          TextFormField(
              autofocus: true,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromRGBO(126, 161, 255, 1)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromRGBO(126, 161, 255, 1)),
                  ),
                  labelText: ('Endereço de Email'),
                  hintText: ('Digite seu E-mail'),
                  labelStyle: TextStyle(color: Colors.black, fontSize: 23),
                  hintStyle: TextStyle(fontSize: 23))),
          const SizedBox(
            height: 25,
          ),
          TextFormField(
              autofocus: true,
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromRGBO(126, 161, 255, 1)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromRGBO(126, 161, 255, 1)),
                  ),
                  labelText: ('Senha'),
                  hintText: ('Digite sua senha'),
                  labelStyle: TextStyle(color: Colors.black, fontSize: 23),
                  hintStyle: TextStyle(fontSize: 23))),
          SizedBox(
            height: 25,
            child: Text('esqueceu a senha ?', textAlign: TextAlign.right),
          ),
          Container(
            alignment: Alignment.center,
            child: TextButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.all(10)),
                    foregroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 13, 67, 110)),
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                        side: BorderSide(width: 1.0, color: Colors.grey),
                      ),
                    )),
                onPressed: () {},
                child: const Text(
                  'Entre',
                  style: TextStyle(
                    height: 1.0,
                    fontSize: 30,
                  ),
                )),
          ),
          SizedBox(
              child: Text(
            'Não tem uma conta? Cadastre-se \n Ou conecte-se em outras contas',
            style: TextStyle(fontSize: 18, color: Colors.black),
          )),
          Container(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.network(
                  'https://picsum.photos/250?image=9',
                  width: 50,
                ),
                Image.network(
                  'https://picsum.photos/250?image=9',
                  width: 50,
                ),
                Image.network(
                  'https://picsum.photos/250?image=9',
                  width: 50,
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
