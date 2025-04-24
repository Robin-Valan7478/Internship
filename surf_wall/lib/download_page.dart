import 'package:flutter/material.dart';
import 'models/wallpaper_model.dart';
import 'save_image.dart';

class DownloadPage extends StatelessWidget {
  final Wallpaper wallpaper;

  DownloadPage({required this.wallpaper});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffCFE8FC),
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: NetworkImage(wallpaper.imageUrl),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(0),
              ),
              width: MediaQuery.of(context).size.width /0.2,
              height: MediaQuery.of(context).size.height / 1.0,
            ),
            Positioned(
              bottom:10,

		child: CircleAvatar(
		radius: 30,
		
		backgroundColor: Colors.white,
		
 		child: IconButton(
                icon: Icon(Icons.download),
                onPressed: () {
		 Saveimagefile.saveImage(context,wallpaper.imageUrl);
},
                iconSize: 35,
		color: Color(0xff011F4B),
               ),
              ),
	
            
            ),
          ],
        ),
      ),
    );
  }
}
