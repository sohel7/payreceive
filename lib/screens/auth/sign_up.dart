import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/colors.dart';
import '../components/components.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

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
                const Text('SignUp',
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
                      // Name Input
                      const Text('Name',
                        style: TextStyle(fontSize:10 ,color: mutedTextColor),
                      ),
                      TextFormField(
                        controller: emailController,
                        validator: (value)=> value!.isEmpty? "Name is required" : null,
                        keyboardType: TextInputType.emailAddress,
                        decoration: inputDecoration('Enter Name'),
                      ),
                      const SizedBox(height: 10,),

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
                      const SizedBox(height: 15,),

                      // INput Password
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
                      const SizedBox(height: 15,),
                      // Input Confirmed Password
                      const Text('Confirmed password',
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
                                      text: "Already Have an Account?",style: TextStyle(fontWeight: FontWeight.w500, color: darktextColor )
                                  ),

                                  TextSpan(
                                      text: "Login",style: TextStyle(fontSize: 12, color: primaryColor )
                                  ),

                                ]
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ),
                      //const SizedBox(height: 180,),

                    ],
                  ),

                )
              ],
            ),
            Positioned(
                bottom: 0,
                width: MediaQuery.of(context).size.width,
                child: MaterialButton(
                  onPressed: (){},
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
