# DAY 18 @ SURFBOARD PAYMENTS


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



## - _TYPES OF VIEW MODELS:_

        - BaseView Model
        - ReactiveView Model

## - _BaseView Model:_

        - The baseviewmodel class is the basic implementation of the view model in the stacked architecture.
        
        - It provides basic functionality for managing the state of the view, handling navigation and showing dialogue  or snackbars(pop-up notifications).

        - It is suitable for simple applications o scenarios where you have full control over when to trigger UI updates


## - _ReactiveView Model:_

        - The reactview model class extends baseviewmodel and adds reactive capabilities of the view model.

        - It allows to define reactive properties using the reactive mixin and annotate.

        - With ReactView Model, we don't need to manually call notify Listeners() to update the UI, when reactive properties change. The framework handles it properly.

        - It is suitable for more complex applications or scenarios where we have a large number of state variables or where state changes are triggered by variosu sources.


    - So BaseView Model is a simpler and more manual approach to managing state in Stacked, while ReactiveView Model   
adds reactive capabilities for more automated state managements.

    - The choice between them deoends upon the complexity of the application and the preference for manual vs reactive  state management.

## - _Conditions and Loops:_

    - if statement: It executes a block if the condition is true or else it won't execute the block.

    - if-else statement: It executes one block if true, or if its flase it executes the another statement.

    - if-elseif-else: It has multiple conditions in it.
    
    - else statemnt depends upon the if statement, whereas if statement doesn't depend on anything. it just executes the code, but else executes only when if statement is false.


