import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {


  void initState()
  {
    super.initState();
  }


  final _formkey = GlobalKey<FormState>();

  TextEditingController _emailcontroller = TextEditingController();

  TextEditingController _passwordcontroller = TextEditingController();

  @override
  void dispose()
  {
    _emailcontroller.dispose();

    _passwordcontroller.dispose();

    super.dispose();
  }


  

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        padding: EdgeInsets.all(16),
        child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[


                TextFormField(
                  controller: _emailcontroller,
                  decoration: InputDecoration(
                      hintText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      )
                  ),
                  validator: (value){
                    if(value.isEmpty){
                      return 'Please Fill Email Input';
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _passwordcontroller,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      )
                  ),
                  validator: (value){
                    if(value.isEmpty){
                      return 'Please Fill Password Input';
                    }
                  },
                ),
                SizedBox(
                  height: 25,
                ),
                RaisedButton(
                    color: Color(0xFF194351),
                    child: Text('Login',style: TextStyle(color: Colors.white),),
                    onPressed: () async{
                      if(_formkey.currentState.validate()){

                        var result = await FirebaseAuth.instance.signInWithEmailAndPassword(
                            email: _emailcontroller.text,
                            password: _passwordcontroller.text);

                        if(result != null)
                        {

                          Navigator.of(context).pushNamed('/home');}
                      }

                      else
                      {
                        print('please try later');
                      }
                    }
                ),
                RaisedButton(
                    color: Color(0xFF194351),
                    child: Text('Rigester new account',style: TextStyle(color: Colors.white),),
                    onPressed: (){
                      Navigator.of(context).pushNamed('/signUp');

                    }
                ),
                RaisedButton(
                    color: Color(0xFF194351),
                    child: Text('Skip',style: TextStyle(color: Colors.white),),
                    onPressed: (){
                      Navigator.of(context).pushNamed('/home');

                    }
                )


              ],
            )
        ),
      ),
    );
  }
}