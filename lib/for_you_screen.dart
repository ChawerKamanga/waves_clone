import 'package:flutter/material.dart';
import 'package:waves_clone/actions_row.dart';
import 'package:waves_clone/app_bar_row.dart';
import 'package:waves_clone/horizontal_listview.dart';
import 'package:waves_clone/suggestions_grid.dart';
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
          const AppBarRow(),
          const SizedBox(height: 15),
          const WelcomeProfile(),
          const SizedBox(height: 20),
          const ActionsRow(),
          buildSuggestions(context),
          const SuggestionsGrid(),
          const HorizontalListView(
            title: 'Top Artists',
          ),
          const HorizontalListView(
            title: 'Top Albums',
            isForArtist: false,
          ),
        ],
      ),
    );
  }

  Padding buildSuggestions(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
      child: Text(
        'Suggestions',
        style: Theme.of(context).textTheme.headline2,
      ),
    );
  }
}
