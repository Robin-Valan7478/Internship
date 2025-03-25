# - _DAY 21 @ SURFBOARD PAYMENTS_


## - _FIREBASE AUTHENTICATION:_

   - I finished the login page and sign-up page for my app. Now I have to make a authentication for my login and sign-up page. I need to create a database to store my email ID and password. Whenever, I login it should check whether the Username and passowrd are available or not. If not, it should throw a error. 
  
   - I need to create a cloud database, So I created a new project in my firebase named it as Surfwall. I need to give a sign-in method. I have enabled email and password. After enabling it, I need to connect my flutter project with my     firebase database. Using powershell, we can easily link our project with firebase.

   - To link our project with the databse. We should update the dependencies in pubspec.yaml file to intergrate firebse services into our flutter project.

   - Go to pubspec yaml file and under dependencies, we shoul add the following lines

        - firebase_core:  ^2.24.2 -> Core firebase SDK for flutter, required for initializing firebase in our app.

        - firebase_auth:  ^4.16.0 -> It enables authentication features like email / password, Google Sign-in.

        - cloud_firestore:  ^4.14.0 -> It gives access to firebase NoSQL database, firstore.

   - We should add this dependencies carefully, because it is very sensitive. It shoes error for leaving extra spacing  also.

   - After Adding the dependencies, we should install them. We should write the following command
        - flutter pub get

   - After installing, to to configure our firebase for our flutter project. We should activate flutterfire Command Line Interface by  `dart pub global activate flutterfire_cli` 

   - It will download and install the necessary packages in our system. 

   - After downloading, we shoul give `flutterfire configure`. this command connects our project with firebase by generating a firebase options.dart file, which contains the firebase configuration details of the app.

   - To install the firebase tools, we give `npm install -g firebase-tools`. It will install the necessary tools for firebase authentication, firestore setup.

   - After doing all this, if we give `firebase login`, it will give access to firebase services from the command line.
We should give allow to firebase to collect CLI and emulator suite usage and error reporting information. 
   
   - If we run `flutterfire configure` again and select the surfwall project. it will run our project

   - I have succesfully linked my SurfWall project with my firebase.
