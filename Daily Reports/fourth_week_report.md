# - _WEEK FOUR @ SURFBOARD PAYMENTS:_


# - _MONDAY:_


## - __INTRODUCTION TO FLUTTER:__

   - Flutter is a UI framework created by Google which is used to build mobile, web, and desktop apps using a single codebase. It uses Dart as its programming language and provides a set of pre-build widgets to create a apps.

   - Using Flutter , we can build apps for Android,iOS, Windows,macOS, Linux, and the web without writing seperate code for each platform.



## - __UI/UX Concepts:__  

   - UI/UX stands for User Interface(UI) and User Experience(UX).

   - UI: In UI, it is how things look in an app or website. Its like a structure of an application. It includes buttons, colors, fonts, layouts, icons, and animations. So, basically it is like a design of an app.

   - UX: In UX, It is how things work and how easy they are to use. It includes navigation, speed, accessibility, and how users feel when using the app. So. its used for smootyness and ease of using an app.

   - Example: Swiggy, Food delivery app. Here, UI is the app's colours, images, and button styles. UX is how quickly we can order without confusion. 

   - So, To make an app, Both UI and UX is needed. Both has an important role in creating an app.



## - _DATA:_

        - Data refers to values stored in variables. Data is everything. It differs in two ways, constant and varies. A collection of data is called Database. Variables contains the data. 

        - There are two types of data type: Primitive and Complex. In primitive data type, we can say String, int,      boolean are primitive. In Complex, we can say Array, Map, Objects are complex data type. 



## - _TYPED and UNTYPED LANGUAGES:_

        - Programming languages handle data types differnetly, some reuire strict rules for types, while others are more flexible. 

        - In Typed language, it cares about types when we use variables. If we declare a variable as a number, we cannot change it to text later.

        - In typed, there are two types: Statically typed and dynamically typed. In Statically typed we should define the data type of a variable before using it. Example: C, C++, Java. In dynamically typed we don't have to declare types in advance. the type of variable can change while the program is running. Example: Python, Dart.

        - In Untyped languages, these languages don't care about types at all. variables just hold values. and the system doesn't check for type errors. Example: Assembly language. Javscript is a Untyepd language.




# - _TUESDAY:_


## - __FIGMA:__

   - Figma is a cloud based UI/UX design tool used for creating websites, apps, and other designs also. It allows the   designers to collaborate in real time, basically it is similar to how google docs works in documentation. 

   - Figma is like a prototype of an application or wensite. for example, if we are going to construct a house, the architect will give a prototype of the building (A structural represntation). figma is also like thta, it is a prototype of a app that should be designed.

   - We use Figma because It works on any devices like it can even run our browser. We can collaborate with multiple people to design together in live. We can create interactive app or website demos. We can also reuse design elements and autonate our tasks.



## - __BASIC WIDGETS IN FLUTTER: __

   - _STATELESS WIDGET:_ A widget that does not chnage over time. It does not store any data. It is best for static UI  elements. EXample: Text, Icon, Image
 
   - _STATEFULWIDGET:_ A widget that can change dynamically and maintain state. It is useful for interactive elements like buttons and  counters. it uses setState() to update the UI.Example: buttons, Counters.

   - _SCAFFOLD:_ Scaffold provides a basic structure of an app. It has App Bar, body, Floating Action button, Navigation bar, etc. It acts as a container for other widgets.
 
   - _APP BAR:_ A top navigation bar with a title and optional buttons. 

   - _MAIN AXIS and CROSS AXIS:_  It is used in row and coloumn for alignment. You can control how a row and coloumn align its children using the mainAxisAlignment and crossAxisAlignment properties. For a row, the main axis runs horizontally and the cross axis runs vertically. For a coloumn, the main axis runs vertically and the cross axis runs horizontally. 
   - _CONTAINER:_ It is like a box that holds other widgets. It can have colour, padding, margin, borders, and more.

   - _STREAMS:_ It is used for real time data updates(eg: live chat, sensor data). It works asynchronously.

   - _ValueNotifier:_ It is a special variable that notifes the UI when the value changes. It is lighter than streams   for small updates.

   - _StreamController:_ A controller that manages streams(allowing adding and listening to data).



   - After studying these, designed a login page in figma and created a code for that exact design in flutter. 




## - _CLASS:_

        - Class is like a blueprint for creating objects. It defines properties(variables) and behaviour (function/methods) that objects will have.

        - Example: 
                    class Dog{
                        String Name;
                        int cost;
                        int age;
                        String gender;}

## - _OBJECT:_

        - An Object is a real world instance of a class. We can creta emultiple objects from a single class. Each Object will have its own values but follows the class structure. 

        - Example: 
                    Dog dog1 = Dog("Tommy",100000, 1, "Male")

        - Everytime, we create a class a constructor will also be cretaed. 


## - _CONSTRUCTOR:_
    
        - A constructor is a special function in a class that automaticllay runs when an object is created. It is used  to initialize object properties. It automatically assigns value when an object is created. It saves time and ensures object always have valid data.




# - _WEDNESDAY:_



## - _PAGE STRUCTURING:_

        - Page Structuring is about organizing our app's screen properly so that navigation and the data flow will be   smooth. 

        - Page Structure is like a backbone of a web design. It's how designers organize content and guide users through a digital solution like a website.

        - Flutter Application should split into two broad layers: The UI Layer, and the Data Layer.

        - Each Layer will be further split into different components, each will have different responsibilities, a well defined interface, and dependencies.

        - We can split our applications into three components:

                - Views
                - View Models
                - Repositories
                - Services

## - _MVVM:_

        - MVVM (Model-View-View Model) is a way to structure our flutter app to keep our things organized, clean, and   scalable. 

        - MVVM is an architectural pattern that seperates a feature of an application into three parts.

                - Model 
                - View 
                - View Model


### - _MODEL:_

        - It's basically Data and Logic. It deals with fetching, storing, and processing data.

        - It's holds user details like name and mail.

### - _VIEW MODEL:_

        - It acts as a bridge between UI and Data.

        - It fetches data from the model and provides it to the view.

        - It managaes the app state like loading, updating UI.

### - _VIEW:_

        - The screen that the user interacts with buttons, text, images.



  - So Basically,MVVM is used for keep our code clean,it will be easier to debug and maintain and it is scalabale.



### - _CONDITIONS:_

    - if statement: It executes a block if the condition is true or else it won't execute the block.

    - if-else statement: It executes one block if true, or if its flase it executes the another statement.

    - if-elseif-else: It has multiple conditions in it.
    
    - else statemnt depends upon the if statement, whereas if statement doesn't depend on anything. it just executes the code, but else executes only when if statement is false.



## - _JSON:_
        
        - JSON(JavaScript Object Notation) is a lightweight data format used for storing and exchanging data. It is easy to read and write for humans and machines. JSON's is widely used in web development, APIs, and data storage.

        - Any data that come from backend, It will be in the form of JSON.
    
        - JSON Syntax Rules: 

                - Data will be in key-value pairs.

                - Keys must be strings(enclosed in double quotes).

                - Values can be strings, numbers, objects, arrays, tru, false, or null.

                - data is enclosed in curly braces{} for objects.

                - Arrays are enclosed in square brackets[].

        - JSONs is used in APIs, configuration files, data storage, web applications.



# - _THURSDAY:_



## - _Asynchronous Programming:_

        - It allows apps to perform multiple tasks simultaneously, which improves user experience. It's based on async  and await keywords along with future and stream.

        - Advantages of Asynchronous Programming: It ensures the app remains responsive to user input while background  tasks complete.

        - Improves the overall user experience and responsiveness of the app.

        - It helps to keep the code organized. Common Asynchronous operations are fetching data over a network, writing to a database, and reading data from the file.



        - Isolates and events loops
        - Futures
        - Streams
        - Async/Await
        - Generators


    - Async: It declares a function that returns a future.
    - Await: It waits fir the completion of a future.
    - Future: It represents the result of an asynchronous operation.
    - Streams: It represents a sequence of message that can be handled one at a time.


## - _FUNCTIONS:_


        - A function is like a reusable code which performs a specific task written in it. Its like instead of repeatinga set of codes many times, we can put the code inside a function and call them whenever we want. It reduces the code lines and make it simple and easy. 

        - A function should have four important things. They are, 
							
							- Function  name, 
							- Function parameters, 
							- Function body,
							- Return type. 


	- So to declare a function, we should have these four basic things. But declaring alone is not useful. We have to call the function, then only the function will be used. When we call the function, it will take the values in parameters and performs the function and returns the value. So, A function has two things, one is declaration of the function and another one is calling the function.


- When a function is called, the arguements or parameters can be called in two ways. They are,

								- Call by Value
								- Call by Reference


### - _CALL BY VALUE:_	

		- Call by value will pass a copy of a variable's value to a function i.e., a copy of the value is passes to the function. It changes insude the function and it will not affect the original value which is assigned.

		- It is mainly used for primitive data types (Ex: int, double, bool, string)


### - _CALL BY REFERENCE:_

		- Call by reference will pass the reference of the variable's value i.e., a reference of the variable is passed to the function. It changes inside the function affect the original variable. 

		- It is used for objects, lists, and maps.



# - _FRIDAY:_



## - _WHILE LOOP:_

        - While Loop will execute the code repeatedly as long as the specified condition remains true. we don't know the iterations.

        - While loop executes until the condition becomes false.


 - Learned about function declaration and calling and scope of a variable, like how a function works, where to use the function calling, where to declre multiple function nd call them accordingly. A variable decalred in a function is only accessible within the function. If a variable is accessed within the function the compiler first checks for the variable declaration and the value stored in referred address line. If it's not found inside the function scope it goes out of the function and checks for the variable. If the function is written inside a function, it checks for the value in the outer function. If the value isn't found in the outer function also it checks whether the variable is declared globally in the script if not it return undefined. If the function is not written inside any function then it directly look for a global scope variable outside the function, if not it returns undefined. Solved around ten programs.



## - _FIREBASE in my FLUTTER APP:_  

        - I have designed a login page and now i am studying about authentication. I need to store the user data in firebase as a cloud storage. I have made a sign up page also. I need to make a aunthentication for both. For sign up page, I need to store the use ID and passowrd as an unique data. It will be assigned a unique key for each and every username and password. 

        - for Login page, We should check whether the given username and password is stored in our database or not. If it is stored go to home page of the app. If not send a error message "This account doesn't exist". 

        - I have created a project in the google firebase. I have also registered my android app in my firebase project. I have assigned authentication method using email id or google account. 

        - I have downloaded Android Studio latest version called Meerkat and it meets the minimum requirements like the target API should be atleast 21. I should have a physical android device or an emulator from android studio.


## - _SESSSION ON RESPONSIBILITY:_

        - Askin Anna gave a important session on Responsibilty. Whatever we do in our life, we should take responsible for that. We shouldn't put the blame on others, for this reason only I can't do it. Try to do it, Take responsibility and do the job. We shouldn't do it on obligation or guilt. If we do, It won't be good. It will not help us. be it in work life or personal life, we should do with an interest or love. If we do it with a guilt, obligation or for sake of others, it won't be helpful. Ownership is an important skill, we should take ownership on whatever we do, if not we will remain in the same place. We should be accountable whether it becomes succesgull or not.  We should be commited to that work. 

