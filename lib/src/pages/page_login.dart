import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _passVis = false;
  String us = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: ListView(
        children: [Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 100,),
              const Text('Contactos',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
              const Icon(Icons.contacts, size: 50,),
              const SizedBox(height: 40,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.blue,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [BoxShadow(blurRadius: 30,offset: Offset(0.0,10))]
                  
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      const Text('Login',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
              const SizedBox(height: 30,),
              Container(
                  width: 300,
                  child: TextField(
                    onChanged: (value){
                      us = value;
                    },
                    decoration: const InputDecoration(
                      icon:  Icon(Icons.person),
                      border: OutlineInputBorder(),
                      labelText: 'Usuario', 
                    ),
                    style: const  TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
              ),
              const SizedBox(height: 20,),
              Container(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      icon: const Icon(Icons.lock_rounded),
                      border: const OutlineInputBorder(),
                      labelText: 'Contraseña',
                      suffixIcon: IconButton(
                                color: Colors.grey,
                                iconSize: 20,
                                icon: Icon(_passVis ?Icons.visibility :Icons.visibility_off),
                                onPressed: () {
                                  _passVis = !_passVis;
                                  setState(() {});
                                },
                              ),
                      
                      ),
                    style: const TextStyle(fontSize: 20),
                    obscureText: !_passVis,
                    textAlign: TextAlign.center,
                  ),
              ),
                    ],
                  ),
                ),
              ),
              
              const SizedBox(height: 30,),
              ElevatedButton(
                
                onPressed: (){
                  if(us == ''){
                    Navigator.of(context).pushNamed('/infopage', arguments: 'Default Name');
                    return;
                  }
                  Navigator.of(context).pushNamed('/infopage', arguments: us);
                  
                }, 
                child: const Text('Iniciar Sesion')
                ),
            ],
          )
        ),]
      ),
    );
  }
}

// class LoginPage extends StatelessWidget {
//   const LoginPage({super.key});

  
// }