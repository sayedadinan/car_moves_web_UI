import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(46),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, -2),
              blurRadius: 30,
              color: Colors.black.withOpacity(0.16),
            )
          ]),
      child: Row(
        children: [
          const SizedBox(
            width: 15,
          ),
          Text(
            'Car Movez.'.toUpperCase(),
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          MenuItem(() {}, title: 'home'),
          MenuItem(() {}, title: 'about'),
          MenuItem(() {}, title: 'pricing'),
          MenuItem(() {}, title: 'contact'),
          MenuItem(() {}, title: 'Login'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Sign In'.toUpperCase(),
                )),
          )
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String title;
  final Function press;
  const MenuItem(
    this.press, {
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          title.toUpperCase(),
          style: const TextStyle(
              fontSize: 22,
              // fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 133, 122, 122)),
        ),
      ),
    );
  }
}
