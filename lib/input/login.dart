import 'package:flutter/material.dart';
import 'package:myflutter_project/home.dart';

import 'Dashboard.dart';
import 'login_after.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    TextEditingController phoneController=  TextEditingController();
    TextEditingController passwordController=  TextEditingController();
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Column(
        children: [
          Image.asset('asset/fb.png', height: 150, width: 200),
          Text('Login with phone password'),
          SizedBox(height: 10),
          Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text('Phome number'),
                  TextFormField(
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: 'Phone number',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter phone no';
                      } else if (value.length != 11) {
                        return 'please enter 11 digit number';
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'please Enter Password';
                      } else if (value.length <= 6) {
                        return 'Password must be 6 char';
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: 300,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>Home()));
                         // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>Home()));
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Login success')),
                          );
                        }
                      },
                      child: Text('Submint'),
                    ),
                  ),
                  ElevatedButton(onPressed: (){ Navigator.pushNamed(context, 'button1'); }, child: Text('Button')),
                  ElevatedButton(onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home2()));

                  }, child: Text('Home-2')),
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashboard(phone: phoneController.text, password: passwordController.text ,)));

                  }, child: Text('Dashboard'))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
