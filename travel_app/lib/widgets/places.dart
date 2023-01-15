import 'package:flutter/material.dart';

class PlacesWidgets extends StatelessWidget {
  final String imageAsset;
  final String placeName;
  final String rating;
  final String locationName;

  const PlacesWidgets({
    required this.imageAsset,
    required this.placeName,
    required this.rating,
    required this.locationName,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 220,
      child: Card(
        elevation: 0.4,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    imageAsset,
                    height: 150,
                    width: double.maxFinite,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 3),
                Row(
                  children: [
                    Text(
                      placeName,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.star,
                      size: 24,
                      color: Color.fromARGB(255, 250, 225, 0),
                    ),
                    Text(
                      rating,
                      style: const TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                      size: 18,
                      color: Colors.black,
                    ),
                    Text(
                      locationName,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
