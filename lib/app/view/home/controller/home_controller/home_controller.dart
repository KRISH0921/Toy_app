import 'package:get/get.dart';
import 'package:toy_app/app/view/home/model/home_model.dart';

class HomeController extends GetxController{

  List<HomeModel> aroundYou  = [

    HomeModel(
      image: "assets/images/TheCrib.png",
      subImage: "assets/images/Like.svg",
      title: "The Crib Childcare",
      icon: "assets/images/location.svg",
      location: "Distance (5km)",
      price: "\$150.00",
      subIcon: "assets/images/star.svg",
      rating: "4.4",
    ),
    HomeModel(
      image: "assets/images/Merry.png",
      subImage: "assets/images/Like.svg",
      title: "Merry Minis Childcare",
      icon: "assets/images/location.svg",
      location: "Distance (2km)",
      price: "\$100.00",
      subIcon: "assets/images/star.svg",
      rating: "4.4",
    ),
  ];
  List<HomeModel> popularForYou  = [

    HomeModel(
      image: "assets/images/toys.png",
      subImage: "assets/images/Like.svg",
      title: "Tiny Tots Daycare",
      icon: "assets/images/location.svg",
      location: "Distance (6km)",
      price: "\$100.00",
      subIcon: "assets/images/star.svg",
      rating: "4.4",
    ),
    HomeModel(
      image: "assets/images/childcare.png",
      subImage: "assets/images/Like.svg",
      title: "The Crib Childcare",
      icon: "assets/images/location.svg",
      location: "Distance (10km)",
      price: "\$150.00",
      subIcon: "assets/images/star.svg",
      rating: "4.4",
    ),
  ];
  List<HomeModel> articleForYou  = [

    HomeModel(
      image: "assets/images/one.png",
      subImage: "assets/images/Like.svg",
      title: "Health And Other Effects on \nChildren",
      icon: "assets/images/location.svg",
      location: "Guy Hawkins",
    ),
    HomeModel(
      image: "assets/images/two.png",
      subImage: "assets/images/Like.svg",
      title: "Health And Other Effects on \nChildren",
      icon: "assets/images/location.svg",
      location: "Guy Hawkins",
    ),
  ];

}