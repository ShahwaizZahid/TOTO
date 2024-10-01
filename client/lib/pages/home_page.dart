import 'package:client/components/my_current_loaction.dart';
import 'package:client/components/my_description_box.dart';
import 'package:client/components/my_drawer.dart';
import 'package:client/components/my_silver_app_bar.dart';
import 'package:client/components/my_tab_bar.dart';
import 'package:client/models/food.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: FoodCategory.values.length, vsync: this);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  List<Food> _filterMenuByCategory (FoodCategory category, List<Food>fullMenu ){
return fullMenu.where((food)=> food.category == category ).toList();
  }

  List<Widget> getFoodInThisCategory(List<Food>fullMenu){
    return FoodCategory.values.map((category){
      List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);
      return ListView.builder(
        itemCount: categoryMenu.length,
        itemBuilder: (context, index){

      },);
    }).toList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
         MySilverAppBar(
            title:MyTabBar(tabController: _tabController),
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
        body: TabBarView(
            controller: _tabController,
            children: [
          Text('burger'),
          Text('salads'),
              Text('sides'),
              Text('desserts'),
              Text('drinks')
        ])
      ),
    );
  }
}
