
import 'package:email_validation/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SignUp extends StatefulWidget {
  @override
  _FormPageState createState() => new _FormPageState();
}

class _FormPageState extends State<SignUp> {
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  final formKey = new GlobalKey<FormState>();
  final TextEditingController _user = TextEditingController();
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _confirmPass = TextEditingController();

  String _email;
  String _password;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  void _submit() {
    final form = formKey.currentState;

    if (form.validate()) {
      form.save();

      performLogin();
    }
  }

  void performLogin() {
    final snackbar = new SnackBar(
      content: new Text("Email : $_email, password : $_password"),
    );
    scaffoldKey.currentState.showSnackBar(snackbar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        key: scaffoldKey,
        body: new Form(
          key: formKey,
          child: new Column(
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Container(
                child: Center(
                  child: Image.asset(
                    "assets/images/bg.png",
                    width: 130,
                    height: 130,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                width: 380.0,
                child: Text(
                  'Sign Up',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.red[900],
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: new EdgeInsets.symmetric(horizontal: 10.0),
                alignment: Alignment.topLeft,
                width: 380.0,
                child: Text(
                  'Email/ User Name',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                width: 380.0,
                child: new TextFormField(
                    cursorColor: Colors.red,
                  decoration: new InputDecoration(
                      contentPadding: new EdgeInsets.fromLTRB(0, 0, 0, 0),
                    focusedBorder: UnderlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.red, width: 2.0),
                    ),
                    filled: true,
                    hoverColor: Colors.red,
                    focusColor: Colors.red,
                    fillColor: Colors.grey.withOpacity(.01),
                  ),
                  validator: (val) =>
                      !val.contains('@') ? 'Invalid Email' : null,
                  onSaved: (val) => _email = val,
                  controller: _user,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: new EdgeInsets.symmetric(horizontal: 10.0),
                alignment: Alignment.topLeft,
                width: 380.0,
                child: Text(
                  'Password',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                width: 380.0,
                child: new TextFormField(
                     
                  cursorColor: Colors.red,
                  decoration: new InputDecoration(
                      contentPadding: new EdgeInsets.fromLTRB(0, 0, 0, 0),
                    focusedBorder: UnderlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.red, width: 2.0),
                    ),
                    
                    filled: true,
                    hoverColor: Colors.red,
                    focusColor: Colors.red,
                    fillColor: Colors.grey.withOpacity(.01),
                    
                  ),
                   validator: (val) =>
                      val.length < 8 ? 'Password must be 8 characters' : null,
                  onSaved: (val) => _password = val,
                     obscureText: true,
                      controller: _pass,
                ),
              ),
      
              SizedBox(
                height: 20,
              ),
              Container(
                margin: new EdgeInsets.symmetric(horizontal: 10.0),
                alignment: Alignment.topLeft,
                width: 380.0,
                child: Text(
                  'Confirm Password',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                width: 380.0,
                child: new TextFormField(
                                 cursorColor: Colors.red,
                  decoration: new InputDecoration(
                      contentPadding: new EdgeInsets.fromLTRB(0, 0, 0, 0),
                    focusedBorder: UnderlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.red, width: 2.0),
                    ),
                    filled: true,
                    hoverColor: Colors.red,
                    focusColor: Colors.red,
                    fillColor: Colors.grey.withOpacity(.01),
                  ),
                   validator: (val) =>
                      val != _pass.text ? 'Not Matched' : null,
                  onSaved: (val) => _password = val,
                     obscureText: true,
                ),
              ),
              
              SizedBox(
                height: 20,
              ),
              Container(
              
                alignment: Alignment.topLeft,
                width: 380.0,
                child: GestureDetector(
                  child: ButtonTheme(
                      minWidth: 380.0,
                      height: 50.0,
                      buttonColor: Colors.red[900],
                      child: RaisedButton(
                        onPressed: _submit,
                        child: Text(
                          'Sign up',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      )),
                ),
              ),
              
                   Container(
              
                width: 380.0,
                child: GestureDetector(
                  onTap: () {
                    
                   
                  },
                  
                  child: Text(
                    'by Clicking Sign Up, you are accepting terms and privercy.',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.withOpacity(.5)),
                  ),
                ),
              ),

               SizedBox(
                height: 20,
              ),

             
              
                Container(
                   width: 380.0,
                child: Row(children: <Widget>[
                Expanded(
                    child: Divider(
                  thickness: 0.75,
                )),
                    Text("   OR   ",  style: TextStyle(color: Colors.grey.withOpacity(.5)),),
                Expanded(
                    child: Divider(
                  thickness: 0.75,
                )),
              ]),
         
              ),
              
              SizedBox(
                height: 20,
              ),
              Container(
                margin: new EdgeInsets.symmetric(horizontal: 10.0),
                alignment: Alignment.topLeft,
                width: 380.0,
                child: Row(
                  children: <Widget>[
                    ButtonTheme(
                        minWidth: 140.0,
                        height: 40.0,
                        buttonColor: Colors.white,
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: RaisedButton(
                              onPressed: () {},
                              child: Image.asset(
                                "assets/images/f.png",
                                width: 140,
                                height: 40,
                              ),
                            ))),
                    SizedBox(
                      width: 30,
                    ),
                    ButtonTheme(
                        minWidth: 140.0,
                        height: 40.0,
                        buttonColor: Colors.white,
                        child: Align(
                            alignment: Alignment.centerRight,
                            child: RaisedButton(
                              onPressed: () {},
                              child: Image.asset(
                                "assets/images/g.png",
                                width: 140,
                                height: 40,
                              ),
                            ))),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: new EdgeInsets.symmetric(horizontal: 10.0),
                alignment: Alignment.topLeft,
                width: 380.0,
                child: Row(
                  children: <Widget>[
                    Text(
                      "Don'Have an account ?",
                      style: TextStyle(color: Colors.black),
                    ),
                    
                    GestureDetector(
                      onTap: () {
                          Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyApp()),
                      );
                      },
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                           
                            fontWeight: FontWeight.w500,
                            color: Colors.red[900]),
                      ),
                    ),
              
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
