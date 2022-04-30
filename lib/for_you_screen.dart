import 'package:flutter/material.dart';
import 'package:waves_clone/waves_theme.dart';

class ForYouScreen extends StatelessWidget {
  const ForYouScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/img/profile_img.jpg'),
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome,',
                      style: WavesTheme.darkTextTheme.bodyText2,
                    ),
                    Text(
                      'Chawer',
                      style: WavesTheme.darkTextTheme.headline1,
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildIconAction(Icons.history, 'History', Colors.blueAccent,
                  Colors.blueAccent[400]!),
              buildIconAction(Icons.add_to_photos_rounded, 'Last Added',
                  Colors.redAccent, Colors.redAccent[400]!),
              buildIconAction(Icons.auto_graph, 'Most Played',
                  Colors.purpleAccent, Colors.purpleAccent[400]!),
              buildIconAction(Icons.shuffle, 'Shuffle', Colors.greenAccent,
                  Colors.green[400]!),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
            child: Text(
              'Suggestions',
              style: WavesTheme.darkTextTheme.headline2,
            ),
          )
        ],
      ),
    );
  }

  Column buildIconAction(
      IconData icon, String actionName, Color bgColor, Color iconColor) {
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
          style: WavesTheme.darkTextTheme.bodyText2,
        )
      ],
    );
  }
}
