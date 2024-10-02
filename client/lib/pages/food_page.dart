import 'package:client/components/my_button.dart';
import 'package:client/models/food.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon , bool>  selectedAddons = {};
   FoodPage({super.key, required this.food}) {
    for (Addon addon in food.availableAddons){
      selectedAddons[addon] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(widget.food.imagePath),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.food.name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    widget.food.price.toString(),
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(widget.food.description),
                  SizedBox(height: 10),
                  Divider(color: Theme.of(context).colorScheme.secondary),
                  Text(
                    "Add-ons",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    borderRadius: BorderRadius.circular(8)),
                    child: ListView.builder(
                      itemCount: widget.food.availableAddons.length,
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        Addon addon = widget.food.availableAddons[index];
                        return CheckboxListTile(
                          value: widget.selectedAddons[addon],
                          title: Text(addon.name),
                          subtitle: Text('\$' + addon.price.toString() , style: TextStyle(
                              color: Theme.of(context).colorScheme.primary
                          ),),
                          onChanged: (bool? value) {
                            setState(() {
                              widget.selectedAddons[addon] = value!;
                            });
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            MyButton(onTap: (){}, text: "Add to card"),
            SizedBox(height: 25,)
          ],
        ),
      ),
    );
  }
}
