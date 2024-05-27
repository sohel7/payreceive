import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payreceiveapp/screens/auth/sign_up.dart';
import 'package:payreceiveapp/screens/components/colors.dart';
import 'package:payreceiveapp/screens/components/components.dart';

import '../app.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: formKey,
        child: Stack(
          children: [
            ListView(

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
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp())),
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
                    ),
                    const SizedBox(height: 180,),
                    // Terms And conditions
                    const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text: "Please confirm us by connecting your account adffsf asdfdsaf!",
                              style: TextStyle(color: mutedTextColor, fontSize: 12)
                          ),
                          TextSpan(
                              text: "Terms and conditions!  ",
                              style: TextStyle(color: Colors.blue, fontSize: 10, fontWeight: FontWeight.w500)
                          ),
                        ]
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
        
                )
              ],
            ),
            Positioned(
                bottom: 0,
                width: MediaQuery.of(context).size.width,
                child: MaterialButton(
                onPressed: (){
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                  builder: (context)=> const AppLaout()), (route) => false);
                },
                height: 50,
                color: primaryColor,
                textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0)
                  ),
                child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Login'),
                  SizedBox(height: 10,),
                  Icon(CupertinoIcons.square_arrow_right)
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
