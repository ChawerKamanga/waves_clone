import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:waves_clone/waves_theme.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ForYouScreen extends StatelessWidget {
  const ForYouScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
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
              buildIconAction(Icons.history, 'History',
                  Colors.blueAccent.withOpacity(0.4), Colors.blueAccent[400]!),
              buildIconAction(Icons.add_to_photos_rounded, 'Last Added',
                  Colors.redAccent.withOpacity(0.4), Colors.redAccent[400]!),
              buildIconAction(
                  Icons.show_chart_outlined,
                  'Most Played',
                  Colors.purpleAccent.withOpacity(0.4),
                  Colors.purpleAccent[400]!),
              buildIconAction(Icons.shuffle, 'Shuffle',
                  Colors.greenAccent.withOpacity(0.4), Colors.green[400]!),
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
            mainAxisSpacing: 2,
            crossAxisSpacing: 2,
            children: [
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: buildTextCard(),
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
          SizedBox(
            height: 280,
            width: 380,
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, right: 15.0, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Top artists',
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
                    itemCount: 3,
                    padding: const EdgeInsets.all(8),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return buildArtistCol(index);
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(width: 16);
                    },
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
            child: Text(
              'Top Albums',
              style: WavesTheme.darkTextTheme.headline2,
            ),
          ),
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
                        'Top artists',
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

  Container buildTextCard() {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.purple[900]!.withOpacity(0.4),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New',
              style: GoogleFonts.openSans(
                  color: Colors.purple[400],
                  fontWeight: FontWeight.w700,
                  fontSize: 31),
            ),
            Text(
              'music',
              style: GoogleFonts.openSans(
                  color: Colors.purple[400],
                  fontWeight: FontWeight.w700,
                  fontSize: 31),
            ),
            Text(
              'mix',
              style: GoogleFonts.openSans(
                  color: Colors.purple[400],
                  fontWeight: FontWeight.w700,
                  fontSize: 31),
            ),
          ],
        ),
      ),
    );
  }

  Column buildArtistCol(int index) {
    List<String> artistsImages = [
      'assets/img/andy.jpg',
      'assets/img/liwu.jpg',
      'assets/img/suffix.jpg'
    ];

    List<String> artistsNames = ['Andy Mineo', 'Liwu', 'Suffix'];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(200),
          child: Image.asset(
            artistsImages[index],
            width: 170,
            height: 170,
            fit: BoxFit.cover,
          ),
        ),
        Text(artistsNames[index]),
      ],
    );
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
}
