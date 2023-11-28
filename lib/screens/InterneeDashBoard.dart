import 'package:flutter/material.dart';
import 'package:voicenotesapp/widgtes/colors.dart';
import 'package:voicenotesapp/widgtes/customtext.dart';
class InterneeDashBoard extends StatefulWidget {
  const InterneeDashBoard({super.key});

  @override
  State<InterneeDashBoard> createState() => _InterneeDashBoardState();
}

class _InterneeDashBoardState extends State<InterneeDashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE7E7E7),
      appBar: AppBar(
        backgroundColor:AppColors.mygreen,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu, color: Colors.black),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        title: const Text(
          "Internee.pk",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          SizedBox(
            width: 50,
            child: PopupMenuButton(
              icon: const Icon(Icons.person, color: Colors.black),
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: 1,
                  child: ListTile(
                    leading: Icon(Icons.account_circle),
                    title: Text('Manage account'),
                  ),
                ),
                const PopupMenuItem(
                  value: 2,
                  child: ListTile(
                    leading: Icon(Icons.logout),
                    title: Text('Logout'),
                  ),
                ),
              ],
              offset: const Offset(0, 30),
            ),
          ),

        ],

      ),
      drawer: Drawer(
        width: 170,
        // Drawer content goes here
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: AppColors.mygreen
              ),
              child: Text(
                'Internee.pk',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: const Text('Dashboard'),
              onTap: () {
                // Handle item 1 press
              },
            ),

          ],
        ),
      ),
    body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: HeadingText(text: 'Home')
        ),
        const Divider(),
        Card(
          color: Colors.white,
          margin: const EdgeInsets.all(16),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child:BodyText(text: 'Welcome from internee.pk,Sidra Khan'),
          ),
        ),
        const Divider(),
        Card(
          child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          MainText(text: 'Your Running Tasks'),
          // Vertical Divider
          const Divider(
          thickness: 2,
          ),
          // Row with 5 TextWidgets (changeable text component)
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          MainText(text: '#'),
            MainText(text: 'Task id'),
            MainText(text: 'Category'),
            const SizedBox(width: 7,),
            MainText(text: 'Status'),
            MainText(text: 'Actions')
    ],
    ),
            const Divider(thickness: 2,),
      RowComponent(textList: ['1', 'TSK-000-25', 'Flutter Internship', 'Pending', ], onButtonPressed:(){}),
            const Divider(),
            RowComponent(textList: ['2', 'TSK-000-141', 'Flutter Internship', 'Pending', ], onButtonPressed:(){}),
            const Divider(),
            RowComponent(textList: ['3', 'TSK-000-142', 'Flutter Internship', 'Pending', ], onButtonPressed:(){}),
            const Divider(),
            RowComponent(textList: ['4', 'TSK-000-143', 'Flutter Internship', 'Pending', ], onButtonPressed:(){}),
            const Divider(),
            RowComponent(textList: ['5', 'TSK-000-144', 'Flutter Internship', 'Pending', ], onButtonPressed:(){}),
            const Divider(),
            RowComponent(textList: ['6', 'TSK-000-145', 'Flutter Internship', 'Pending', ], onButtonPressed:(){}),
    ],
    ),
    ),
        ),
      ],
    ),
    );
  }
}

