//Nguyen Anh Quan

class Food {
  String? imgUrl;
  String? desc;
  String? name;
  String? waitTIme;
  num? score;
  String? cal;
  num? price;
  num? quantity;
  List<Map<String, String>>? ingredients;
  String? about;
  bool highLight;
  Food({
    this.imgUrl,
    this.desc,
    this.name,
    this.waitTIme,
    this.score,
    this.cal,
    this.price,
    this.quantity,
    this.ingredients,
    this.about,
    this.highLight = false,
  });
  static List<Food> generateRecommendFoods() {
    return [
      Food(
        imgUrl: 'assets/images/dish1.png',
        desc: 'No1. in sales',
        name: 'Soba Soup',
        waitTIme: '50min',
        score: 4.8,
        cal: '325 Kcal',
        price: 12,
        quantity: 1,
        ingredients: [
          {'Noodle': 'assets/images/ingre1.png'},
          {'Shrimp': 'assets/images/ingre2.png'},
          {'Egg': 'assets/images/ingre3.png'},
          {'Scallion': 'assets/images/ingre4.png'},
          {'Noodle': 'assets/images/ingre1.png'},
        ],
        about:
            'Soba Noodle Soup, or Toshikoshi Soba, symbolizes good luck in the new year and is traditionally eaten by the Japanese on the 31st of December.',
        highLight: true,
      ),
      Food(
        imgUrl: 'assets/images/dish2.png',
        desc: 'No1. in sales',
        name: 'Sei Ua Samun Phrai',
        waitTIme: '50min',
        score: 4.6,
        cal: '325 Kcal',
        price: 14,
        quantity: 1,
        ingredients: [
          {'Noodle': 'assets/images/ingre1.png'},
          {'Shrimp': 'assets/images/ingre2.png'},
          {'Egg': 'assets/images/ingre3.png'},
          {'Scallion': 'assets/images/ingre4.png'},
          {'Noodle': 'assets/images/ingre1.png'},
        ],
        about:
            ' A vibrant Thai sausage made with ground chicken, plus its spicy chile dip, from Chef Parnass Savang of Atlanta\'s Talat Market.',
        highLight: false,
      ),
      Food(
        imgUrl: 'assets/images/dish3.png',
        desc: 'No1. in sales',
        name: 'Ratatoullie Pasta',
        waitTIme: '50min',
        score: 4.5,
        cal: '325 Kcal',
        price: 15,
        quantity: 1,
        ingredients: [
          {'Noodle': 'assets/images/ingre1.png'},
          {'Shrimp': 'assets/images/ingre2.png'},
          {'Egg': 'assets/images/ingre3.png'},
          {'Scallion': 'assets/images/ingre4.png'},
          {'Noodle': 'assets/images/ingre1.png'},
        ],
        about:
            'A ratatouille is, by its very definition, a combination of vegetables fried and then simmered in a tomato sauce.',
        highLight: false,
      )
    ];
  }

  static List<Food>? generatePopularFood() {
    return [
      Food(
          imgUrl: 'assets/images/dish4.png',
          desc: 'Most Popular',
          name: 'Tomato Chicken',
          waitTIme: '50min',
          score: 4.5,
          cal: '325 Kcal',
          price: 18,
          quantity: 1,
          ingredients: [
            {'Noodle': 'assets/images/ingre1.png'},
            {'Shrimp': 'assets/images/ingre2.png'},
            {'Egg': 'assets/images/ingre3.png'},
            {'Scallion': 'assets/images/ingre4.png'},
            {'Noodle': 'assets/images/ingre1.png'},
          ],
          about:
              'Tomato Chicken Curry (Tamatar Murgh) is an Indian chicken curry cooked with lots of fresh tomatoes and mild spices. It goes very well with Indian bread or steamed rice.',
          highLight: false),
      Food(
          imgUrl: 'assets/images/dish1.png',
          desc: 'Most Popular',
          name: 'Soba Soup',
          waitTIme: '50min',
          score: 4.4,
          cal: '325 Kcal',
          price: 21,
          quantity: 1,
          ingredients: [
            {'Noodle': 'assets/images/ingre1.png'},
            {'Shrimp': 'assets/images/ingre2.png'},
            {'Egg': 'assets/images/ingre3.png'},
            {'Scallion': 'assets/images/ingre4.png'},
            {'Noodle': 'assets/images/ingre1.png'},
          ],
          about:
              'Soba Noodle Soup, or Toshikoshi Soba, symbolizes good luck in the new year and is traditionally eaten by the Japanese on the 31st of December.',
          highLight: false),
    ];
  }

  static List<Food>? generateNoodlesFood() {
    return [
      Food(
          imgUrl: 'assets/images/images.jpg',
          desc: 'Best Sales',
          name: 'Glass Noodles',
          waitTIme: '50min',
          score: 4.4,
          cal: '325 Kcal',
          price: 21,
          quantity: 1,
          ingredients: [
            {'Noodle': 'assets/images/ingre1.png'},
            {'Shrimp': 'assets/images/ingre2.png'},
            {'Egg': 'assets/images/ingre3.png'},
            {'Scallion': 'assets/images/ingre4.png'},
            {'garlic': 'assets/images/toi.jpg'},
            {'chilli': 'assets/images/ot.jpg'},
          ],
          about:
              'Glass noodles are a popular ingredient in Asian cuisine, and can be used in a variety of dishes, such as soups, stir-fries, and salads. They have a mild flavor and a chewy texture.',
          highLight: true),
      Food(
          imgUrl: 'assets/images/dish1.png',
          desc: 'Most Popular',
          name: 'Soba Soup ',
          waitTIme: '50min',
          score: 4.5,
          cal: '325 Kcal',
          price: 14,
          quantity: 1,
          ingredients: [
            {'Noodle': 'assets/images/ingre1.png'},
            {'Shrimp': 'assets/images/ingre2.png'},
            {'Egg': 'assets/images/ingre3.png'},
            {'Scallion': 'assets/images/ingre4.png'},
            {'Noodle': 'assets/images/ingre1.png'},
          ],
          about:
              'Soba Noodle Soup, or Toshikoshi Soba, symbolizes good luck in the new year and is traditionally eaten by the Japanese on the 31st of December.',
          highLight: false),
      Food(
          imgUrl: 'assets/images/noodles.jpg',
          desc: 'Most Popular',
          name: 'Somen Noodles',
          waitTIme: '50min',
          score: 4.4,
          cal: '325 Kcal',
          price: 21,
          quantity: 1,
          ingredients: [
            {'Noodle': 'assets/images/ingre1.png'},
            {'Shrimp': 'assets/images/ingre2.png'},
            {'Egg': 'assets/images/ingre3.png'},
            {'Scallion': 'assets/images/ingre4.png'},
          ],
          about:
              'Somen noodles are a light and refreshing dish, and are perfect for a hot summer day. They are also a good source of carbohydrates and protein.',
          highLight: false),
    ];
  }

  static List<Food>? generatePizzaFood() {
    return [
      Food(
          imgUrl: 'assets/images/pizza-5.png',
          desc: 'Best Sales',
          name: 'Hot Pizza',
          waitTIme: '50min',
          score: 4.5,
          cal: '325 Kcal',
          price: 18,
          quantity: 1,
          ingredients: [
            {'Wheat flour': 'assets/images/botmy.jpg'},
            {'Tomato': 'assets/images/cachua.jpg'},
            {'olives': 'assets/images/quaoluu.jpg'},
            {'beef': 'assets/images/thibo.jpg'},
            {'cheese': 'assets/images/phomai.jpg'},
            {'chilli': 'assets/images/ot.jpg'},
          ],
          about:
              'A pizza with a spicy tomato sauce, often topped with chili peppers or jalapenos. The heat of the curry is infused into the pizza, creating a bold and fiery flavor.',
          highLight: true),
      Food(
          imgUrl: 'assets/images/pizza-6.png',
          desc: 'Most Popular',
          name: 'Chicago Style Pizza',
          waitTIme: '50min',
          score: 4.4,
          cal: '325 Kcal',
          price: 21,
          quantity: 1,
          ingredients: [
            {'Wheat flour': 'assets/images/botmy.jpg'},
            {'Tomato': 'assets/images/cachua.jpg'},
            {'olives': 'assets/images/quaoluu.jpg'},
            {'beef': 'assets/images/thibo.jpg'},
            {'cheese': 'assets/images/phomai.jpg'},
          ],
          about:
              'A pizza with a thick, rich tomato sauce and a deep-dish crust. The sauce is hearty and flavorful, and the crust is buttery and doughy.',
          highLight: false),
      Food(
          imgUrl: 'assets/images/pizza-8.png',
          desc: 'Most Popular',
          name: 'Sicilian Style Pizza',
          waitTIme: '50min',
          score: 4.4,
          cal: '325 Kcal',
          price: 21,
          quantity: 1,
          ingredients: [
            {'Wheat flour': 'assets/images/botmy.jpg'},
            {'Tomato': 'assets/images/cachua.jpg'},
            {'olives': 'assets/images/quaoluu.jpg'},
            {'beef': 'assets/images/thibo.jpg'},
            {'cheese': 'assets/images/phomai.jpg'},
          ],
          about:
              ' A pizza with a focaccia-like crust, olive oil, and fresh herbs. The crust is light and airy, and the herbs add a fresh and vibrant flavor.',
          highLight: false),
    ];
  }
}
