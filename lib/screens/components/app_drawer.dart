import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payreceiveapp/screens/auth/login.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  bool darkmode=false;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: [
          ListView(
            children:  [
              const SizedBox(height: 20,),
              // Account Info
              const ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('images/logos/sohel.jpg',),
                ),
                title: Text('Sohel Hossain', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                subtitle: Row(
                  children: [
                    Text('Verified Profile', style: TextStyle(fontSize: 12),),
                    Icon(Icons.verified,size: 14,color: Colors.green,)
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              // darkmode
              ListTile(
                title: const Text('Dark-mode', style: TextStyle(fontSize: 15),),
                leading: const Icon(CupertinoIcons.sun_max),
                trailing: Transform.scale(
                  alignment: Alignment.centerRight,
                  scale: 0.75,
                  child: Switch(value: darkmode,
                      onChanged: (value)=> setState(() {
                        darkmode = !darkmode;
                      })
                  ),
                ),
                onTap: ()=> setState(() {
                  darkmode = !darkmode;
                }),
              ),
              // Account Information
              const ListTile(
                title: Text('Account  Information', style: TextStyle(fontSize: 15),),
                leading: Icon(CupertinoIcons.exclamationmark_circle),
              ),
              // password
              ListTile(
                title: const Text('Password', style: TextStyle(fontSize: 15),),
                leading: const Icon(CupertinoIcons.lock),
              ),
              // settings
              const ListTile(
                title: Text('Account  Information', style: TextStyle(fontSize: 15),),
                leading: Icon(CupertinoIcons.settings),
              ),
            ],
          ),
          // logout Button
          Positioned(
              bottom:0,
              width: MediaQuery.of(context).size.width,
              child: ListTile(
                title: Text('Logout',
              style: TextStyle(fontSize: 15,color: Colors.red),
                ),
                leading: Icon(CupertinoIcons.square_arrow_left,
              color: Colors.red),
                onTap: ()=> showDialog(
              context: context,
              builder: (context)=> AlertDialog(
                title: Text("Logout"),
                content: Text('Do you want to log out ?'),
                actions: [
                  TextButton(onPressed: ()=>Navigator.pop(context), child: Text("NO")),
                  TextButton(
                      onPressed: ()=> Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(builder: (context)=> SignIn()), (route) => false),
                      child: Text("Yes")
                  )
                ],
              )
            ),
          )
          )
        ],
      ),
    );
  }
}
