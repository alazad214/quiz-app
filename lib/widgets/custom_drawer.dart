import 'package:flutter/material.dart';


class Custom_Drawer extends StatelessWidget {
  Custom_Drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blueGrey,
      child: ListView(
        children: [
          DrawerHeader(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: SizedBox(
                      height: 50, child: Image.asset("assets/images/quiz.jpg"))),
              const SizedBox(height: 10),
              const Text(
                "Quiz App",
                style: TextStyle(color: Colors.white70),
              )
            ],
          )),
          customListtile(
            Icons.home,
            "H O M E",
            () {
              Navigator.pop(context);
            },
          ),
          customListtile(Icons.settings, "S E T T I N G S", () {}),
          customListtile(Icons.logout, "L O G  O U T", () {}),
        ],
      ),
    );
  }
}

Widget customListtile(icon, text, ontap) {
  return InkWell(
    onTap: ontap,
    child: ListTile(
      leading: IconButton(
          onPressed: () {},
          icon: Icon(
            icon,
            color: Colors.white,
          )),
      title: Text(
        text,
        style:
            const TextStyle(fontWeight: FontWeight.w500, color: Colors.white70),
      ),
    ),
  );
}
