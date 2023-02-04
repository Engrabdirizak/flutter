import 'package:flutter/material.dart';

import 'PostAppbar.dart';
import 'PostBottombar.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage("images/city5.jpg"),
            fit: BoxFit.cover,
            opacity: 0.8,
          )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: PostAppbar(),
        ),
        bottomNavigationBar: PostBottombar(),
      ),
    );
  }
}
