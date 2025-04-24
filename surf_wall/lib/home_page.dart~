

import 'package:flutter/material.dart';
import 'package:surf_wall/download_page.dart';
import 'package:surf_wall/account_page.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'models/wallpaper_model.dart';
import 'dart:async';

class HomePage extends StatefulWidget {
  @override
   HomePageState createState() => HomePageState();
}
class HomePageState extends State<HomePage>
{
  final SearchController searchcontroller = SearchController();
  final StreamController <List <Wallpaper>> wallpapersStreamController = StreamController <List<Wallpaper>>.broadcast();
  

@override

 void initState() {
   super.initState();  
   fetchWallpapers();
}



 Future <void> fetchWallpapers({String query =''}) async {
   const String apiKey = 'uzMSEEqNl5ECzLyURo2TFosNFxJrdQSdIQDFvqtvMtGWqgW5PtkRQUnn';
 final url = query.isEmpty ? 'https://api.pexels.com/v1/curated?per_page=30'  : 'https://api.pexels.com/v1/search?query=$query&per_page=30';




 final response = await http.get(Uri.parse(url),
 headers: { 'Authorization' : apiKey,
},
);


 if (response.statusCode == 200) {
   final jsonData = json.decode(response.body);
   final List photos = jsonData['photos'];

 wallpapersStreamController.add(photos.map((photo) =>  Wallpaper.fromJson(photo)).toList(),
);

} else {
   print('Failed to Load wallpapers');
}
}


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff011F4B),
      body: SafeArea(
        child: Column(
          children: [
          Padding(
           padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [


		SearchAnchor(
		 searchController: searchcontroller, builder: (BuildContext context, SearchController searchcontroller){
		  return IconButton(
		   icon: Icon(Icons.search),
		    color: Color(0xffCFE8FC),
		     onPressed: () {
		      searchcontroller.openView();
		    },
		   );
		  },
	         suggestionsBuilder: (BuildContext context, SearchController searchcontroller) {
		    final List<String> categories = ['Trending 🔥','Asthetic ✨','Anime 🍥','Fantasy 🔮','Summer ☀️', 'Cricket 🏏', 'Christmas 🎄'];
		     return List<ListTile>.generate(categories.length,(int index){
	final String item = categories[index];
	return ListTile(
	 title: Text(item, style: TextStyle(color:Color(0xff011F4B)),
),
	onTap: () {
	 
	  
	 
	   searchcontroller.closeView(item);
	    fetchWallpapers(query: item); 
},
);
});
},
	viewBackgroundColor: Color(0xffCFE8FC),
	viewHintText: 'Search Something...',
	viewOnSubmitted: (String value) {
	  fetchWallpapers(query: value);
	  searchcontroller.closeView(value);
},
),
                 
                  Text(
                    'SURF WALL',
                    style: TextStyle(
                      color: Color(0xffCFE8FC),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
		  IconButton(
		 icon: Icon(Icons.person, color: Color(0xffCFE8FC), size:24),
		  onPressed: () {
			Navigator.push(context, MaterialPageRoute(builder: (context) => AccountPage()),
			);
		      },
	            ),
                ],
              ),
            ),
Expanded(
  child: StreamBuilder<List<Wallpaper>>(
   stream : wallpapersStreamController.stream,
    builder: (context, snapshot) {
       
   if(snapshot.connectionState == ConnectionState.waiting) {
    return Center(child: CircularProgressIndicator(color: Color(0xffCFE8FC),
),
);
     } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
	 return Center(child: Text('No Wallpapers'));
}

 final value = snapshot.data!;


      return GridView.builder(
        padding: EdgeInsets.all(16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 28,
          childAspectRatio: 0.8,
        ),
        itemCount: value.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DownloadPage(wallpaper: value[index])),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: NetworkImage(value[index].imageUrl),
                  fit: BoxFit.cover,
                ),
    ),
   ),
          );
        },
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



