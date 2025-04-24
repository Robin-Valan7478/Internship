import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart'; 
import 'package:surf_wall/services/global.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Authentication {
static  final FirebaseAuth auth = FirebaseAuth.instance;

 static final FirebaseFirestore firestore = FirebaseFirestore.instance;
 
 static  Future <bool> signup ({
   required String name,
   required String email,
   required String password,
  }) async {

	try{

	     UserCredential? credential = await auth.createUserWithEmailAndPassword(    // to create a new user id
	email: email.trim(), 
	password: password.trim(), // trim() will removes leading and trailing whitespaces
	);
	Global.credential = credential;
	print(Global.credential);
        await firestore.collection('users').doc(credential.user!.uid).set({
	//I created a reference to the users in firestore. if the input is not there it will store it automatically 
         	'name': name.trim(),
		      'email': email.trim(),
          'uid': credential.user!.uid,
	});
           return true;

	} on FirebaseAuthException catch(e) {
		if (e.code =='email-already-in-use'){
		  return false;
}else {
	print("SignUp Error: ${e.message}");
	return false;
}
}
}
static Future <bool> login({
  required String email,
  required String password,
}) async {

	
	try {
	      UserCredential? usercredential = await auth.signInWithEmailAndPassword(      //usercredential is a data model that stores data given by the user in login screen
	email:email,
	password : password,
);    
	Global.usercredential = usercredential;
	 print(Global.usercredential);
       return true; 	   
		
}  catch(e)
	{
	  print('Error: $e');
	  return false;
	}	
}
Future<UserCredential> signInWithGoogle() async {
  // Create a GoogleSignIn instance with signInSilently set to false
  final GoogleSignIn googleSignIn = GoogleSignIn();
  
  // Clear any previous sign-in state (optional)
  await googleSignIn.signOut();
  
  // Trigger the authentication flow - this should show the account picker
  final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
  
  // If the user cancels the sign-in, handle it gracefully
  if (googleUser == null) {
    throw FirebaseAuthException(
      code: 'user-cancelled',
      message: 'Sign in was cancelled by the user'
    );
  }
  
  // Obtain the auth details from the request
  final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
  
  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth.accessToken,
    idToken: googleAuth.idToken,
  );
  
  // Sign in to Firebase with the Google credential
  final credentials = await FirebaseAuth.instance.signInWithCredential(credential);
  Global.usercredential = credentials;
  return credentials;
}

Future<void> signOut() async {
  // Sign out from Firebase
  await FirebaseAuth.instance.signOut();
  
  // Sign out from Google
  await GoogleSignIn().signOut();
}
}


 
  

  

