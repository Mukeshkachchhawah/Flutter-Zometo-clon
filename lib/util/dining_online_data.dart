class FoodItemsdinig {
  String name, imageUrl;

  FoodItemsdinig({required this.name, required this.imageUrl});
}

class Restaurants {
  String imageUrl, title, locations, rating, price, timer, minats;

  Restaurants(
      {required this.imageUrl,
      required this.locations,
      required this.price,
      required this.rating,
      required this.title,
      required this.timer,
      required this.minats});
}

List<FoodItemsdinig> foodItemListdinig = [
  FoodItemsdinig(
      name: "Pizza",
      imageUrl:
          "https://media-cdn.tripadvisor.com/media/photo-s/07/64/c5/eb/pizz-traiteur-pizzeria.jpg"),
  FoodItemsdinig(
      name: "Cake",
      imageUrl: "https://giftnmore.in/wp-content/uploads/2022/04/16555.jpg"),
  FoodItemsdinig(
      name: "Sendwiches",
      imageUrl:
          "https://insanelygoodrecipes.com/wp-content/uploads/2021/03/Homemade-Grilled-Cheese-Sandwich-with-Tomatoes-500x500.png"),
  FoodItemsdinig(
      name: "Chawmein",
      imageUrl:
          "https://natashaskitchen.com/wp-content/uploads/2020/03/Chicken-Chow-Mein-4-500x500.jpg"),
  FoodItemsdinig(
      name: "Momos",
      imageUrl:
          "https://geekrobocook.com/wp-content/uploads/2021/04/Fried-veg-momos.jpg"),
  FoodItemsdinig(
      name: "Dosa",
      imageUrl:
          "https://vismaifood.com/storage/app/uploads/public/8b4/19e/427/thumb__700_0_0_0_auto.jpg"),
  FoodItemsdinig(
      name: "Vada Pav",
      imageUrl:
          "https://www.cookwithmanali.com/wp-content/uploads/2018/04/Vada-Pav-500x500.jpg"),
  FoodItemsdinig(
      name: "kachori",
      imageUrl:
          "https://www.vegrecipesofindia.com/wp-content/uploads/2017/03/kachori-recipe-1a-500x375.jpg"),
  FoodItemsdinig(
      name: "Cold Coffee",
      imageUrl:
          "https://mytastycurry.com/wp-content/uploads/2020/04/Cafe-style-cold-coffee-with-icecream.jpg"),
  FoodItemsdinig(
      name: "Somasa", imageUrl: "https://static.toiimg.com/photo/76425511.cms"),
  FoodItemsdinig(
      name: "Chole Bhature",
      imageUrl:
          "https://holycowvegan.net/wp-content/uploads/2008/10/chole-bhatura-chana-bhatura-12.jpg"),
  FoodItemsdinig(
      name: "Pasta",
      imageUrl:
          "https://www.sharmispassions.com/wp-content/uploads/2012/12/FusilliPasta8-500x375.jpg"),
  FoodItemsdinig(
      name: "Idli",
      imageUrl:
          "https://www.mapsofindia.com/ci-moi-images/my-india/Idli-Sambhar.jpg"),
  FoodItemsdinig(
      name: "Pastry",
      imageUrl:
          "https://www.ruchiskitchen.com/wp-content/uploads/2021/05/Eggless-Black-forest-Pastry-recipe-1.jpg"),
  FoodItemsdinig(
      name: "Fries",
      imageUrl:
          "https://www.thestatesman.com/wp-content/uploads/2019/05/french-fries.jpg"),
  FoodItemsdinig(
      name: "Chaat", imageUrl: "https://static.toiimg.com/photo/87888077.cms"),
  FoodItemsdinig(
      name: "Paratha",
      imageUrl:
          "https://www.banglarecipes.com.au/wp-content/uploads/2011/07/aloo-paratha.jpg"),
  FoodItemsdinig(
      name: "Fired Rice",
      imageUrl:
          "https://hips.hearstapps.com/hmg-prod/images/delish-fried-rice-020-2x1-1675707402.jpg?crop=0.8888888888888888xw:1xh;center,top"),
  FoodItemsdinig(
      name: "Mirchi Vada",
      imageUrl: "https://static.toiimg.com/photo/55836049.cms"),
  FoodItemsdinig(
      name: "Biriyani",
      imageUrl:
          "https://healux.in/wp-content/uploads/2020/11/ChickenBiryani.jpg"),
  FoodItemsdinig(
      name: "Biriyani",
      imageUrl:
          "https://healux.in/wp-content/uploads/2020/11/ChickenBiryani.jpg"),
];

List<Restaurants> restaurantListdinig = [
  Restaurants(
      title: "Om Sweet & Snacks",
      locations: "North Indian,  South Indian, Chinese",
      price: "\$ 100",
      rating: "4.2",
      minats: "30 min",
      timer:
          "https://images.vexels.com/media/users/3/192569/isolated/preview/02263aff2eafbbee408f49ae4bac88d5-analog-stopwatch-timer-icon-stroke.png",
      imageUrl:
          "https://assets.limetray.com/assets/image_manager/uploads/8180/omsweets-ss-slide-3.jpg"),
  Restaurants(
    title: "The Masala Story",
    locations: "North Indian, Mughlai, Kebab",
    price: "\$ 300",
    rating: "4.1",
    minats: "50 min",
    timer:
        "https://images.vexels.com/media/users/3/192569/isolated/preview/02263aff2eafbbee408f49ae4bac88d5-analog-stopwatch-timer-icon-stroke.png",
    imageUrl:
        "https://c.ndtvimg.com/2020-01/a39okhfk_620_625x300_21_January_20.jpg",
  ),
  Restaurants(
    title: "Domino's Pizza",
    locations: "Pizza, Fast Food",
    price: "\$ 150",
    rating: "4.1",
    minats: "45 min",
    timer:
        "https://images.vexels.com/media/users/3/192569/isolated/preview/02263aff2eafbbee408f49ae4bac88d5-analog-stopwatch-timer-icon-stroke.png",
    imageUrl:
        "https://www.indianhealthyrecipes.com/wp-content/uploads/2015/10/pizza-recipe-1-500x500.jpg",
  ),
  Restaurants(
    title: "MCDonald's",
    locations: "Burger, Fast Food, Beverages",
    price: "\$ 150",
    rating: "4.1",
    minats: "28 min",
    timer:
        "https://images.vexels.com/media/users/3/192569/isolated/preview/02263aff2eafbbee408f49ae4bac88d5-analog-stopwatch-timer-icon-stroke.png",
    imageUrl:
        "https://www.newfoodmagazine.com/wp-content/uploads/mcdonalds.jpg",
  ),
  Restaurants(
    title: "Gohana Faous Jalebi",
    locations: "Street Food, Mithai",
    price: "\$ 100",
    rating: "4.2",
    minats: "56 min",
    timer:
        "https://images.vexels.com/media/users/3/192569/isolated/preview/02263aff2eafbbee408f49ae4bac88d5-analog-stopwatch-timer-icon-stroke.png",
    imageUrl: "https://pbs.twimg.com/media/EhHIY9CWsAA9rN9.jpg",
  ),
  Restaurants(
    title: "Burger King",
    locations: "Burger, American, Desserts",
    price: "\$ 150",
    rating: "4.2",
    minats: "54 min",
    timer:
        "https://images.vexels.com/media/users/3/192569/isolated/preview/02263aff2eafbbee408f49ae4bac88d5-analog-stopwatch-timer-icon-stroke.png",
    imageUrl:
        "https://media1.s-nbcnews.com/j/newscms/2019_21/2870431/190524-classic-american-cheeseburger-ew-207p_d9270c5c545b30ea094084c7f2342eb4.fit-2000w.jpg",
  ),
  Restaurants(
    title: "Haldiram's",
    locations: "North Indian, Mithai, South Indian",
    price: "\$ 100",
    rating: "4.0",
    minats: "59 min",
    timer:
        "https://images.vexels.com/media/users/3/192569/isolated/preview/02263aff2eafbbee408f49ae4bac88d5-analog-stopwatch-timer-icon-stroke.png",
    imageUrl:
        "https://media.self.com/photos/5ebd7a636ed447b59b846244/4:3/w_2560%2Cc_limit/snack-plate.jpg",
  ),
  Restaurants(
      title: "Om Sweet & Snacks",
      locations: "North Indian,  South Indian, Chinese",
      price: "\$ 100",
      rating: "4.2",
      minats: "55 min",
      timer:
          "https://images.vexels.com/media/users/3/192569/isolated/preview/02263aff2eafbbee408f49ae4bac88d5-analog-stopwatch-timer-icon-stroke.png",
      imageUrl:
          "https://assets.limetray.com/assets/image_manager/uploads/8180/omsweets-ss-slide-3.jpg"),
  Restaurants(
    title: "The Masala Story",
    locations: "North Indian, Mughlai, Kebab",
    price: "\$ 300",
    rating: "4.1",
    minats: "45 min",
    timer:
        "https://images.vexels.com/media/users/3/192569/isolated/preview/02263aff2eafbbee408f49ae4bac88d5-analog-stopwatch-timer-icon-stroke.png",
    imageUrl:
        "https://c.ndtvimg.com/2020-01/a39okhfk_620_625x300_21_January_20.jpg",
  ),
  Restaurants(
    title: "Domino's Pizza",
    locations: "Pizza, Fast Food",
    price: "\$ 150",
    rating: "4.1",
    minats: "32 min",
    timer:
        "https://images.vexels.com/media/users/3/192569/isolated/preview/02263aff2eafbbee408f49ae4bac88d5-analog-stopwatch-timer-icon-stroke.png",
    imageUrl:
        "https://www.indianhealthyrecipes.com/wp-content/uploads/2015/10/pizza-recipe-1-500x500.jpg",
  ),
];
