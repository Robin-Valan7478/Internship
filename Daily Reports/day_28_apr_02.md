# _DAY 28 @ SURFBOARD PAYMENTS_



## _GOOGLE FONTS:_

   - Google fonts has a collection of free fonts, we can use it in our code to imrove the text styles. 

   - The google fonts package will make it easy to apply the fonts without dwnoloading the fonts manually, we can easily add this google font package and we can access various number of fonts in it.

   - To add google fonts package, we should open `pubspec.yaml` file in our terminal and under dependencies there will be flutter: and under that there will be sdk: flutter and we need to add google fonts under that line. `google_fonts:  ^6.1.0` we should add this text inside the pubspec yaml file, while adding the google fonts in pubspec yaml file, we should be very careful in spacing, even a small spacing wll show error. 

   - After adding the google fonts package, we should run `flutter pub get` to install the package. the terminal will download the packages i.e., it will download the google fonts package. 

   - Only after installing it we can use the google fonts in our dart code. After Installing the package, we can write it in our dart code.

   - Before writing in the dart code, we shoud import the package, then only we can write google fonts package, otherwise it will show error. We should import like this `import 'package:google_fonts/google_fonts.dart';` After importing it we can use GoogleFonts inside the code file.

   - We can use it inside a Text widget, for example,

             Text(
                  "DAY 28", 
                    style: GoogleFonts.lato(
                     textStyle: TextStyle(
                      fontSize: 22,
                       fontWeight: FontWeight.bold,
                        color: Color(0xff011F4B),
                         ),
                        ),
                       ),


   - This is how we should declare google fonts inside a text widget. First we should write style: GoogleFonts and we ahould write what type of googlefonts we want and write the name of it. here I used lato fontstyle and gave size to the text, fontweight to the text and added color to the text.


## _ACCOUNT DETAILS PAGE:_

   - After completing the search anchor in the home page now I need to complete the account details section page. I started to code for that page.

   - Created a new file and named the class as AccountPage and in my account section page I need a profile picture and a edit icon to edit it, personal details given by the user like name and Email and a log out button to go log out the user and goes to the login page.

   - before starting with profile picture I first wrote code for personal details and I don't know how to get the Username and Email from the login page or Signup page.

   - Praveen Anna thought me how to get that username by creating a sepeate new class called global and initialized a variable usercredntail from the Usercredential object from the Authentication class like this`static UserCredentail? usercredntial`. Now, in the firebase authentication page after the initialization of the data model, we should assign the data model to the global variable like `Global.usercredentail= credential` this is for signup page we should do the same for login oage also.

   - After initializing the value, now in our text widget, we should call the global variable like `MAIL ID:  "${Global.usercredentail?.user?.email ?? "No Email"}"`

   - If Global.usercredential is null, then it returns null or if it exists it diplays the email ID. Like wise I used this for entering a name. 



## _AFTERNOON SESSION:_


 ### _CALL BACK:_


   - CallBack is like when we pass a function as a parameter to another function and then call it inside that function whenever we need.  So, this call back function can be used when we dont want the program to stop and wait. So, callback is a function which is passed as an arguement to another function, which gets executed after that function completes. The main problem of call back is it will be messy if we have multiple tasks depending on each other.

 ### _PROMISES:_

   - The CallBack was replaced by Promise which handled the asynchronous tasks easier and cleaner. So promise either resolves the task completed or rejects the task.

   - A Promise is like an object which represents the evebtual completion of an asynchronous program. It avoids callback by using then() function and catch() function.


 ### _FUTURES:_

   -  Futures are used in dart which represents a value that will be available at some point in the future. It is kinda similar to promise.

   - It  is commonly used for asynchronous programming like handling API calls, file operations. A future can be in any one of the three types: uncompleted - this mens the future is waiting for the operation to complete, Completed with a value - This means the operation is completed and also a value is available, Completed with an error - the operation failed and an error is returned
  


 
