import 'package:email_validation/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Nunito"),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          child: SignIn(),
        ),
      ),
    );
  }
}

class SignIn extends StatefulWidget {
  @override
  _FormPageState createState() => new _FormPageState();
}

class _FormPageState extends State<SignIn> {
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  final formKey = new GlobalKey<FormState>();

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
                    width: 150,
                    height: 150,
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
                  'Sign in',
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
                ),
              ),
      
              SizedBox(
                height: 20,
              ),
              Container(
              
                alignment: Alignment.topLeft,
                width: 380.0,
                child: GestureDetector(
                  onTap: () {
                  
                  },
                  child: Text(
                    'Forget Password',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w500,
                        color: Colors.red[900]),
                  ),
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
                      height: 60.0,
                      buttonColor: Colors.red[900],
                      child: RaisedButton(
                        onPressed: _submit,
                        child: Text(
                          'Sign In',
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        ),
                      )),
                ),
              ),

               SizedBox(
                height: 20,
              ),

              Container(
               width: 380.0,
           child:Row(children: <Widget>[
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
                        minWidth: 160.0,
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
                height: 50,
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
                      MaterialPageRoute(builder: (context) => SignUp()),
                    );
                      },
                      child: Text(
                        'Sign Up',
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
