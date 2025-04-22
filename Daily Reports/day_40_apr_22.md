# _DAY 40 @ SURFBOARD PAYMENTS_


## _FLUTTER SPLASH SCREEN:_

  - My task was to make a loading screen when we open the app. It usually shows a black screen, instead we can make a customized screen. I researched bout it and I thought I should write a seperate class for it. Praveen Anna told me to see about flutter native splash, instead of writing it a seperate class we can use this package.

  - `flutter_native_splash`, It refers to the initial screen shown before the app is fully initialized. Flutter provides a way to display a splash scree natively. It can be customized also.

  - To add this package, we should add `flutter_native_splash` in our pubspec.yaml file and give flutter pub get to download the package. We can easily configure the splash screen in pubspec yaml file itself. I added a seperate name  `flutter_native_splash` and inside it I added color and dark color, we can have a background image also, or we can set background color for it and we can also add our custom image, I don't have any custom image for my app. So i didn't mention anything. So It automatically takes the icon of flutter . 

  - After writing it, in our powershell we should give this command `flutter pub run flutter_native_splash: create`. So it will automatically creates a splash screen.


  - I added asset images for my login and signup page. I added SVG files and tried to run it. It showed me eror. After Googling, It said I should download a seperate package for svg files. the name of the package was `flutter_svg` I added the package and downloaded it. I imported it in my login page and signup page and we should write `SvgPicture.asset()` instead of `Image.asset()`. After adding it the Svg files were shown.


  - I tried to store the user credential so that the user won't have to login every single time, instead they will directly redirected to home page. I researcjed and watched youtube videos and in my surfwall dart file I created a class named Authgate used stream builder for firebase auth instance If the firebase auth has user;s data then it should redirect to home page if it has no data then it should redirect to login screen. It wa working fine but the problem I fcaed is in my account section It doesn't shows the user name and email Id. So I need to work on it.


  - I started to write 5000 words for Extreme Ownership, completed three chapters already and now I finished writing summary for two chapters. The deadline is on friday...
