import 'package:flutter/material.dart';
import 'package:waves_clone/actions_row.dart';
import 'package:waves_clone/horizontal_listview.dart';
import 'package:waves_clone/suggestions_grid.dart';
import 'package:waves_clone/waves_theme.dart';
import 'package:waves_clone/welcome_profile.dart';

class ForYouScreen extends StatelessWidget {
  const ForYouScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          const WelcomeProfile(),
          const SizedBox(height: 20),
          const ActionsRow(),
          buildSuggestions(),
          const SuggestionsGrid(),
          const HorizontalListView(),
          SizedBox(
            height: 280,
            width: 360,
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, right: 15.0, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Top Albums',
                        style: WavesTheme.darkTextTheme.headline2,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward,
                          size: 30,
                          color: Colors.purple[600],
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: ListView.separated(
                    itemCount: 5,
                    padding: const EdgeInsets.all(8),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return buildAlbumCol(index);
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(width: 16);
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding buildSuggestions() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
      child: Text(
        'Suggestions',
        style: WavesTheme.darkTextTheme.headline2,
      ),
    );
  }
}

Widget buildAlbumCol(int index) {
  List<String> albumImages = [
    'assets/img/never_land.jpg',
    'assets/img/ricky_album.jpg',
    'assets/img/human_definition.jpg',
    'assets/img/we_are_alone.png',
    'assets/img/bt_blues.jpg'
  ];

  List<String> albumNames = [
    'Never Land II',
    'The Ricky Show',
    'Human Definition',
    'We are alone Together',
    'Blantyre Blues'
  ];

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          albumImages[index],
          width: 170,
          height: 170,
          fit: BoxFit.cover,
        ),
      ),
      Text(albumNames[index]),
    ],
  );
}
