# DAY SEVEN @ SURFBOARD PAYMENTS

    - ## __Morning Session:__

            - ### __Eulerian Cycle:___

                - An _Eulerian cycle_ is a cycle in a graph which should go to every edges exactly once and return to the starting vertex. It is named after _Leonhard Euler_, who solved the Konigsberg bridge problem in 1736.

                - The condition for the Eulerian Cycle should be that the graph is connected and every vertex in the graph has an even degree, i.e., It only works if and only if the vertex has an even degree.


    - ## __Classes of Problem:__
                - There are three classes of problem. They are,
                        - have no Solution
                        - have multiple solution
                        - have lot of trial and error

                - ### __No solution:__
                        
                        - These problems are either impossible to solve or undecidable due to the constraints or lack of instructions.
                        - Ex: Dividing an zero: Undefined in mathematics, Konisberg Bridge problem: no solution exists for crossing all bridges exactly once.

                - ### __Multiple Solution:__

                        - These problems can be solved in different ways, leading to various possible solutions.

                        - Ex: Suduko puzzle: It takes multiple valid solutions

                - ### __Problems that require a lot of trial and error__:

                        - These problems lack a straightforward approach and it requires stratagic approach to find a   solution. It takes more time and effort to solve a solution.

                        - Ex: solving a complex maze problem: requires multiple attempts to find the right path.

                - To find which classes of problem, we have to solve more problems.

    - ## __Computation:__

                - It is like a process of solving a problem or performing a task using mathematical operations. It is   basically called as Calculations.

    - The computer understands our input (using Interfcaes like Keyboard, Mouse) in the memory in binary codes which is zeros and ones. using _Electrical Impulses_, the computer understands the binary code. For one's it give 0v electric    impluse and for zero's it gives 5v electric impulse.


    - ## __MENTOR:__

        - Today's task was to install flutter in my laptop and connect it with the terminal. Also, created a new
repository called sample codes ( for storing the codes) and Practice ( for checking purpose) 

        -  I made a mistake yesterday I created a file without an extension (without mentioining .txt or .md). So it automatically stored as .un file. After completing the code, I couldn't push the file. Asked help from Benedict Anna, He came up with a easy solution. To resolve this issue, we should open the file in terminal itself and copy the contents and paste it in a new file with an extension. Instead of converting the .un file into .md file we ca easily copy the content to another new file.

        - Installed flutter in my laptop and extracted the files in D folder.In my powershell terminal, typed a command `flutter doctor` to check whether it is correclt installed or checks our flutter environment for issues and provides    suggestions for fixing them.

        - It showed three errros initially, 

                - ___Android Toolchain:___ It showed cmdline-tools component is missing. The reason for this is flutter needs command line tools. So, from the Android SDK, they are missing. The main use of command line tools are building,  debugging and managing android applications. 

                - ___Android License:___ I have to give access to Android SDK licenses. To fix this I tried this command `flutter doctor --android-licenses`. It will ask to accept the licenses. type y(yes) for each one.

                - ___Visual Studio not Installed:___ It isn't a error,it is required only if you want to develop windows apps with flutter.

        - I resolved the errors one by one by researching it online and I got a new error saying Android studio - Unable to find bundled JAVA versions. To resolve this, we need jdk 17 or higher. Open Command Prompt, type cmd and enter. 
Type `echo %JAVA_HOMES` and if it shows an old java path, we should update it manually. Open control Panel -> system -> Advanced System Settings. Click Environmental Variables nd under that click system variables and find JAVA HOME, and     Click new. for variable name, type `JAVA HOME` and for variable value paste the java path copied and click OK.

        - Now, update the path variable. Find the path in System variables and click Edit and click New and add         `%JAVA_HOME%\bin` and click Ok and close everything and restart the laptop. The error was resolved. 

    -After completing the setup, learned of some basic commands in flutter.


    - ## __Flutter:__ A Flutter is a free, open-source UI framework that lets us build apps for multiple platforms using a single codebase. It's based on the _Dart_ programming language. We use flutter because it;s securable and scalable, fast and can be used across platforms. 

            - __Basic Commands in Flutter:__

                - flutter doctor -> Checks system setup for Flutter.

                - flutter create my_app -> Creates a new Flutter project.

                - flutter run -> Runs the app on a connected device/emulator.

                - flutter devices -> Lists connected devices and emulators.

                - flutter build apk -> Builds an APK for Android.

                - flutter build web -> Builds the app for the web.

                - flutter clean -> Clears temporary files and build cache.

                - flutter pub get -> Fetches dependencies from pubspec.yaml.

                - flutter analyze -> Checks for code issues and warnings.

                - flutter emulators -> Lists available emulators.

                - flutter logs -> Displays real-time logs from the running app.

                - flutter test -> Runs the unit tests written for the flutter project
    
                - flutter packages get -> Fetches all the required packages mentioned in the pubspec.yaml file.

        

        - Tried this command in my powershell terminal and there will be a main.dart file when we create a flutter       project. tried the sample app using the flutter commands. So, today I learned how to install flutter and how to connect the flutter in powershell terminal. what are all the basic commands in flutter and how to resolve the issues when we   check flutter setup. I have created a basic command sheets in Practice repository which contains basic commands in GIT, markdown file, powershell terminal, VIM, and flutter.

### NAME : ROBIN VALAN RAJ 
### DATE: 04/03/2025

 
