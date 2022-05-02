import 'package:flutter/material.dart';

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({Key? key}) : super(key: key);

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
                  'Top artists',
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
                return buildArtistCol(index);
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
}
