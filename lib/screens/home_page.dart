import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'components/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

 int sortValue = 1;

 List<Color> colors = [
   primaryColor,
   successColor,
   worningColor,
   highlightColor,
   dangerColor,
   darktextColor,
   mutedTextColor,
   lightGreyColor,
 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20,left: 15,right: 15,bottom: 15),
        child: Column(
          children: [
// Receiveable Payable Card
           Card(
             margin: EdgeInsets.zero,
             color: primaryColor,
             child: Padding(
               padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Column(
                    children: [
                      Text('Receiveable', style: TextStyle( fontSize: 16,color: Colors.white),),
                      Text('12345',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: highlightColor),
                      )
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 1,
                    decoration: const BoxDecoration(color:Colors.white ),
                  ),
                  const Column(
                    children: [
                      Text('Payable', style: TextStyle( fontSize: 16,color: Colors.white),),
                      Text('54321',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: highlightColor),
                      ),

                    ],
                  ),
                ],
               ),
             ),

           ),
            const SizedBox(height: 25,),
// Search and filter Box
            Card(
              margin: EdgeInsets.zero,
              child: Row(
                // Search Box
                children: [
                  Expanded(child: Container(
                    padding: const EdgeInsets.only(left: 10),
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: TextField(
                      onChanged: (value){},
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search',
                        icon: Icon(CupertinoIcons.search),
                        iconColor: Colors.blue,
                        hintStyle: TextStyle(color: Colors.grey)
                      ),
                    ),
                  ),
                  ),
          // Filter Button
                  Container(
                    margin: const EdgeInsets.only(right: 8),
                    //margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: IconButton(onPressed: (){
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context){
                        return  Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 20),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const SizedBox(height: 40,),
                                  const Text('Sort By',
                                    style: TextStyle(fontSize: 18,),),
                                  IconButton(
                                      onPressed: () =>
                                      {Navigator.pop(context)},
                                      icon: const Icon(Icons.close)),
                                ],
                              ),
                              const SizedBox(height: 20,),
                              // Redio ListTiles nibo ekhane
                              RadioListTile(
                                  value: 1,
                                  groupValue: sortValue,
                                  title: const Text('Newest'),
                                  onChanged:(value){
                                    setState(() {
                                      sortValue = value as int;
                                    });
                                    Navigator.pop(context);
                                  }
                              ),
                              RadioListTile(
                                  value: 2,
                                  groupValue: sortValue,
                                  onChanged:(value){
                                    setState(() {
                                      sortValue = value as int;
                                    });
                                    Navigator.pop(context);
                                  },
                                  title: const Text('Oldest'),
                              ),
                            ],
                          )

                        );
                      });
                    }, icon: const Icon(CupertinoIcons.slider_horizontal_3)),
                  ),
                ],

              ),
            ),
            const SizedBox(height: 25,),
// Person List
            Expanded(child: Card(
              margin: EdgeInsets.zero,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 20,
                  itemBuilder: (BuildContext context, int Index){
                    return  Card(
                      elevation: 0,
                      child: ListTile(
                        title: const Text('Sohel Hossain', style: TextStyle(fontWeight: FontWeight.w500),),
                        subtitle: const Text('28-May-2024 at 6:00 pm', style: TextStyle(color: mutedTextColor),),
                        trailing: const Row(
                        mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('15000', style: TextStyle(color: Colors.red, fontSize: 14),
                            ),
                            Icon(CupertinoIcons.right_chevron),
                          ],
                        ),

                        leading: CircleAvatar(
                          backgroundColor: colors[Index >= colors.length ? Index % colors.length : Index], // backgroundColor:colors[Index >= colors.length],
                          child: const Text('S', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.green),),
                        ),
                        contentPadding:const EdgeInsets.only(left: 15, right: 10),
                      ),
                    );
                  },
                ),
              ),
            ),
            ),
          ],

        ),
      ),
    );
  }
}


