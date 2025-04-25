# _DAY 41 @ SURFBOARD PAYMENTS:_


## _Local Storage:_

  - So, my next task was to when the user logins or sign up for the first time then if the user restarts the app, it should directly go to home page instead of going to login page again, it should redirect it to home page. To acheive this, We should store the user credentials in local storage so that everytime we don't want to use network call to firebase. To get access of local storage, there are some packages.

  - I researched about it and there are some packages, which is used to get access local storage

### _HIVE:_ 

  - In flutter, Hive is a lightweight and fast NoSQL database which is used for local storage. The main advantage of hive is it is fast, it has no native dependencies. 

  - I added hive and hiveflutter in my yaml file and used `flutter pub get` to download the package. Also, I have added `build_runer` in dev dependencies.

  - After adding the dependencies, I need to write a seperate service class for local storage. Inside the services folder, I opened a new dart file and created a class called `HiveLocalStorage`.

  - I created a static asynchronous function called InitializeHive and initialized Hive.initFlutter() and created a register adapter. 

  - So, A register Adapter is refers to registering a TypeAdapter when we use the Hive database. The main use of register adapter is when we create a custome object, Hive doen't know how to store it by default, So the typeAdapter will tell hive to convert the user object to a storable format.

  - To store the user credentials value in local storage, we should store it in a box. generally, if we need to keep a important thing safe, we will keep it inside a self or inside a box. Similarly, To keep the data secured, we keep the data inside a box. This box contains the key and the value.

  - To store the data inside the box, we should first open the box. To open the box here, I wrote the code like this `usercredentials Box = await Hive.openBox('userCredentialBox');`. 

  - I wrote a data model for local storage inside the model folder. Cretaed a class called UserDetails and inside that assigned email, name and isUserLoggedIn to check whether the user logged in or not. 

  - After import, I wrote `part 'user_details_model.g.dart';` It basically defines a part file relationship. The `g.dart` extension indicates that this is a generated file. The "g" stands for generated. To generate this file, we should add `build_runner` and `hive_generator` inside dev dependencies and download the packages, and we shoud run this command `flutter pub run build_runner build`.

  - Now in my service file I need to write two seperate functions for putUser Details and GetuserDetails.


### _Potential:_ 
