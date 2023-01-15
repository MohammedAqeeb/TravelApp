import 'package:flutter/material.dart';

import '../widgets/places.dart';

class PlacesRecommend extends StatelessWidget {
  const PlacesRecommend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 225,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Row(
            children: const [
              PlacesWidgets(
                imageAsset: "assets/img/tajmahal.jpeg",
                locationName: 'Agra, India',
                placeName: 'Taj Mahal',
                rating: '4.4',
              ),
              PlacesWidgets(
                imageAsset: "assets/img/download.jpeg",
                locationName: 'Bali',
                placeName: 'Bali',
                rating: '4.5',
              ),
              PlacesWidgets(
                imageAsset: "assets/img/images_a.jpeg",
                locationName: 'kerala, India',
                placeName: 'kerala',
                rating: '4.3',
              ),
              PlacesWidgets(
                imageAsset: "assets/img/paris.jpeg",
                locationName: 'Eiffel Tower',
                placeName: 'paris,France',
                rating: '4.7',
              ),
              PlacesWidgets(
                imageAsset: 'assets/img/images.jpeg',
                placeName: 'leaning Tower',
                rating: '4.1',
                locationName: ' Pisa, Italy',
              )
            ],
          );
        },
        separatorBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 10),
          );
        },
        itemCount: 1,
      ),
    );
  }
}
