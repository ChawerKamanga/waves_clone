import 'package:flutter/material.dart';

class ActionsRow extends StatelessWidget {
  const ActionsRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildIconAction(
            Icons.history,
            'History',
            Colors.blueAccent.withOpacity(0.2),
            Colors.blueAccent[400]!,
            context),
        buildIconAction(Icons.add_to_photos_rounded, 'Last Added',
            Colors.redAccent.withOpacity(0.2), Colors.redAccent[400]!, context),
        buildIconAction(
            Icons.show_chart_outlined,
            'Most Played',
            Colors.purpleAccent.withOpacity(0.2),
            Colors.purpleAccent[400]!,
            context),
        buildIconAction(Icons.shuffle, 'Shuffle',
            Colors.greenAccent.withOpacity(0.2), Colors.green[400]!, context),
      ],
    );
  }

  Column buildIconAction(IconData icon, String actionName, Color bgColor,
      Color iconColor, BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: bgColor,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Icon(
              icon,
              color: iconColor,
            ),
          ),
        ),
        Text(
          actionName,
          style: Theme.of(context).textTheme.bodyText2,
        )
      ],
    );
  }
}
