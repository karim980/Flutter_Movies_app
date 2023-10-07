import 'package:flutter/material.dart';
import 'package:migliori_film/src/presentation/widgets/table.dart';

class DetailsScreen extends StatelessWidget {
  final String title;
  final String year;
  final String genre;
  final String plot;
  final String img2;
  final String img;

  DetailsScreen({
    required this.title,
    required this.year,
    required this.genre,
    required this.plot,
    required this.img2,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(img))),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(title, style: theme.headline1),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 20),
                        child: Text(
                          year,
                          style: theme.bodyText1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(genre),
                  SizedBox(
                    height: 10,
                  ),
                  Text(plot, style: theme.headline2),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
