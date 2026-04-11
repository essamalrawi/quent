import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BrandWidget extends StatelessWidget {
  const BrandWidget({super.key, required this.brandName, required this.image});
  final String brandName;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(60),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.network(
              image,
              placeholderBuilder: (context) =>
                  const CircularProgressIndicator(),
            ),
          ),
          // CachedNetworkImage(
          //   imageUrl: image,
          //   placeholder: (context, url) => const CircularProgressIndicator(),
          //   errorWidget: (context, url, error) => const Icon(Icons.error),
          // ),
        ),
        const SizedBox(height: 16),
        Text(brandName),
      ],
    );
  }
}
