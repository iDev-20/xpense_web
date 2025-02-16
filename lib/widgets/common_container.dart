import 'package:flutter/material.dart';
import 'package:xpense_web/utils/app_colors.dart';
import 'package:xpense_web/utils/constants.dart';

Widget commonContainer(
  String smallHeading,
  mainHeading,
  description,
  image,
  bool imageLeft,
) {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.symmetric(
      horizontal: pageWidth! / 10,
      vertical: 30,
    ),
    child: Row(
      children: [
        imageLeft
            ? Expanded(
                child: Container(
                  height: 530,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.contain),
                  ),
                ),
              )
            : Container(),
        Expanded(
          child: Column(
            crossAxisAlignment:
                imageLeft ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              Text(
                smallHeading.toUpperCase(),
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                mainHeading,
                textAlign: imageLeft ? TextAlign.right : TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: pageWidth! / 20,
                    fontWeight: FontWeight.bold,
                    height: 1.1),
              ),
              const SizedBox(height: 10),
              Text(
                description,
                textAlign: imageLeft ? TextAlign.right : TextAlign.left,
                style: TextStyle(
                  color: Colors.grey[400],
                    fontSize: pageWidth! / 70,
                ),
              ),
              const SizedBox(height: 20),
              TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: AppColors.primary,
                ),
                label: Text(
                  'Learn more',
                  style: TextStyle(color: AppColors.primary),
                ),
              ),
            ],
          ),
        ),
        !imageLeft
            ? Expanded(
                child: Container(
                  height: 530,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.contain),
                  ),
                ),
              )
            : Container(),
      ],
    ),
  );
}

Widget commonContainerMobile(
  String smallHeading,
  mainHeading,
  description,
  image,
) {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.symmetric(
      horizontal: pageWidth! / 10,
      vertical: 30,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.contain),
          ),
        ),
        const SizedBox(height: 20),
        Text(
          smallHeading.toUpperCase(),
          style: TextStyle(
            color: Colors.grey[400],
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          mainHeading,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black,
              fontSize: pageWidth! / 10,
              fontWeight: FontWeight.bold,
              height: 1.1),
        ),
        const SizedBox(height: 10),
        Text(
          description,
          textAlign: TextAlign.center,  
          style: TextStyle(
            color: Colors.grey[400],
          ),
        ),
        const SizedBox(height: 20),
        TextButton.icon(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_forward_ios,
            size: 20,
            color: AppColors.primary,
          ),
          label: Text(
            'Learn more',
            style: TextStyle(color: AppColors.primary),
          ),
        ),
      ],
    ),
  );
}
