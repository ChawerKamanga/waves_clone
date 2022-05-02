import 'package:flutter/material.dart';

class WelcomeProfile extends StatelessWidget {
  const WelcomeProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                style: Theme.of(context).textTheme.bodyText2,
              ),
              Text(
                'Chawer',
                style: Theme.of(context).textTheme.headline1,
              ),
            ],
          )
        ],
      ),
    );
  }
}
