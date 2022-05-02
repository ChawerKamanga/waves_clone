import 'package:flutter/material.dart';

class HorizontalListView extends StatelessWidget {
  final String title;
  final bool isForArtist;
  const HorizontalListView(
      {Key? key, required this.title, this.isForArtist = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      width: 380,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.headline2,
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
                return isForArtist
                    ? buildArtistCol(index)
                    : buildAlbumCol(index);
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(width: 16);
              },
            ),
          )
        ],
      ),
    );
  }

  Column buildArtistCol(int index) {
    List<String> artistsImages = [
      'andy.jpg',
      'encanto.jpg',
      'giveon.png',
      'lawi.jpg',
      'suffix.jpg'
    ];

    List<String> artistsNames = [
      'Andy Mineo',
      'Lin-Manuel',
      'Giveon',
      'Lawi',
      'Suffix'
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(200),
          child: Image.asset(
            'assets/img/${artistsImages[index]}',
            width: 170,
            height: 170,
            fit: BoxFit.cover,
          ),
        ),
        Text(artistsNames[index]),
      ],
    );
  }

  Column buildAlbumCol(int index) {
    List<String> albumImages = [
      'never_land.jpg',
      'ricky_album.jpg',
      'human_definition.jpg',
      'we_are_alone.png',
      'bt_blues.jpg'
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
            'assets/img/${albumImages[index]}',
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
