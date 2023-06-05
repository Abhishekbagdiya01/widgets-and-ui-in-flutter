import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HeroAnim extends StatelessWidget {
  const HeroAnim({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Hero(
            tag: "tag",
            child: InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HeroAnime2(),
                  )),
              child: Lottie.network(
                  "https://assets10.lottiefiles.com/packages/lf20_mrg9xhbm.json",
                  height: 200,
                  width: 200),
            )),
      ),
    );
  }
}

class HeroAnime2 extends StatelessWidget {
  const HeroAnime2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: Hero(
              tag: "tag",
              child: Lottie.network(
                  "https://assets10.lottiefiles.com/packages/lf20_mrg9xhbm.json",
                  height: 300,
                  width: 300)),
        ),
      ),
    );
  }
}
