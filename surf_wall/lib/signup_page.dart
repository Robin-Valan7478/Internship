import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:surf_wall/custom_text_field.dart';
import 'package:surf_wall/pages/login_page.dart';
import 'package:surf_wall/services/firebase_auth.dart';
import 'package:surf_wall/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:imagebutton/imagebutton.dart';                                      


class SignupPage extends StatefulWidget {
@override
 SignupPageState createState() => SignupPageState();
}

class SignupPageState extends State<SignupPage>{

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final ValueNotifier<bool> isRegistered = ValueNotifier(false);
  final ValueNotifier<String> errorMessage = ValueNotifier("");


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCFE8FC),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),//image and login ore line ha iruka
		child: Column(
                  children: [
		    Flexible(
		      flex:30,
		      child: SingleChildScrollView(
			child: Column(
			children:[
                    SizedBox(height: 40),
		    ClipRRect(
		      borderRadius: BorderRadius.circular(25),		
	
                    child: SvgPicture.asset(
                      "assets/images/signup_img.svg",
                      height: 170,
                      width: 200,
		      fit: BoxFit.cover,
                    ),
		   ),

                    SizedBox(height: 10),
                    Text(
                      "Create an Account",
                      style: GoogleFonts.dancingScript(
			textStyle: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff011F4B),
                      ),
		     ),
                    ),

                  ],
                ),
              ),
	     ),
            Flexible(
              flex: 60,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff011F4B),
                  borderRadius: BorderRadius.circular(25),
                ),
                margin: const EdgeInsets.all(10.0),
                padding: EdgeInsets.all(20),

                width: 480,
                height: MediaQuery.of(context).size.height / 0.1,

                // This flexible box takes the remaining 60% of the screen height
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment
                            .start, //coloumn la cross axis na left to right namaku username left la                                                                                 tha venum..so start nu kudukurom

                    children: [
                      //children bcoz username, white container, passowrd, white container....ithula add pannanum
                      Text(
                        "Username",
			style: GoogleFonts.outfit( 
                        textStyle: TextStyle(
                          fontSize: 16,
			  fontWeight: FontWeight.bold,
                          color: Color(0xffCFE8FC),
                        ),
                      ),
		     ),

                      SizedBox(
                        height: 10,
                      ), //leaves a gap between username and textfield

                      CustomTextField(
			textEditingController: nameController,
                        hintText: "𝘌𝘯𝘵𝘦𝘳 𝘜𝘴𝘦𝘳𝘯𝘢𝘮𝘦",
                        isPassword: false,
                      ), //it will go to class custometextfield

                      SizedBox(height: 20),

                      Text(
                        "Mail",
			style: GoogleFonts.outfit(
                      textStyle: TextStyle(
                          fontSize: 16,
			  fontWeight: FontWeight.bold,
                          color: Color(0xffCFE8FC),
                        ),
                      ),
		    ),

                      SizedBox(
                        height: 10,
                      ), //leaves a gap between username and textfield

                      CustomTextField(
			textEditingController: emailController,
                        hintText: "𝘌𝘯𝘵𝘦𝘳 𝘔𝘢𝘪𝘭",
                        isPassword: false,
                      ), //it will go to class custometextfield

                      SizedBox(height: 20),

                      Text(
                        "Password",
			style: GoogleFonts.outfit(
                        textStyle: TextStyle(
                          fontSize: 16,
			  fontWeight: FontWeight.bold,
                          color: Color(0xffCFE8FC),
                        ),
                      ),
		     ),

                      SizedBox(height: 10),

                      CustomTextField(
			textEditingController: passwordController,
                        hintText: "𝘌𝘯𝘵𝘦𝘳 𝘗𝘢𝘴𝘴𝘸𝘰𝘳𝘥",
                        isPassword: true,
                      ),

                      SizedBox(height: 40),
  		      ValueListenableBuilder (valueListenable: errorMessage, builder:(context,value,child){
if(value.isNotEmpty){
return Center(
child: Padding(
padding: EdgeInsets.only(bottom: 10),
child: Text(
value,
style: TextStyle(fontSize:14, color: Color(0xffFFFFFF)
),
textAlign: TextAlign.center,
),
),
);
}else{
return SizedBox();
}

}),

                      Center(
                        child: GestureDetector(
                          // If we click the forward arrow then it shows succesfully logined
                          onTap: () async {
                            //tap panna tha ulla pogum

			   final email = emailController.text.trim();
		 	   final password = passwordController.text.trim();
			   final name = nameController.text.trim();
			   
		 if(email.isEmpty || password.isEmpty || name.isEmpty){
			isRegistered.value = false;
			errorMessage.value = "Enter all Details";
			return;
			}
		
	              bool result = await Authentication.signup(email: emailController.text, password: passwordController.text, name: nameController.text );

if(result){

errorMessage.value ="";
Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => HomePage()),
);
}else{

errorMessage.value = " Email ID already registered";
}

                          },
                          child: Container(
                            //it creates a container
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
			      color: Color(0xffCFE8FC),
                              //container colour
                              borderRadius: BorderRadius.circular(
                                100,
                              ), // if we put 100 the container will be circular
                            ),
                            child: Center(
                              //we are placing the container in center
                              child: Text(
                                //creating an icon inside the container
                                "SIGN IN",
					
				style: GoogleFonts.oswald(
				textStyle:TextStyle(
				color: Color(0xff011F4B),
				fontSize: 20,
				fontWeight: FontWeight.bold,
				),
				),
                              ),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 30),

                      Center(
                        //creating a center widget for ggogle and linkedin
                        child: Row(
                          //both are parallel in row wise
                          mainAxisAlignment:
                              MainAxisAlignment
                                  .center, //we use main axis bcoz both are in row so we use main axis
                          children: [
                            //creating children widget bcoz we are adding multiple widgets like container, image,
                            Container(
                              //creating a container for google icon
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                color: Color(0xffCFE8FC),
                                borderRadius: BorderRadius.circular(100),
                              ), // creating a image widget
                                child: ImageButton(
                                  height: 20,
                                  width: 20,
                                  pressedImage: Image.network(
                                  "https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png"),
                                  unpressedImage: Image.network(
                                  "https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png"),
    
                                onTap: () async {
                                   try {
        
                                final UserCredential response  = await Authentication().signInWithGoogle();
                                print("======================>>>>>>>> HERERERERER");
                                print(response.toString());
                                     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
                                    } catch (e) { 
                                        print("======================>>>>>>>> HERERERERER");
                                        print('Google sign-in error: $e');
					print(e);
                                        ScaffoldMessenger.of(context).showSnackBar(
                                           SnackBar(content: Text('Sign-in failed. Please try again.')),
                               );
                             }
                          },
                        ),
                            ),

                            SizedBox(width: 20),

                            Container(
                              height: 21,
                              width: 21,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Icon(
                                //creating an icon inside the container
                                Icons.mail,
                                color: Color(0xffCFE8FC),
                                size: 22,
                              ),
                            ),
                          ],
                        ),	
                      ),

                      SizedBox(height: 30),

                      Center(
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context) => LoginPage()),
                            );
                          },
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all<Color>(
                              Color(0xff011F4B),
                            ),
                          ),

                          child: Text(
                            "Login",
			    style: GoogleFonts.radley(
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
            ),
          ],
        ),
      ),
    );
  }
}
