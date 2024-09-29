import 'package:client/components/my_current_loaction.dart';
import 'package:client/components/my_description_box.dart';
import 'package:client/components/my_drawer.dart';
import 'package:client/components/my_silver_app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
         MySilverAppBar(
            title: Text('Title'),
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary
                ),
                MyCurrentLoaction(),
                MyDescriptionBox()
              ],
            ), // Pass a String instead of a Text widget
          ),
        ],
        body: Container(
          color: Colors.blue,
          // Add your content here
        ),
      ),
    );
  }
}
