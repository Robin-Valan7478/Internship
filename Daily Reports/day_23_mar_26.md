# DAY 23 @ SURFBOARD PAYMENTS

## _FIREBASE STORGAE:_
 
   - Yesterday, I made authentication code to create an user ID in th signup page. It will get the input from the signup page. Now, I have to store the user's input in my cloud database i.e., I need it in my firebase account.

   - `await firestore.collection('users').doc(credential.user!.uid).set({`    In my Authentication code, I created an instance for the firebase database and created a collection named users and created a document with the user's unique ID. So we have an unique ID for every users.

   - The set command will sets the data for the document and I used await because this is asynchronous and it will wait for the document to be created. After creating the document, then only It executes the line, until then it waits.

   - We need to store the User's name and email, we cannot store the user's password and we can also store the user's unique ID. The trim() is used because it removes any leading or trailing whitespaces.

   - In my firebase account I'm storing the user's Name, emailID, and the user's unique ID. 

   - If the user's data is stored it returns true otherwise it gors to catch and throws false. We used boolean return type.

   - In my Signup dart file, I used `TextEditingController`, it is used to manage and control the text inside a text field widget. We used this controller because then only we can get the text input from the user.

   - When the user gives the data and click the sign up widget. then only the data must be stored in my database. So, we shoul call the function inside Ontap(). 

   - It succesfully stored the data in my Firebase. 

   - But it showed some error that it returned false. So the catch has send the error has false. I checked in my function calling whether it is called or not by if else method. 
 
   - Still the error was there, tried to resolve it and it showed `List<Object>` is not a subtype of type 'PigeonUserDetails?' and googled it and it said to update the authentication and firetore package. 
 
  - After updating and installing the new depedencies, It showed to upgrade the Minimum Sdk version to atleast 23. So inside the app folder of android there was a gradle file and I changed the minimum Sdk version. and synced it using android studio. Again it showed execution failed could not read the workspace metadata. I tried to resolve it. but it showed the same error.

 
