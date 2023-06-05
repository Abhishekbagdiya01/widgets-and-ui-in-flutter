import 'package:flutter/material.dart';

class AvailableWallpaperScreen extends StatelessWidget {
  AvailableWallpaperScreen({super.key});
  var wallpapers = [
    "https://i.pinimg.com/736x/5b/92/cf/5b92cf1cbd3be78355cc95654b1ba66e--hd-phone-wallpapers-wallpaper-iphone.jpg",
    "https://wallpapers.com/images/hd/black-and-green-mobile-cwasr5qzvbxhbdci-cwasr5qzvbxhbdci.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJnw_tiDby361_9VLRDcr6ZDQ7TH27X5Yu8w&usqp=CAU",
    "https://wallpaperaccess.com/full/5576099.jpg",
    "https://cdn.statusqueen.com/mobilewallpaper/thumbnail/alone-511.jpg",
    "https://wallpaperaccess.com/full/2214754.jpg",
    "https://i.pinimg.com/474x/69/e8/c7/69e8c7474939113aba1c4d2558007e57.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNLpWydtTORWL1YymjM9RERJ_GnAMhHM-j_g&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_jCTgc0bO-uMGE073tzjQc0ymge-9SMRPTw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTp9REClTzT7YmgnXrXgrfgDw3xLV673aPq4Q&usqp=CAU"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        // padding: const EdgeInsets.all(10.0),
        padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Nature",
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              " wallpapers are available",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.83,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemCount: wallpapers.length,
                itemBuilder: (BuildContext context, int index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      wallpapers[index],
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
