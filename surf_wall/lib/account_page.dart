import 'package:flutter/material.dart';
import 'package:surf_wall/services/global.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:surf_wall/pages/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:surf_wall/services/firebase_auth.dart';

class AccountPage extends StatefulWidget {
 @override
  AccountPageState createState() => AccountPageState();
}
class AccountPageState extends State <AccountPage>{
 @override
  Widget build (BuildContext context){
   return Scaffold(
    backgroundColor: Color(0xffCFE8FC),
     body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Center(
       child: Column(
	mainAxisAlignment: MainAxisAlignment.start,
	children: [
       	SizedBox(height: 60),
	        // Profile picture with edit icon
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Color(0xff011F4B),
                  child: CircleAvatar(
                    radius: 48,
                    backgroundColor: Colors.white,
                     backgroundImage: FirebaseAuth.instance.currentUser?.photoURL != null
      ? NetworkImage(FirebaseAuth.instance.currentUser!.photoURL!)
      : NetworkImage("https://www.gstatic.com/flutter-onestack-prototype/genui/example_1.jpg"),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xff011F4B),
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Icon(
                      Icons.edit,
                      color: Color(0xffCFE8FC),
                      size: 20,
                    ),
                    ),
                     ),
                 ],
                   ),
		SizedBox(height:40),

         Text(
	   "Personal Details",
	     style: GoogleFonts.lato(
		textStyle: TextStyle(
		  fontSize: 22,
		   fontWeight: FontWeight.bold,
	            color: Color(0xff011F4B),
),
),
),

	SizedBox(height: 20),

	Container(
		decoration: BoxDecoration(
		   border: Border.all(
	            color: Color(0xff011F4B),
		     width: 2.0,
		      style: BorderStyle.solid,
),
		   color: Color(0xffAECCE4),
		   borderRadius: BorderRadius.circular(25)
),
	padding: EdgeInsets.all(20),
	 height: 120,
	 width: double.infinity,
	
	child: Column(
	    crossAxisAlignment: CrossAxisAlignment.start,
	    mainAxisAlignment: MainAxisAlignment.center,
	  
	    children: [

	  Text(
	   "Name:   ${FirebaseAuth.instance.currentUser?.displayName ?? "No Name"}",

	     style: GoogleFonts.lato(
	      textStyle: TextStyle(
	       fontSize: 16,
		fontWeight: FontWeight.bold,
	         color: Color(0xff011F4B), 
		),
	       ),
	      ),

	    SizedBox(height: 20),
	    
	   
	   
	 Text(
	    "Mail ID:   ${FirebaseAuth.instance.currentUser?.email ?? "No Email"}",

	     style: GoogleFonts.lato(
		textStyle: TextStyle(
		  fontSize: 16,
		   fontWeight: FontWeight.bold,
		    color: Color(0xff011F4B),
		   ),
		  ),
		 ),
	],
),
),

	SizedBox(height: 20),
/*
       Text(
	"General Settings",
	  style: GoogleFonts.lato(
	   textStyle: TextStyle(
	    fontSize: 22,
	     fontWeight: FontWeight.bold,
	      color: Color(0xff011F4B),
),
),
),*/

	SizedBox(height:20),

	Container(
	  decoration: BoxDecoration(
	    border: Border.all(
	     color: Color(0xff011F4B),
	       width: 2,
		 style: BorderStyle.solid,
),
	  color: Color(0xffAECCE4),
	  borderRadius: BorderRadius.circular(25),
		
),

         padding: EdgeInsets.all(5),
	 height: 60,
	 width: double.infinity,

	child:  Row(
	   crossAxisAlignment: CrossAxisAlignment.center,
	   mainAxisAlignment: MainAxisAlignment.start,
	  children: [
		SizedBox(width:15),
		Icon(
		Icons.favorite,
		color:Color(0xff011F4B),
		size: 22,
		),

		SizedBox(width: 10),

              Text(
		"Favorites",
		style: GoogleFonts.lato(
		textStyle: TextStyle(
		 fontSize: 22,
		 fontWeight: FontWeight.bold,
		  color: Color(0xff011F4B),
	           ),
                  ),	
                ),
],	     
),
),

	 Spacer(),


             Container(
              height: 50,
              width: 450,
              margin: EdgeInsets.only(bottom: 40),
              child: ElevatedButton(
                onPressed: () async {
                  await Authentication().signOut();
	         Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=> LoginPage(),
),
);
},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff011F4B),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: Text(
                  "Logout",
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffCFE8FC),
                    ),
                  ),
                ),
              ),
            ),
],
),
),
),
);
}
}
