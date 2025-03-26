# _DAY 22 @ SURFBOARD PAYMENTS_


 ##  _PAGE STRUCTURING:_

   - Created a firebase databse for my application and connect it with my firebase. My mentor assigned a task, i.e., to complete the firebase authentication service code for my flutter project.

   - Studied about Page Structuring, We should keep our codes into sperate folders which helps us to keep clean and     easily manage the code. In my flutter project, I have four folders, they are Models, Pages, Services, Viewmodels.

   - Models: In this folder, we have the data models i.e., data structures taht represents the informtion of our app.   Example: A user model with properties like name, email.

   - Pages: In this folder, we will store the UI screens of the application. Example: login page, signup page, home page

   - Services: In this folder, it contains the services of our applications for example authentication services,firebase

   - View Models: In this folder, it manages the business logic and state for our application. Business logic means it defines how data is processed and used to meet the app's requirements.

   
   - So, These folders helps us to structure our code well organized and makes it easier to use it.


## _FIREBASE AUTHENTICATION SERVICES:_

   - We need to make a code for the authentication for signup. So we should collect the information form the user. for a signup page, we need data's like Username, mail ID, password. These are the basic requirements for a user to signup.

   - We need to create a class for authentication and create an instance forthe class Authentication. I created two instances one is firebase authentication and another one is firebase forestore database.

   - In our program we should import our main file, only if we import firebase authentication service and firebase firestore database services then only it will validate otherwise it throws an error saying undefines variable.

   - After creating a class and instances, we need to define a function for getting the user input. We are defning an asynchronous signup method. It hase three parameters name, email, and password. It returns a Future<String?>data type. We are using ? because it can return null value also. We used required in defining the parameters to ensure all parameters are given.

   - We are using a try catch block for checking error. `createUserWithEmailAndPassword()` method helps us to create a new user in firebase authentication. 

   - We used `email.trim()` and `password.trim()` because it removes any leading or trailing whitespaces.

   - If User creation fails, It prints error and returns error as a string.



  - After finsihing the authentiction code, imported the file in my main dart and run the code in my terminal. It showed some error and after clearing the error. I connected my mobile to use it as a physical emualator. turned ON USB Debugging.

  - The code was succesfully runned. The app was installed in my mobile and it showed the login page and signup page. 


  - If I click login icon in sign up page, It need to go the login page and If I click Register in Login Page It should go to Signup page. So after researching about this, We should add elevated button and push it to the next screen. To get back to the old screen we should pop it.

  - Instead of elevated button, we can use textbutton. Which means instead of clicking a seperate button, we can click the textbutton to go the another screen. These are the things that I learned today.


