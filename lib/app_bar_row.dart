import 'package:flutter/material.dart';

class AppBarRow extends StatelessWidget {
  const AppBarRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            size: 28,
          ),
        ),
        Text(
          'Waves',
          style: Theme.of(context).textTheme.headline2,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.settings_outlined,
            size: 28,
          ),
        ),
      ],
    );
  }
}
