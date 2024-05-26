import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payreceiveapp/screens/components/colors.dart';
import 'package:payreceiveapp/screens/components/components.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          const Text('Welcome',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25, fontWeight:FontWeight.w600, color: Colors.black87),
          ),
          const SizedBox(height: 15,),
          const Text('Please Enter yor data to continue',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 10,  color: mutedTextColor),
          ),
          const SizedBox(height: 120,),
          Padding(padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Email Input
              const Text('Email',
                style: TextStyle(fontSize:10 ,color: mutedTextColor),
              ),
              TextFormField(
                controller: emailController,
                validator: (value)=> value!.isEmpty? "Email is required" : null,
                keyboardType: TextInputType.emailAddress,
                decoration: inputDecoration('Enter Email'),
              ),
              const SizedBox(height: 20,),
              const Text('password',
                style: TextStyle(fontSize:10 ,color: mutedTextColor),
              ),
              TextFormField(
                controller: passwordController,
                validator: (value)=> value!.length<4 ? "Password at leastt 5 Character" : null,
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                decoration: inputDecoration('*****'),
              ),
              const SizedBox(height: 20,),
              SizedBox(
                width: double.infinity,
                child: InkWell(
                  onTap: (){},
                  child: const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "New Here?",style: TextStyle(fontWeight: FontWeight.w500, color: darktextColor )
                        ),

                        TextSpan(
                            text: "Create a New Account",style: TextStyle(fontSize: 12, color: primaryColor )
                        ),
                      ]
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
              )
            ],
          ),

          )
        ],
      ),
    );
  }
}
