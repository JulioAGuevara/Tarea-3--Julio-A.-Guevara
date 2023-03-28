import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  final rad = 60.0;

  @override
  Widget build(BuildContext context) {
    final name = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView(
              children: [
                //Encabezado
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: (){
                        Navigator.pop(context);
                      }, 
                      icon: const Icon(Icons.arrow_back_ios_new_rounded)
                    ),
                    Text(name,
                      style: const TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 78, 78, 78),
                      ) 
                    ),
                    IconButton(
                      onPressed: (){
                        
                      }, 
                      icon: const Icon(Icons.edit),
                    ),
                  ],
                ),

                const SizedBox(height: 10),

                //Opciones Contacto
                Padding(
                  padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                  child: Row(
                    
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      
                      TopBtns(color: Colors.lightGreen, icon: Icons.call_rounded, shadow: Colors.lightGreenAccent[100]),

                      TopBtns(color: Colors.yellow, icon: Icons.message, shadow: Colors.yellowAccent[100]),

                      Container(
                        height: 80,
                        width: 80,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(70)
                        ),
                        child: Container(
                          height: 77,
                          width: 77,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(77)
                          ),
                          child: Container(
                            height: 70,
                            width: 70,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              
                              borderRadius: BorderRadius.circular(70)
                            ),
                            child: const CircleAvatar(
                                minRadius: double.infinity,
                                backgroundImage: AssetImage(
                                  'images/profile.jpg',
                                  ),
                                
                            ),
                          )
                        ),
                      ),


                      TopBtns(color: Colors.red, icon: Icons.share, shadow: Colors.redAccent[100]),

                      TopBtns(color: Colors.blue, icon: Icons.star_outline_outlined, shadow: Colors.blueAccent[100]),

                      // 

                      

                      
                    ],
                    ),
                ),

                const SizedBox(height: 20,),

                //Profile info text
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text('Profile Info', 
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                  ],
                ),

                const SizedBox(height: 10,),

                const Cont1btn(
                  title: Text('Date of Birth'),
                  subtitle: Text('15 Feb 1996',
                    style: TextStyle(
                        fontSize: 20,
                      ),
                    ), 
                  btn: RoundBtn(icon: Icon(Icons.mode_edit, color: Colors.white,)),
                  ),

                //Contact info text
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                  children: [
                    const Text('Contact Info', 
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    TextButton.icon(
                      onPressed: (){}, 
                      icon: const Icon(Icons.add), 
                      label: const Text('Add'),
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 34, 34, 34))
                      ),
                      )
                  ],
                ),

                //Contact info Container Main
                Cont1btn(
                  title: const Text('Main Number'), 
                  subtitle: const Text('+91 95221 81654',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  btn: SizedBox(
                    width: 105,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        RoundBtn(icon: Icon(Icons.do_disturb, color: Colors.white,)),
                        RoundBtn(icon: Icon(Icons.mode_edit, color: Colors.white,)),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 15,),

                //Contact info Container Primary
                Cont1btn(
                  title: const Text('Primary Number'), 
                  subtitle: const Text('+91 95221 81654',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    ),
                  btn: SizedBox(
                    width: 105,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        RoundBtn(icon: Icon(Icons.do_disturb, color: Colors.white,)),
                        RoundBtn(icon: Icon(Icons.mode_edit, color: Colors.white,)),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 10,),

                //Email Info Text
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                  children: [
                    const Text('Email Info', 
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    TextButton.icon(
                      onPressed: (){}, 
                      icon: const Icon(Icons.add), 
                      label: const Text('Add'),
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 34, 34, 34))
                      ),
                      )
                  ],
                ),

                //Email Info Container
                const Cont1btn(
                  title: Text('Main Email'),
                  subtitle: Text('test@gmail.com',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ), 
                  btn: RoundBtn(icon: Icon(Icons.delete, color: Colors.white,)),
                  ),

                //Address Info Text
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                  children: [
                    const Text('Address Info', 
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    TextButton.icon(
                      onPressed: (){}, 
                      icon: const Icon(Icons.add), 
                      label: const Text('Add'),
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 34, 34, 34))
                      ),
                      )
                  ],
                ),

                //Address Info Card
                
                Cont1btn(
                  title: const Text('Home Town Address'), 
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(height: 5,),
                      Text('56, Vivek Chowk, Ghatalodiya', style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(height: 5,),
                      Text('220523, Ahmedabad', style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ), 
                  btn: const RoundBtn(icon: Icon(Icons.delete, color: Colors.white,)),
                  ),

                const SizedBox(height: 20,),

                Container(

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: const [BoxShadow(
                      blurRadius: 10,
                      blurStyle: BlurStyle.outer,
                      color: Colors.grey,
                    ),]
                  ),
                  
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //btn Facebook
                        BtnWImg(col: Colors.blue[900],url: 'images/facebook.png'),
                        //btn Twitter
                        BtnWImg(col: Colors.blue[300],url: 'images/twitter.png'),
                        //btn Instagram
                        BtnWImg(col: Colors.pink[300],url: 'images/Instagram.png'),
                        //btn Google +
                        BtnWImg(col: Colors.orange[900],url: 'images/G+.png'),
                        //btn Mas opciones
                        BtnWImg(col: Colors.grey[900],url: 'images/more.png'),
                      ],
                    ),
                  ),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Cont1btn extends StatelessWidget {
  const Cont1btn({super.key, required this.title, required this.subtitle, required this.btn});
  final title;
  final subtitle;
  final btn;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [BoxShadow(
          color: Colors.grey,
          blurRadius: 10,
          blurStyle: BlurStyle.outer
        )],
      ),
      child: ListTile(
        title:  title,
        subtitle:  subtitle,
        trailing: btn,
       ),
      );
  }
}

class RoundBtn extends StatelessWidget {
  const RoundBtn({super.key, required this.icon});

  final icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 52, 55, 63),
        borderRadius: BorderRadius.circular(45)
      ),
      child: IconButton(
        icon: icon, 
        onPressed: (){},)
      );
  }
}

class BtnWImg extends StatelessWidget {
  const BtnWImg({super.key, required this.url , required this.col});

  final url ;
  final Color? col;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: col,
        borderRadius: BorderRadius.circular(50)
      ),
      child: Container(
        height: 47,
        width: 47,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(47)
        ),
        child: Container(
          height: 60,
          width: 60,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60)
          ),
          child: TextButton(
            onPressed: (){},
            style: ButtonStyle(
            padding: MaterialStateProperty.all(const EdgeInsets.all(1)),
            backgroundColor: MaterialStateProperty.all(const Color.fromRGBO(0, 0, 0, 0)),
            ),
            child: CircleAvatar(
              minRadius: double.infinity,
              backgroundImage: AssetImage(
                '$url',
              ), 
            ),      
          ),
        ),
      ),
    );
                      
  }
}

class TopBtns extends StatelessWidget {
  const TopBtns({super.key, required this.color, required this.icon, required this.shadow});

  final color;
  final icon;
  final shadow;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(
          color: shadow,
          blurRadius: 20, 
          offset: const Offset(0, 10)
        )],
        color: color,
        borderRadius: BorderRadius.circular(50)
      ),
      alignment: Alignment.center,
      child: Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(45)
        ),
        alignment: Alignment.center,
        child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(40)
          ),
          child: IconButton(
            onPressed: (){},
            icon: Icon(icon, color: Colors.white,),
            )
          ),
        ),
      );
  }
}