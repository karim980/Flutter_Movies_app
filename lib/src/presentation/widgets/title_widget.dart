import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Migliori Film',
          style: Theme.of(context).textTheme.headline1
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
