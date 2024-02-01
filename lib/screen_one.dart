import 'package:flutter/material.dart';
import 'package:ui1/icons/custom_icons_icons.dart';
import 'package:ui1/screen2/screen_two_nav.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  bool switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                  return const ScreenTwo();
                }));
              },
              icon: const Icon(Icons.arrow_back, color: Colors.white)),
          backgroundColor: Colors.blue,
          title: const Text('Additonal Information',
              style: TextStyle(color: Colors.white))),
      body: SafeArea(
          child: Container(
        padding: const EdgeInsetsDirectional.all(5),
        child: ListView(
          children: [
            SizedBox(
                child: buildListTile(
                    icon1: Icons.share_outlined,
                    title: 'Share',
                    icon2: Icons.arrow_forward_ios_rounded,
                    switchNeed: false)),
            SizedBox(
                child: buildListTile(
                    icon1: Icons.mode_comment_rounded,
                    title: 'Change Language',
                    icon2: Icons.arrow_forward_ios_rounded,
                    switchNeed: false)),
            SizedBox(
                child: buildListTile(
                    icon1: CustomIcons.whatsapp,
                    title: 'Whatsapp Chat Support',
                    switchNeed: true)),
            SizedBox(
                child: buildListTile(
                    icon1: CustomIcons.lock,
                    title: 'Privacy Policy',
                    switchNeed: false)),
            SizedBox(
                child: buildListTile(
                    icon1: Icons.star_border_outlined,
                    title: 'Rate Us',
                    switchNeed: false)),
            SizedBox(
                child: buildListTile(
                    icon1: CustomIcons.logout,
                    title: 'Sign Out',
                    switchNeed: false)),
          ],
        ),
      )),
    );
  }

  Widget buildListTile(
      {required IconData icon1,
      required String title,
      IconData? icon2,
      required bool switchNeed}) {
    return ListTile(
      onTap: () {},
      leading: Icon(icon1),
      title: Text(title),
      trailing: (icon2 != null)
          ? Icon(icon2)
          : (icon2 == null && switchNeed == true)
              ? Switch(
                  value: switchValue,
                  trackColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.disabled)) {
                      return Colors.blue.shade300.withOpacity(.48);
                    } else {
                      return Colors.blue.shade300;
                    }
                  }),
                  thumbColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.disabled)) {
                      return const Color.fromARGB(255, 0, 123, 224)
                          .withOpacity(.48);
                    }
                    return const Color.fromARGB(255, 0, 123, 224);
                  }),
                  onChanged: (value) {
                    setState(() {
                      switchValue = value;
                    });
                  })
              : null,
    );
  }
}
