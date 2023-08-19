import 'package:travel_app_ui/app/data/constants/app_assets.dart';

class LargeTileModel {
  String title;
  String price;
  String image;

  LargeTileModel(
      {required this.title, required this.image, required this.price});
}

List myLargeTileList = [
  LargeTileModel(
    title: "Giant's Causeway, Ireland",
    image: AppAssets.kPicture4,
    price: "130",
  ),
  LargeTileModel(
    title: "Chittorgarh Fort, India",
    image: AppAssets.kPicture3,
    price: "150",
  ),
  LargeTileModel(
    title: "Santorini Island, Greece",
    image: AppAssets.kPicture5,
    price: "110",
  ),
  LargeTileModel(
    title: "Ha Long Bay, Vietnam",
    image: AppAssets.kPicture6,
    price: "180",
  ),
  LargeTileModel(
    title: "Kri Island, Indonesia",
    image: AppAssets.kPicture2,
    price: "140",
  ),
  LargeTileModel(
    title: "Raja Ampat, Indonesia",
    image: AppAssets.kPicture1,
    price: "190",
  ),
];
