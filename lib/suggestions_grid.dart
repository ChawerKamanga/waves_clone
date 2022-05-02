import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

class SuggestionsGrid extends StatelessWidget {
  const SuggestionsGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StaggeredGrid.count(
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
