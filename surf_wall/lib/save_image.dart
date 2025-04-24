import 'package:path_provider/path_provider.dart';
import 'package:image_gallery_saver_plus/image_gallery_saver_plus.dart';
import 'package:path/path.dart' as path; 
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:permission_handler/permission_handler.dart';


class Saveimagefile {

  static Future <void> saveImage(BuildContext context, String imageUrl ) async {

  try {
	PermissionStatus status;
	status = await Permission.photos.request();
	print(status);
	if(status.isGranted) {
	final response = await http.get(Uri.parse(imageUrl)); //to download network image
	final bytes = response.bodyBytes;
	final dir = await getTemporaryDirectory(); //to get temp directory
	final imageName = path.basename(imageUrl); //to name the image
	final filename = '${dir.path}/$imageName'; // to create a image name

	final file = File(filename); //to save the file
	await file.writeAsBytes(bytes);

	await ImageGallerySaverPlus.saveImage(bytes,name: imageName);
	print("Image saved");
}
else {
	print("Image not saved: ");
}
} catch(e){
	print("Error");

}
}

}
