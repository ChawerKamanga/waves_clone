import 'package:flutter/material.dart';
import 'package:waves_clone/waves_theme.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

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
          ),
          StaggeredGrid.count(
            crossAxisCount: 5,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            children: [
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: buildImageCard(0),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: buildImageCard(1),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: buildImageCard(2),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: buildImageCard(3),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: buildImageCard(4),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: buildImageCard(5),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: buildImageCard(6),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: buildImageCard(7),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: buildImageCard(8),
              ),
            ],
            // itemBuilder: (context, index) => buildImageCard(index),
          ),
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

  Container buildImageCard(int index) {
    List<String> images = [
      'for_my_friends.jpg',
      'human_definition.jpg',
      'alinafe_art.jpg',
      'the_separation.jpg',
      'freedom.png',
      'hga.jpg',
      'never_land.jpg',
      'the_sword.jpg',
      'we_are_alone.png',
    ];

    return Container(
      margin: const EdgeInsets.all(8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(
          'assets/img/${images[index]}',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
