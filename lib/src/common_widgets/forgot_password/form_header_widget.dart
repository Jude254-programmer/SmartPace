import 'package:flutter/material.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    required this.heightBetween,
    required this.image,
    required this.title,
    required this.subTitle,
    this.imageHeight = 0.2,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    required this.textAlign,
    super.key,
  });
  final double imageHeight;
  final double heightBetween;
  final String image, title, subTitle;
  final CrossAxisAlignment crossAxisAlignment;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Image(image: AssetImage(image),height: size.height * imageHeight,),
        SizedBox(height: heightBetween,),
        Text(title, style: Theme.of(context).textTheme.headlineLarge,),
        Text(subTitle, style: Theme.of(context).textTheme.bodyLarge,textAlign: textAlign,)
      ],
    );
  }
}
