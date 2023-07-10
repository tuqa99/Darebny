import 'package:flutter/material.dart';

import '../../../const_values.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      color: ConsValues.WHITE,
      child: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, bottom: 70),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(Checkbox.width * 2.5),
                    ),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          blurStyle: BlurStyle.outer,
                          blurRadius: Checkbox.width,
                          color: ConsValues.THEME_5.withOpacity(.1)),
                    ],
                  ),
                  child: CircleAvatar(
                    radius: Checkbox.width * 2.5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(Checkbox.width * 2.5),
                      child: const Image(
                        fit: BoxFit.contain,
                        image: AssetImage('assets/images/13.jpg'),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Daribny Group',
                  style: TextStyle(
                    color: ConsValues.THEME_5,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: height * .08),
            const Column(
              children: <Widget>[
                NewRow(
                  text: 'Settings',
                  icon: Icons.error_outline,
                ),
                SizedBox(
                  height: 20,
                ),
                NewRow(
                  text: 'My Profile',
                  icon: Icons.person_outline,
                ),
                SizedBox(
                  height: 20,
                ),
                NewRow(
                  text: 'Applied',
                  icon: Icons.done_all_outlined,
                ),
                SizedBox(
                  height: 20,
                ),
                NewRow(
                  text: 'Saved',
                  icon: Icons.bookmark_border,
                ),
                SizedBox(
                  height: 20,
                ),
                NewRow(
                  text: 'Favorites',
                  icon: Icons.favorite_border,
                ),
                SizedBox(
                  height: 20,
                ),
                NewRow(
                  text: 'Sign Out',
                  icon: Icons.cancel_outlined,
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class NewRow extends StatelessWidget {
  final IconData icon;
  final String text;

  const NewRow({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          icon,
          color: ConsValues.THEME_5,
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          text,
          style: TextStyle(
            color: ConsValues.THEME_5,
            fontSize: 15,

          ),
        )
      ],
    );
  }
}
