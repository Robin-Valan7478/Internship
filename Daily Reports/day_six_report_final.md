
- # DAY SIX @ SURFBOARD PAYMENTS



- ## **Problem Solving Steps:**
	- Do not avoid the problem
	- Understand the problem
	- Break the problem into small chunks until you can solve the problem
	- List out the constraints
	- Write down the operations
	- Solve the most constrained part
	- Solve the problems which satisfy the constraints.


- ## ""PROPOTIONAL LOGIC:""
	- Proportional Logic is the mathematical representation of the given statement. For example, there are two statements named p and q.
		- Statement p : My house is painted red	
		- Statement q : My house is in the corner.

	- From the above statements, both the statemnets can be true or both the statemnets can be false or either one of the statement can be true or false. There are some operators which can be represnted mathematically; they are ~, ^, and v.

	-  ~ -> This operator represents "not" which is known as ""Logical Negotiation""
	-  ^ -> This operator represents "and" which is known as ""Logical Conjuction""
	-  v -> This operator represents "or" which is known as ""Logical Disjunction""


        - ## ""IMPLICATION:""
                - Implication are possible results or effects of an action, decision, or event. In simple words,it might happen because of something.       Implications are conditional statements. For example, if you get an A in maths, I will buy you an iphone.

                - Implications i.e. conditional statements are represented as ->.


        - ## ""BICONDITIONAL STATEMENT:""
                Biconditional statements are logical statements that are true in both directions. In simple terms, a biconditional statement is only true when both parts have the same truth value (it will be either both true or both false). For example, if and only if you get an A in Maths, I will buy you an iPhone.
                - Biconditional Statements are represented as <->.



        - ## ""MARK DOWNS:""

                - A """Markdown File""" is also a text file and it will be reprented as .md file. It is basically helps us to style our text. It uses
markdown languages to format text in a easiest way.


        - ### ""Some basic Markdown Syntax:""

                - """Headings:""" #_Heading, ##_Sub-Heading, ###_Sub-Sub-heading. The text size will be larger for heading and will be smaller for sub      heading and vice versa.

                - """Bold:""" To represent a text in bold format. we have to use double quote two times in starting and ending ""(Your text here)"".        For example, ""HELLO WORLD"".

                - """Italic:""" To represent a text in italic format, we have to use double quote one time in starting and ending "(Your Text Here)".
For example, "Hello Surfboard"

                - """Bold & Italic:""" To represent a text in both bold and italic format, we have to use double quote three times in starting and ending of a text. For example, """Hello Guys""".

                - """Unordered Lists:""" To represent a item in lists we use "Unordered lists". It shoulde be represented as (-)before an statement.
For Example,
             - Item 1
             - Item 2
                     - Sub Item 1
                     - Sub item 2
                - """Ordered Lists:""" To represent a item in an ordered lits we use "Ordered Lists". It can be represented using numbers.
For Example,
             1. Item 1
             2. Item 2
                     1. Sub Item 1
                     2. Sub Item 2


                - """Links:"""  To attach a URL link with the word, we use Links. For example, [Google](https://www.google.com)

                - """Tables:""" To create a table, there is a syntax, we should use pipe(|), for example:

                                                                        | Name | Age | Country |
                                                                        |______|_____|_________|
                                                                        |Robin | 21  | India   |
                                                                        |Rohan | 25  | USA     |


        - ## ""POWERSHELL:""

                - To create a text file we can use different codes to create a file. we can use echo "Hello World" > sample.md and it creates a new md file with the contents Hello World. There is also an another way to create a file in powershell which is Set-Content Sample.md "Hello World", Set-content is a   powershell command that writes text to a file, whereas echo command is used for displays output in console. if we want to add contents in echo we should    append(>>) it, ex: echo "New line" >> sample.md. We can also use Add-Content sample.md "new line".

                - To add the file in GitHub, we can use the same commands used in GITCMD.
                                git add Sample.md
                                git commit -m "First Commit"
                                git push origin main

                - pwd -> To print the directory

                - ls  -> To list files and folders in the current directory

                - mkdir Sample -> Creates a new directory called Sample

                - rm sample.txt -> Deletes the file sample.txt

                - rm -r Internship -> Deletes the Internship folder

                - cp smaple.txt Internship\ -> Copies the sample.txt to Internship folder

                - mv sample1.txt sample2.txt -> It moves or renames sample1.txt to sample2.txt

                - cat sample.txt / type sample.txt -> Displays the contents of sample.txt

                - clear -> It will clear the powershell screen


        - ## """VIM:"""

                - VIM stands for "Vi IMproved". It is a also a text editor used in command-line interface(CLI). It can be used on Linux, macOS, and Windows.VIM is very useful than other editors. It is very fast and lightweight, easily customizable and it works in terminal itself.

                - Install the latest VIM application and run it in the terminal. To open VIM, use this code "vim day_six_report.md". It will open a new     terminal in which we can type our content. But, before typing we have to give "i" or "a" or "o" command then only it will go to insert mode so that we can  type.

                - Some basic VIM commands:
                        - i -> insert before cursor

                        - a -> insert after cursor

                        - 0 -> opens a new line below

                        - Esc key -> It will exit insert mode.

                        - :w -> It will save the file.

                        - :q -> It will quit the file.

                        - :wq -> It will save and quit the file.

                        - :q! -> It will quit the file without saving.

                        -  dd -> It will delete the current line.

                        -  yy -> It will copy a line.

                        -  p  -> Paste


        - Learned about how to use powershell and what are all the commands for powershells and how to connect VIM with powershell and how to create a file in VIM and save it.