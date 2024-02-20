import 'package:flutter_exercise/generated/assets.dart';

enum Menu {
  furniture._(
    title: 'Furniture',
    description: 'Here is a sleek and stylish interior scene',
    designer: 'Designer 1',
    pathImage: Assets.imageFurniture,
    route: '/furniture',
    heightCard: 250,
  ),
  mobile._(
    title: 'iPhone',
    description: 'Here is a close-up display of the latest iPhone screen',
    designer: 'Designer 2',
    pathImage: Assets.imageMobile,
    route: '/screen',
    heightCard: 250,
  );

  const Menu._({
    required this.title,
    required this.description,
    required this.designer,
    required this.pathImage,
    required this.route,
    this.heightCard = 220,
  });

  final String title;
  final String description;
  final String designer;
  final String pathImage;
  final String route;

  final double heightCard;
}
