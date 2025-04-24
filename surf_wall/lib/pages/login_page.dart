import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:surf_wall/custom_text_field.dart';
import 'package:surf_wall/services/firebase_auth.dart';
import 'package:surf_wall/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:surf_wall/signup_page.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:imagebutton/imagebutton.dart';


class LoginPage extends StatelessWidget {
  //created a loginpage class

 final TextEditingController emailController = TextEditingController();
 final TextEditingController passwordController = TextEditingController();
 final ValueNotifier<bool> isUserLoggedIn =  ValueNotifier(true);
 final  ValueNotifier<String> errorMessage = ValueNotifier("");
 
@override

  Widget build(BuildContext context) {
    return Scaffold(
      // it sets the homepage of the app. its like a layout structure. it hass app bar, body, nav bar
      backgroundColor: Color(0xff011F4B), // setting blackgroynd colour to indigo
      body: Padding // leaving space between the sides
      (
        padding: EdgeInsets.symmetric(horizontal: 20),
        
        child: Column(
          // we are using coloumn bcoz the login username password..ithula coloumn wise ha tha iruku.
          children: [
            // ipa line ha oru oru container yum add panrom
            Flexible(
              // ithu vanthu mela irunthu height meausre panni space eduthukum
              flex: 30,
              child: SingleChildScrollView(
              child: Column(
                //image and login ore line ha iruka
                children: [
                  SizedBox(height: 50),
                  SvgPicture.asset('assets/images/login_img1.svg'),

                  SizedBox(height: 10),
                  Text(
                    "Welcome Back!",
		    style: GoogleFonts.fraunces(
                    textStyle: TextStyle(
                      fontSize: 32,
                     /* fontWeight: FontWeight.bold,*/
                      color: Color(0xffCFE8FC),
                    ),
		   ),
                  ),
		SizedBox(height: 10),
                ],
              ),
                ),
            ),
            Flexible( 
              flex: 60,
              child: Container(
                decoration: BoxDecoration(
                color: Color(0xffCFE8FC),
                  borderRadius: BorderRadius.circular(25)
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
                      "Mail ID",
		      style: GoogleFonts.outfit(
                      textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold, color: Color(0xff011F4B)), 
                    ),
		   ),

                    SizedBox(
                      height: 10,
                    ), //leaves a gap between username and textfield

                    CustomTextField(
		      textEditingController: emailController, 
                      hintText: "𝘌𝘯𝘵𝘦𝘳 𝘔𝘢𝘪𝘭 𝘐𝘋",
                      isPassword: false,
                    ), //it will go to class custometextfield

                    SizedBox(height: 40),

                    Text(
                      "Password",
		      style: GoogleFonts.outfit(
                      textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold, color: Color(0xff011F4B)),
                    ),
		    ),

                    SizedBox(height: 10),

                    CustomTextField(
		      textEditingController: passwordController,
                      hintText: "𝘌𝘯𝘵𝘦𝘳 𝘗𝘢𝘴𝘴𝘸𝘰𝘳𝘥",
                      isPassword: true,
                    ),

                    SizedBox(height: 10),

                    Text(
                      "Forget Password ?",
		      style: GoogleFonts.tinos(
                      textStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Color(0xff011F4B)),
                    ),
		  ),
		    

		    

                    SizedBox(height: 40),


	ValueListenableBuilder<String>(valueListenable: errorMessage,builder:(context,value,child){

if(value.isNotEmpty){

return Center(
child: Padding(
padding: EdgeInsets.only(bottom:10),
child: Text(
value,
style: TextStyle(fontSize: 14, color: Color(0xff011F4B)
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
                        onTap: () 
			  async{

			final email = emailController.text.trim();
			final password = passwordController.text.trim();

			if(email.isEmpty || password.isEmpty){
			  isUserLoggedIn.value = false;
			  errorMessage.value ="Enter Email and Password";
			return;
			
			}
                          //tap panna tha ulla pogum
			   isUserLoggedIn.value = await Authentication.login(email: emailController.text, password: passwordController.text);


	
	if(isUserLoggedIn.value)
	{	
	errorMessage.value=" ";
	
	Navigator.push(context,MaterialPageRoute(builder:(context) => HomePage(), 
),
);
} else{
	errorMessage.value="Invalid Email or Password";
		
}
                        },
                        child: Container(
                          //it creates a container
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                            //container colour
			    color: Color(0xff011F4B),
                            borderRadius: BorderRadius.circular(
                              100,
                            ), // if we put 100 the container will be circular
                          ),
                          child: Center(
                            //we are placing the container in center
                            child: Text(
                              //creating an icon inside the container
                             "LOGIN",
			      style: GoogleFonts.oswald(
			      textStyle: TextStyle(
			      	fontWeight: FontWeight.bold,
				color: Color(0xffCFE8FC),
				fontSize: 20,
				),
			      ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 40),

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
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
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

                          SizedBox(width: 30),

                          Container(
                            //creating a container for linkedin
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Icon(
                              //creating an icon inside the container
                              Icons.mail,
                              color: Color(0xff011F4B),
                              size: 21,
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 40),

                    Center(
child: TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder:(context) => SignupPage()),);
                          },
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all<Color>(
                              Color(0xffCFE8FC),
                            ),
                          ),

                          //creating a text for register
                          child: Text(
                            "Register",	
			    style: GoogleFonts.radley(
                            textStyle: TextStyle(
                              fontSize: 16,
			      fontWeight: FontWeight.bold,
                              color: Color(0xff011F4B),
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
