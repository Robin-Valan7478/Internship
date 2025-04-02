# DAY 27 @ SURFBOARD PAYMENTS


## _DOWNLOAD PAGE:_

   - After completing the home page, using grid view, icons ad search icons. Pravin Anna told me to finish the download page.

   - In my download page, the background color is in light blue and a white vertical container and the bottom center there was a download icon. 

   - I started to write code in vim for the download page. I painted the background color and and mentioned the height, width, color of the container and I don't know how to add the download icon inside a container, after researching, Using Stack method we can easily overlap the icon. 

### _STACK:_ 
  
  - Stack is a widget that allows us to place multiple widgets on top of each other, like stacking it. 

  - It helps us in creating overlapping elements, It wilol be useful for designs like overlapping icons in a container, adding profile pictures with badges.

  - Stacks works like the first widget in the stack will be placed at the bottom and each additional widgets we add is placed on top of the previous one.

  - We can use Positioned widget to control the alignment i.e., we can say left, right, bottom anf=d assign a value to them, it will adjust to it accoringly.


### _DECORATION IMAGE:_

  - After finishing the stack widget i.e., placing the download icon on top of the white container, now i need to add a sample image in that white container. I used a network image to display but the full white space container was not taken and my mentor said about decoration image. We can easily add a decorative image in our container itself inside the box decoration, we can use decoration image.

  - The keyword should be `image: DecorationImage(image: networkImage("ImageURL"),),`. So this is the syntax to display a Network image inside a container using boxdecoration. 


  - After finishing the image, my task was to change the container to full size and the download icon should be in a circular white container. 

  - So, adjusted the container to full size and I used a small white container and gave the radius to 100. So that the container will be in rounded shape. I added the download icon inside the container.

  - My mentor said there's also another easy way of doing that instead of wrapping it in a container.


### _CIRCLE AVATAR:_

  - The CircleAvatar widget is used to create a circular shape elements like we can use it in a profile picture to be in a rounded shape, icons. 

  - The syntax for the circle avatar is `CircleAvatar( radius:30, Child: Text("hello"),);` 

  - We use radius to determine the size of the circle since it hase no height and width. 

  - In my program I used the circle avatar to show the download icon. It will be in the bottom center rounded with the CircleAvatar, inside the circle avatar the download icon will be there. 



### _SEARCH ANCHOR:_

  - So, in my home page I used search anchor widget. This widget provides a built-in search bar with suggestions anautocomplete functionality. 

  - It helps users to quickly find and select options from a list while typing. It displays a search bar where we can search and we have a suggestion builder where we can have suggestions.

  - first `SearchAnchor` widget is initialized and inside that we are passing the parameters search controller we have already defined the searchcontroller in the state. It is passed as a parameter because to manage the search input and actions like opening or closing the search view. we use builder to define how the search interface is triggered. 

  - we are returning the IconButton so that when the user press the search icon it will open the search engine. and giving a color to the search icon, and we are giving onPressed() and inside that we are giving searchcontroller.openView() so that when the user clicks it, it goes to the search engine.

  - Now, we are assigning a suggestions builder function, it generates a list of suggested search items. I declared a String List and named it as categories inside that List I defined the values i.e., what and all the keywords should be there in the suggestions builder and I used LisTile to return, this will dynamically creates a ListTile for each category and the number of items is decided by categories.length. 

  - I decalred a String item to fetch the strings inside the categories listbased on the index value.

  - We are returning LisTile to create a tapable row for each category and set the colour of the items in dark blue color. and when a category is selected it will close the search view.

  - I used viewBackgroundColor to set the background color to light blue. and added a hinttext in my search bar.


## _AFTERNOON SESSION:__

  - In today's class Learned about scoping variable in a function. solved around ten problems and learned about named parameters, synchronous and asynchronous function.

 ### _NAMED PARAMETERS:_
 
  - Named parameters lets us pass values to a function using their names instead of their position. it's basically allows us to pass arguements to a function using their names instead of relying on thier position.

  - If we just pass parameter in a sequence for example, sub(3,2) is passed and in the function parameters void sub(a,b), here the a has 3 and b has 2. the result will be 1. But if we pass sub(2,3) the a value will take 2 and b value will take 3 now the output will be -1. So, when we use named parameters like sub(a:3,b:2) or sub(b:2, a:3) the output will be same because we are assign the values to the variable. so it will pass thye value correctly.


 ### _SYNCHRONOUS FUNCTION:_

  - In synchronous, a code starts only when the code above it  ends i.e., it executes a task only when a task before it ends. 

 ### _ASYNCHRONOUS FUNCTION:_

  - In Asynchronous function, the tasks don't wait for the previous tasks to complete it will run parallely it allows multiple operations to execute subsequently.
