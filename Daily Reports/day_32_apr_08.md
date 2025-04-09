# _DAY 32 @ SURFBOARD PAYMENTS_


## _IMPORTING WALLPAPERS:_

   - I finished writing service for API call but my mentor asked to correct some changes. Istead of using setState() we can use value notifier or even streams which make it easier.

  - I tried value notifier and executed it and it showed some error and i learned about streams, streambuilder. We use setState() because it notifies flutter that something in the widget is changed, so it will rebuilt the UI with the new data. But we are not exactly changing the UI, we can use streambuilder or value notifier.

  - The main differnec between value notifier and streams is  the value notifier i used for managing a single value and notifying the listeners when the value changes, while streams are more powerful, it is used for handling sequence of asynchronous events and data flow.

  - I used Streamcontroller for List<Wallpaper> assigned it as wallpaperStreamController and added the photos in the wallpaperStreamController and I wrapped the GridviewBuilder with StreamBuilder. So StreamBuilder is a widget that build its output based on the latest snapshot of interaction with a stream, allows us to reactively update the UI in response to real-time data changes.

  - If the snapshot is in connecting state or tha data is not epty it should show loading indicator and I used a custom color for it, else If the snapshot has no data or the data is empty then it should return a text `No Wallpapers`. 

  - I assigned the snapshot data to a final variable called value and used it in the grid view builder. Inside the network image I passed the value[index].imageUrl 



## _CUSTOM SEARCH:_

  - My Next task was if the user searches for a custom text it should send the text to API call and fetches the related images to the gridview builder and after researching there is a inbuild property for SearchAnchor which is viewOnSubmitted () this property will show the text in the searchanchor when the user types and press enter. I used viewOnSUbmitted and gave a Strig parameter named it as value and inside that property used FetchWallpapers(query: value) to fetch the related image in Pexels API.

  - Now, If the user searches for anything it will display the related images to it.

  
  - My next task was to download the corresponding images when user presses the download Icon. I started writing a seperate class for saving image. Installed some packages on pubspec like flutter image gallery saver, permission handler, path and typed `flutter pub get` to install them. In my download page dart file when the user presses the download icon it should ask permission for accessing the storage and saving the image path. Inside the Onpressed () function I passed Saveimagefile.saveImage and passed context and wallpapers.imageUrl as parameters. 
