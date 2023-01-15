import 'package:flutter/material.dart';

import '../widgets/popular.dart';

class PopularPlaces extends StatelessWidget {
  const PopularPlaces({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        PopularPlacesWidgets(
          imageAsset: "assets/popular/popular1.jpeg",
          placeName: 'Jog Falls, India',
          locationName: 'sagar',
          rating: '4.6',
          price: 600,
        ),
        PopularPlacesWidgets(
          imageAsset: "assets/popular/popular2.jpeg",
          placeName: 'RK Beach Resort',
          locationName: 'Goa',
          rating: '4.6',
          price: 2900,
        ),
        PopularPlacesWidgets(
          imageAsset: "assets/popular/popular3.jpeg",
          placeName: 'Maldives Beach Resort',
          locationName: 'Maldives',
          rating: '4.8',
          price: 8000,
        ),
        PopularPlacesWidgets(
          imageAsset: "assets/popular/popular4.jpeg",
          placeName:'RO Resort',
          locationName: 'Maldives',
          rating: '4.7',
          price: 7500,
        ),
      ],
    );
  }
}
