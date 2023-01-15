import 'package:flutter/material.dart';

class PopularPlacesWidgets extends StatelessWidget {
  final String imageAsset;
  final String placeName;
  final String rating;
  final String locationName;
  final num price;

  const PopularPlacesWidgets({
    required this.imageAsset,
    required this.placeName,
    required this.rating,
    required this.locationName,
    required this.price,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        height: 135,
        width: double.maxFinite,
        child: Card(
          elevation: 0.4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      imageAsset,
                      height: double.maxFinite,
                      width: 130,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          placeName,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        Text(locationName),
                        const SizedBox(height: 10),
                        const Spacer(),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow.shade700,
                              size: 14,
                            ),
                            Text(
                              rating,
                              style: const TextStyle(
                                fontSize: 12,
                              ),
                            ),
                            const Spacer(),
                            RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Theme.of(context).primaryColor,
                                ),
                                text: ('\u{20B9} $price'),
                                children: const [
                                  TextSpan(
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black54,
                                    ),
                                    text: "/Per Person",
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
