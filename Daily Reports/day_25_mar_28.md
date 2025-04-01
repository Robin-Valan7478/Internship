# _DAY 25 @ SURFBOARD PAYMENTS_



## _VALUE LISTENERS:_

  - A Value Listener in flutter is used to listen for changes in a value and update the value and triggers the action accordingly. 

  - So, it basically listens to changes in a value and update the screen or triggers a specific action when the value changes.

  - We are uing ValueListenableBuilder because it is effecient for managing these small updates like displaying error message, changing colour, etc.

  - To Display the error message I used ValueListener, this Value Listener will change the value of the value Notifier and executes the code in response.

- Using Value Listener we can easily display the error message. After initializing the value listener abve the Sign In button and below the password text field because there only we are displaying the error message.

  - I wrote a if condition to check the user has given correct username and password, If the value is false then it prints the error message. I used padding, and gave fontsize and color for the Error text and placed it in center. If the value is true then it will return a sized box, and empty space and it goes to the home page.


  - After finishing the Login screen, made some small changes  in signup page.

  - Now, I have to create the home page with grid view. Learned about safe area, grid view.


## _SAFE AREA:_

  - Safe Area Widget is a widget that will prevent the UI elements from being hidden from the notch. 

  - So it enures that our screen is displayed in a visible and easily accessible area of the screen. For Example, In Iphone there will be cylindrical notch if in our app there is a widget at the top center, It will be hidden under the notch and we cannot access it. But when we use this safe area, it will reduce the screen size and make it visible and we can easily access it.

  - the Keyword is SafeArea and wrap it and write the code inside it.



## _GRID VIEW:_

  - GridView is a widget which is used to display items in a grid format i.e., in rows and coloumns. It is used when we need to display multiple items in a structured  layout. 

  - We can also use Listview to display elements, but it shows the images only in a list view. So for that reason only we are using grid view.

  - Using gridView.builder we can create grids when we don't know the exact number of items in advance. So it loads as many widgets we want.

  - To leave spaces between the corners I used padding.
 
  - `gridDelegate: SliverGridDelegateWithFixedCrossAxisCount` because we nee only two coloumns. We don't want more than that, so we specify the crossAxisCount and the grid automatically arranges the items.

  - We can also use `SliverGridDelegateWithMaxCrossAxisExtent`. It is used when we want items to have a maximum width instead of a fixed coloumn. Since we didn't give a fixed coloumn, it will rrange the coloumn based on the screen size, if it is a scren size then it will have three or four coloumns, if its a small phone it may have a single coloumn. It keeps the coloumn based on the screen size. 

  - In our page, we need only fixed coloumn, So that's why we use fixedCrossAxisCount.

  - Inside that, we will give the count, here we need 2 coloumn, so the crossAxis Count will be two. For spacing, we use mainAxisSpacing and CrossAxisSpacing and to make the containers long we use childAspectRatio so the containers will adjust the size based on the value given in the aspectratio. I have given 0.8.

  - To create each grid dynamically, we use itemBuilder. the main role of itemBuilder is it only creates items when they are visible on the screen. Inside the itemBuilder we return the container for each grid item. for decorting the container I used boxdecoration to color and adjust the border radius.

 - So I created a home page in a minimilastic way so that the user can use it at ease. 
