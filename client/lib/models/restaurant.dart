import 'package:client/models/food.dart';

import 'food.dart';

class Restaurant {
  List<Food> _menu = [

    //  burgers
    Food(
      name: 'Cheeseburger',
      description:
          'A delicious cheeseburger with a juicy beef patty, cheese, and fresh ingredients.',
      imagePath: 'assets/images/cheeseburger.png',
      price: 5.99,
      availableAddons: [
        Addon(name: 'Extra Cheese', price: 1.00),
        Addon(name: 'Bacon', price: 1.50),
        Addon(name: 'Lettuce', price: 0.50),
        Addon(name: 'Tomato', price: 0.50),
      ],
      category: FoodCategory.burgers, // Assigning the category to 'burgers'
    ),
    Food(
      name: 'Patti Burger',
      description: 'A flavorful patti burger with a spicy patty, fresh veggies, and tangy sauce.',
      imagePath: 'assets/images/patti_burger.png', // Change the image path if needed
      price: 4.99, // You can adjust the price as per your requirement
      availableAddons: [
        Addon(name: 'Extra Sauce', price: 0.75),
        Addon(name: 'Onions', price: 0.50),
        Addon(name: 'Pickles', price: 0.50),
        Addon(name: 'Jalapenos', price: 0.75),
      ],
      category: FoodCategory.burgers, // Assigning the category to 'burgers'
    ),
    Food(
      name: 'Egg Burger',
      description: 'A delicious egg burger featuring a fried egg, fresh veggies, and a tangy sauce.',
      imagePath: 'assets/images/egg_burger.png', // Update with the correct image path
      price: 4.49, // Set the price for the egg burger
      availableAddons: [
        Addon(name: 'Extra Egg', price: 1.00),
        Addon(name: 'Cheese', price: 0.75),
        Addon(name: 'Avocado', price: 1.25),
        Addon(name: 'Spicy Mayo', price: 0.50),
      ],
      category: FoodCategory.burgers, // Assigning the category to 'burgers'
    ),
    Food(
      name: 'Zinger Burger',
      description: 'A spicy zinger burger with a crispy chicken fillet, fresh lettuce, and a zesty sauce.',
      imagePath: 'assets/images/zinger_burger.png', // Update with the correct image path
      price: 5.49, // Set the price for the zinger burger
      availableAddons: [
        Addon(name: 'Extra Crispy Fillet', price: 1.50),
        Addon(name: 'Cheese', price: 0.75),
        Addon(name: 'Spicy Sauce', price: 0.50),
        Addon(name: 'Onion Rings', price: 1.00),
      ],
      category: FoodCategory.burgers, // Assigning the category to 'burgers'
    ),
    Food(
      name: 'Loaded Burger',
      description: 'A hearty loaded burger topped with multiple cheeses, crispy bacon, sautéed onions, and special sauce.',
      imagePath: 'assets/images/loaded_burger.png', // Update with the correct image path
      price: 6.99, // Set the price for the loaded burger
      availableAddons: [
        Addon(name: 'Extra Cheese', price: 1.00),
        Addon(name: 'Bacon', price: 1.50),
        Addon(name: 'BBQ Sauce', price: 0.75),
        Addon(name: 'Fried Egg', price: 1.00),
      ],
      category: FoodCategory.burgers, // Assigning the category to 'burgers'
    ),

  // salads
  Food(
  name: 'Caesar Salad',
  description: 'Crisp romaine lettuce tossed with Caesar dressing, croutons, and parmesan cheese.',
  imagePath: 'assets/images/caesar_salad.png', // Update with the correct image path
  price: 7.99,
  availableAddons: [
  Addon(name: 'Grilled Chicken', price: 2.00),
  Addon(name: 'Bacon Bits', price: 1.00),
  Addon(name: 'Extra Dressing', price: 0.50),
  ],
  category: FoodCategory.salads, // Category
  ),
  Food(
  name: 'Caprese Salad',
  description: 'Fresh mozzarella, tomatoes, and basil drizzled with balsamic glaze.',
  imagePath: 'assets/images/caprese_salad.png', // Update with the correct image path
  price: 8.49,
  availableAddons: [
  Addon(name: 'Balsamic Reduction', price: 0.75),
  Addon(name: 'Avocado', price: 1.25),
  ],
  category: FoodCategory.salads,
  ),
  Food(
  name: 'Cobb Salad',
  description: 'A classic Cobb salad with chicken, bacon, avocado, hard-boiled eggs, and blue cheese.',
  imagePath: 'assets/images/cobb_salad.png', // Update with the correct image path
  price: 9.49,
  availableAddons: [
  Addon(name: 'Extra Chicken', price: 2.00),
  Addon(name: 'Extra Cheese', price: 0.75),
  ],
  category: FoodCategory.salads,
  ),
  Food(
  name: 'Greek Salad',
  description: 'A refreshing Greek salad with cucumbers, tomatoes, olives, and feta cheese.',
  imagePath: 'assets/images/greek_salad.png', // Update with the correct image path
  price: 8.99,
  availableAddons: [
  Addon(name: 'Extra Feta', price: 1.00),
  Addon(name: 'Tzatziki Sauce', price: 0.50),
  ],
  category: FoodCategory.salads,
  ),
  Food(
  name: 'Waldorf Salad',
  description: 'A delicious Waldorf salad made with apples, walnuts, and grapes in a creamy dressing.',
  imagePath: 'assets/images/waldorf_salad.png', // Update with the correct image path
  price: 7.49,
  availableAddons: [
  Addon(name: 'Extra Walnuts', price: 0.75),
  Addon(name: 'Dried Cranberries', price: 0.50),
  ],
  category: FoodCategory.salads,
  ),

  //   desserts
  Food(
  name: 'Cheesecake',
  description: 'A rich and creamy cheesecake with a buttery graham cracker crust.',
  imagePath: 'assets/images/cheesecake_dessert.png', // Update with the correct image path
  price: 4.99,
  availableAddons: [
  Addon(name: 'Strawberry Sauce', price: 0.75),
  Addon(name: 'Whipped Cream', price: 0.50),
  ],
  category: FoodCategory.desserts, // Category
  ),
  Food(
  name: 'Tiramisu',
  description: 'A classic Italian dessert made with layers of coffee-soaked ladyfingers and mascarpone cheese.',
  imagePath: 'assets/images/tiramisu_dessert.png', // Update with the correct image path
  price: 5.49,
  availableAddons: [
  Addon(name: 'Extra Cocoa Powder', price: 0.50),
  Addon(name: 'Chocolate Shavings', price: 0.75),
  ],
  category: FoodCategory.desserts,
  ),
  Food(
  name: 'Brownie',
  description: 'A fudgy brownie topped with chocolate ganache and served warm.',
  imagePath: 'assets/images/brownie_dessert.png', // Update with the correct image path
  price: 3.99,
  availableAddons: [
  Addon(name: 'Vanilla Ice Cream', price: 1.50),
  Addon(name: 'Chocolate Sauce', price: 0.50),
  ],
  category: FoodCategory.desserts,
  ),
  Food(
  name: 'Panna Cotta',
  description: 'A creamy Italian dessert made with sweetened cream thickened with gelatin and served with berry coulis.',
  imagePath: 'assets/images/panna_cotta_dessert.png', // Update with the correct image path
  price: 4.49,
  availableAddons: [
  Addon(name: 'Berry Compote', price: 0.75),
  Addon(name: 'Mint Leaves', price: 0.50),
  ],
  category: FoodCategory.desserts,
  ),
  Food(
  name: 'Éclair',
  description: 'A light and airy pastry filled with cream and topped with chocolate glaze.',
  imagePath: 'assets/images/eclair_dessert.png', // Update with the correct image path
  price: 3.49,
  availableAddons: [
  Addon(name: 'Extra Cream Filling', price: 0.75),
  Addon(name: 'Sprinkles', price: 0.25),
  ],
  category: FoodCategory.desserts,
  ),

  //   sides
  Food(
  name: 'Garlic Bread',
  description: 'Toasted bread topped with garlic butter and parsley.',
  imagePath: 'assets/images/garlic_bread_side.png', // Update with the correct image path
  price: 3.49,
  availableAddons: [
  Addon(name: 'Cheese', price: 0.75),
  Addon(name: 'Extra Garlic', price: 0.50),
  ],
  category: FoodCategory.sides, // Category
  ),
  Food(
  name: 'Mashed Potatoes',
  description: 'Creamy mashed potatoes whipped to perfection.',
  imagePath: 'assets/images/mashed_potatoes_side.png', // Update with the correct image path
  price: 4.29,
  availableAddons: [
  Addon(name: 'Gravy', price: 0.75),
  Addon(name: 'Butter', price: 0.50),
  ],
  category: FoodCategory.sides,
  ),
  Food(
  name: 'Coleslaw',
  description: 'Crunchy cabbage and carrot salad tossed in a creamy dressing.',
  imagePath: 'assets/images/coleslaw_side.png', // Update with the correct image path
  price: 2.99,
  availableAddons: [
  Addon(name: 'Extra Dressing', price: 0.50),
  Addon(name: 'Sunflower Seeds', price: 0.75),
  ],
  category: FoodCategory.sides,
  ),
  Food(
  name: 'Roasted Vegetables',
  description: 'A medley of seasonal vegetables roasted to perfection.',
  imagePath: 'assets/images/roasted_vegetables_side.png', // Update with the correct image path
  price: 4.99,
  availableAddons: [
  Addon(name: 'Balsamic Glaze', price: 0.75),
  Addon(name: 'Herbs', price: 0.50),
  ],
  category: FoodCategory.sides,
  ),
  Food(
  name: 'French Fries',
  description: 'Crispy golden fries seasoned to perfection.',
  imagePath: 'assets/images/french_fries_side.png', // Update with the correct image path
  price: 3.49,
  availableAddons: [
  Addon(name: 'Cheese Sauce', price: 1.00),
  Addon(name: 'Spicy Ketchup', price: 0.50),
  ],
  category: FoodCategory.sides,
  ),

  //   drinks
  Food(
  name: 'Lemonade',
  description: 'Freshly squeezed lemonade with a hint of mint.',
  imagePath: 'assets/images/lemonade_drink.png', // Update with the correct image path
  price: 2.99,
  availableAddons: [
  Addon(name: 'Extra Lemon', price: 0.50),
  Addon(name: 'Mint Leaves', price: 0.25),
  ],
  category: FoodCategory.drinks, // Category
  ),
  Food(
  name: 'Iced Tea',
  description: 'Refreshing iced tea served with lemon and a hint of sweetness.',
  imagePath: 'assets/images/iced_tea_drink.png', // Update with the correct image path
  price: 2.49,
  availableAddons: [
  Addon(name: 'Peach Flavor', price: 0.75),
  Addon(name: 'Extra Ice', price: 0.25),
  ],
  category: FoodCategory.drinks,
  ),
  Food(
  name: 'Mojito',
  description: 'A classic mojito with fresh mint, lime, and rum (non-alcoholic available).',
  imagePath: 'assets/images/mojito_drink.png', // Update with the correct image path
  price: 4.99,
  availableAddons: [
  Addon(name: 'Extra Mint', price: 0.50),
  Addon(name: 'Lime Wedge', price: 0.25),
  ],
  category: FoodCategory.drinks,
  ),
  Food(
  name: 'Smoothie',
  description: 'A blend of fresh fruits and yogurt for a refreshing drink.',
  imagePath: 'assets/images/smoothie_drink.png', // Update with the correct image path
  price: 3.99,
  availableAddons: [
  Addon(name: 'Protein Powder', price: 1.00),
  Addon(name: 'Chia Seeds', price: 0.50),
  ],
  category: FoodCategory.drinks,
  ),
  Food(
  name: 'Espresso',
  description: 'A strong and bold shot of espresso made from premium coffee beans.',
  imagePath: 'assets/images/espresso_drink.png', // Update with the correct image path
  price: 2.49,
  availableAddons: [
  Addon(name: 'Sugar', price: 0.25),
  Addon(name: 'Cream', price: 0.50),
  ],
  category: FoodCategory.drinks,
  ),

  ];


//   G E T T E R S

List <Food> get menu => _menu;

}
