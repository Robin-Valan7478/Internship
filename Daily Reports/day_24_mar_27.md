# DAY 24 @ SURFBOARD PAYMENTS



## _FIREBASE AUTHENTICATION SERVICE:_

   - After Updating the minSdkVersion to 23, I synced it using Android Studio and It was updated. When I run the application and it showed me error when I try to login with wrong input. If I give a input which is already stored in my databse, it showed true. 

   - In my Authentication class, my login function has a String return type, instead of String I changed it to bool return type, because if the user input is correct it returns true, if it isn't correct it will return false. 

   - My next task was If the user entered a wrong input i.e., wrong Username or password then the app should throw an error in the screen saying Wrong Username or password. 

   - So, to check whether the user's input is correct or not we can easily get that, based on the value the login function returns, we can easily get the value and if it throws false, It should pop up a error message saying Wrong username or password, if it returns true then No need to show any error message instead it can go to the next screen.

  - But To do this, there is a method called ValueNotifier. Using this method we can easily pop up the error message when user enters the wrong username or password. 


## _VALUE NOTIFIERS:_ 

  - Value Notifier is like a simple class that holds a single value and notifies its listeners whenver the value changes. Here the value can be either True or False. It helps us to manage and update the single value easily. 

  - So, It's basically holds a value and notifies the listeners when the value changes, and displays the error message if the user input is false.

  - I assigned a variable named isUserLoggedIn in Value Notifier as bool return type and assigned a value true. So that the value remains hidden before pressing the login button.

  - Then, I called the Authentiction class to check the user login, If it returns true then It doesn't show any error message, if not then it will display false message. I used if loop, to display the message, if isUserLoggedIn.value is true, then it will push the login screen to home page. But if the isUserLoggedIn.value is false, it returns a error message saying `Invalid Username or Password`. 

  - So, This was my task for today, how to show error message when user tries to enter wrong username or password. I researched it and found a way to solve. Using value Listeners we can easily update the value.
  


  - Learned about value Notifier and finished coding for firebase authentication. 
