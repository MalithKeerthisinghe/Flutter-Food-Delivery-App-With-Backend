import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/cart_item.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  // list of food menu
  final List<Food> _menu = [
    // burgers
    Food(
      name: "Cheese Burger",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/burgers/cheeseburger.jpeg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Chicken Burger",
      description:
          "Smoky BBQ sauce, crispy bacon, and onion rings make this burger a savory delight",
      imagePath: "lib/images/burgers/chickenburger.jpeg",
      price: 10.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Grilled Onions", price: 0.99),
        Addon(name: "Jalapenos", price: 1.49),
        Addon(name: "Extra BBQ sauce", price: 1.99),
      ],
    ),
    Food(
      name: "Hamburger",
      description:
          "Juicy ham, tangy mustard, and melted Swiss cheese come together in this irresistible burger classic.",
      imagePath: "lib/images/burgers/hamburger.jpeg",
      price: 9.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Grilled Mushrooms", price: 1.49),
        Addon(name: "Extra sauce", price: 2.99),
      ],
    ),
    Food(
      name: "Onion Burger",
      description:
          "Caramelized onions, zesty aioli, and gooey cheddar make this burger an onion lover’s dream.",
      imagePath: "lib/images/burgers/onionburger.jpeg",
      price: 9.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Extra onion", price: 0.99),
        Addon(name: "Extra sauce", price: 2.99),
      ],
    ),
    Food(
      name: "Turkey Burger",
      description:
          "Herbed turkey patty, creamy avocado, and a touch of cranberry sauce create a flavorful twist on this turkey burger.",
      imagePath: "lib/images/burgers/turkeyburger.jpeg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Extra avocado", price: 1.49),
        Addon(name: "Extra cranberry sauce", price: 0.99),
      ],
    ),

    // salads
    Food(
      name: "Caesar Salad",
      description:
          "Crisp romaine, creamy Caesar dressing, crunchy croutons, and shaved Parmesan make this salad a timeless classic.",
      imagePath: "lib/images/salads/caesarsalad.jpeg",
      price: 7.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Anchovies", price: 1.49),
        Addon(name: "Extra Parmesan", price: 1.99),
      ],
    ),
    Food(
      name: "Cobb Salad",
      description:
          "Fresh greens, tender chicken, crispy bacon, creamy avocado, hard-boiled eggs, and tangy blue cheese crumble into this hearty Cobb salad delight.",
      imagePath: "lib/images/salads/cobbsalad.jpeg",
      price: 8.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Bacon", price: 0.99),
        Addon(name: "Tender Chicken", price: 1.49),
        Addon(name: "Extra avocado", price: 1.49),
      ],
    ),
    Food(
      name: "Fattoush",
      description:
          "Fresh greens, juicy tomatoes, crunchy cucumbers, crispy pita chips, and a zesty sumac dressing make this Fattoush a vibrant Mediterranean favorite.",
      imagePath: "lib/images/salads/fattoush.jpeg",
      price: 7.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra tomatoes", price: 2.99),
        Addon(name: "Extra cucumbers", price: 3.99),
        Addon(name: "Extra pita chips", price: 1.99),
      ],
    ),
    Food(
      name: "Greek Salad",
      description:
          "Crunchy cucumbers, ripe tomatoes, tangy feta, briny olives, and a drizzle of olive oil bring the Mediterranean to your plate with this classic Greek salad.",
      imagePath: "lib/images/salads/greeksalad.jpeg",
      price: 5.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra tomatoes", price: 2.99),
        Addon(name: "Extra olives", price: 0.99),
        Addon(name: "Extra cucumbers", price: 3.99),
      ],
    ),
    Food(
      name: "Green Salad",
      description:
          "Fresh mixed greens, crisp cucumbers, juicy cherry tomatoes, and a light vinaigrette make this green salad a refreshing and simple delight.",
      imagePath: "lib/images/salads/greensalad.jpeg",
      price: 7.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra cherry", price: 1.99),
        Addon(name: "Extra tomatoes", price: 2.99),
        Addon(name: "Extra cucumbers", price: 3.99),
      ],
    ),

    // sides
    Food(
      name: "Coleslaw",
      description:
          "Crisp shredded cabbage, sweet carrots, and a creamy tangy dressing make this coleslaw a classic, refreshing favorite.",
      imagePath: "lib/images/sides/coleslaw.jpeg",
      price: 5.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra carrots", price: 2.99),
        Addon(name: "Extra cabbage", price: 1.99),
        Addon(name: "Tangy", price: 0.99),
      ],
    ),
    Food(
      name: "French Fries",
      description:
          "Golden, crispy fries with a perfect balance of salt make these French fries the ultimate snack or side dish.",
      imagePath: "lib/images/sides/frenchfries.jpeg",
      price: 4.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra fries", price: 1.99),
        Addon(name: "Extra Mayo", price: 1.49),
        Addon(name: "Extra sauce", price: 2.99),
      ],
    ),
    Food(
      name: "Roasted Carrots",
      description:
          "Sweet, tender roasted carrots with a caramelized glaze and a hint of earthy herbs make this side dish a flavorful delight.",
      imagePath: "lib/images/sides/roastedcarrots.jpeg",
      price: 3.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra carrots", price: 1.99),
        Addon(name: "Extra Mayo", price: 1.49),
        Addon(name: "Extra sauce", price: 2.99),
      ],
    ),
    Food(
      name: "Roasted Vegetables",
      description:
          "Vibrant roasted vegetables, caramelized to perfection with a blend of savory herbs, offer a delicious and hearty side dish.",
      imagePath: "lib/images/sides/roastedvegetables.jpeg",
      price: 5.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra herbs", price: 2.99),
        Addon(name: "Extra Mayo", price: 1.49),
        Addon(name: "Extra sauce", price: 2.99),
      ],
    ),
    Food(
      name: "Skillet Corn",
      description:
          "Sweet, tender corn cooked to perfection in a skillet, with a touch of butter and seasonings, makes this dish a savory, satisfying treat.",
      imagePath: "lib/images/sides/skilletcorn.jpeg",
      price: 5.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra butter", price: 1.29),
        Addon(name: "Extra seasonings", price: 1.49),
        Addon(name: "Extra sauce", price: 2.99),
      ],
    ),

    // desserts
    Food(
      name: "Brownies",
      description:
          "Rich, fudgy brownies with a perfectly chewy texture and a hint of chocolate make every bite an irresistible delight.",
      imagePath: "lib/images/desserts/brownies.jpeg",
      price: 6.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra chocolate", price: 1.99),
        Addon(name: "Whipped cream", price: 2.99),
        Addon(name: "Extra nuts", price: 3.99),
      ],
    ),
    Food(
      name: "Jujubes",
      description:
          "Chewy, fruity jujubes in vibrant colors deliver a burst of sweetness with every bite, making them a fun and nostalgic treat.",
      imagePath: "lib/images/desserts/jujubes.jpeg",
      price: 3.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra jujubes", price: 2.49),
        Addon(name: "Extra cup", price: 2.79),
        Addon(name: "Extra nuts", price: 3.99),
      ],
    ),
    Food(
      name: "Short Bread",
      description:
          "Buttery, melt-in-your-mouth shortbread cookies with a delicate crumb and rich flavor make every bite a delightful indulgence.",
      imagePath: "lib/images/desserts/shortbread.jpeg",
      price: 8.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra butter", price: 2.19),
        Addon(name: "Whipped cream", price: 2.99),
        Addon(name: "Extra jam", price: 0.99),
      ],
    ),
    Food(
      name: "Tiramisu",
      description:
          "Layers of creamy mascarpone, coffee-soaked ladyfingers, and a dusting of cocoa come together in this indulgent tiramisu, creating a rich and irresistible dessert.",
      imagePath: "lib/images/desserts/shortbread.jpeg",
      price: 5.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra chocolate", price: 1.99),
        Addon(name: "Whipped cream", price: 2.99),
        Addon(name: "Fresh berries", price: 1.99),
      ],
    ),
    Food(
      name: "Watalappan",
      description:
          "Silky smooth watalappan, made with creamy coconut milk, rich jaggery, and aromatic spices, comes together in a decadent dessert that’s both comforting and irresistible.",
      imagePath: "lib/images/desserts/watalappan.jpeg",
      price: 4.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Coconut flakes", price: 2.99),
        Addon(name: "Pice of jaggery", price: 0.99),
        Addon(name: "Extra nuts", price: 3.99),
      ],
    ),

    // drinks
    Food(
      name: "Avocado Drink",
      description:
          "Velvety avocado blended with sweetened condensed milk and a hint of vanilla creates a smooth, refreshing drink that’s both creamy and indulgent.",
      imagePath: "lib/images/drinks/avacadodrink.jpeg",
      price: 3.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Ice cream", price: 0.99),
        Addon(name: "Churros", price: 1.99),
        Addon(name: "Extra nuts", price: 2.99),
      ],
    ),
    Food(
      name: "Grape Soda",
      description:
          "Chilled grape soda, with its fizzy effervescence and sweet, fruity burst, offers a refreshing and delightful sip that’s both lively and satisfying.",
      imagePath: "lib/images/drinks/grapesoda.jpeg",
      price: 4.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Fruit pieces", price: 0.99),
        Addon(name: "Gummies", price: 1.99),
        Addon(name: "Extra soda", price: 2.99),
      ],
    ),
    Food(
      name: "Lemon Tea",
      description:
          "Freshly brewed lemon tea, with its tangy citrus kick and soothing warmth, delivers a refreshing and invigorating sip that’s both calming and revitalizing.",
      imagePath: "lib/images/drinks/lemontea.jpeg",
      price: 6.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Fruit pieces", price: 0.99),
        Addon(name: "Scones", price: 1.49),
        Addon(name: "Extra nuts", price: 2.99),
      ],
    ),
    Food(
      name: "Mocktail",
      description:
          "Vibrant mocktail, with its mix of fresh fruit juices, a splash of soda, and a hint of mint, offers a refreshing, fizzy burst that’s both lively and rejuvenating.",
      imagePath: "lib/images/drinks/mocktail.jpeg",
      price: 7.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Fruit pieces", price: 0.99),
        Addon(name: "Cheese platter", price: 1.59),
        Addon(name: "Extra nuts", price: 2.99),
      ],
    ),
    Food(
      name: "Raspberry Lemonade",
      description:
          "Refreshing raspberry lemonade, with its tangy citrus twist, sweet berry infusion, and crisp finish, delivers a burst of vibrant flavor that's both tart and invigorating.",
      imagePath: "lib/images/drinks/raspberry lemonade.jpeg",
      price: 7.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Fruit pieces", price: 0.99),
        Addon(name: "Lemon bars", price: 0.99),
        Addon(name: "Cheese platter", price: 1.59),
      ],
    ),
  ];

  /*

  G E T T E R S

  */

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  /*

  O P E R A T I O N S
  
  */

  // user cart
  final List<CartItem> _cart = [];

  // add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    // see if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food items are the same
      bool isSameFood = item.food == food;

      // check if the list of selected addons are the same
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    // if item already exist, increase it's quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }

    // otherwise, add a new cart item to the cart
    else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }
  }

  // remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  // get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  // get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

  // clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  /*

  H E L P E R S
  
  */

  // generate a receipt

  // format double value into money

  // format list of addons into a string summary
}
