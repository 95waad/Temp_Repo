import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

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
                  child: Text('Register New Account',style: TextStyle(color: Colors.white),),
                  onPressed: () async{
                    if(_formkey.currentState.validate()){
                      
                      var result = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                          email: _emailcontroller.text,
                          password: _passwordcontroller.text);
                    
                      if(result != null)
                      {

                       print('dooone ok');
                        }
                        
                      else{
                        print('please try later');
                      } 
                    }
                  },
                )
              ],
            )
        ),
      ),
    );
  }
}