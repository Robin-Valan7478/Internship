# - ___DAY NINE @ SURFBOARD PAYMENTS:___


## - ___OPERATORS IN FLUTTER:___
	
	- Operands : It represents the data.
	- Operators: It represents how the operands will be processed to produce a value.

	- Types:
		- Arithmetic Operators
		- Increment and Decrement Operators
		- Assignment Operators
		- Logical Operators
		- Type Test Operators

### - ___Arithmetic Operator:___

	Arithmetic operator performs addition(+), subtraction(-), multiplication(*), division(/), unary minus(-expr), integer division(~/), modulus(%). 

### - ___Increment and Decrement Operators:___

	- Increment operators are pre increment(++var) and posticrement(var++). Decrement operators are post increment(var++) and post decrement(var--).  

	- Pre increment or decrement will increment/decrement the value by 1 before the compilation, whereas post increment or decrement will increment/decrement the value by 1 after the compilation.

### - ___ASSIGNMENT OPERATORS:___

	- Assignment operators are used to assign values to a variable. They are =, +=, -=, *=, /=.

### - ___RELATIONAL OPERATORS:___

	- It is used to make a comaprion. they are greater than(>), lesser than(<), greater than or equal to(>=), lesser than or equal to(<=), equal to(==), not equal to(!=).

### - ___LOGICAL OPERATORS:___
	
	- It is used to compare values. they are &&(AND - it returns true if all conditions are true), ||(OR- it return true if any one condition is true.)
!(NOT-true means false and false means true).

### - ___TYPE TEST OPERATORS:___
	
	- Type test operators are used for checking types at runtime. is(gives Boolean value true if the object has a specific type), is! (gives bollean value false if the object has a specific type)

### - ___Conditions In Dart:___

	- If condition:
		if statement allows us to execute a code block when the given condition is true. 
		ex: - void main(){
    			var age = 20;
			if(age >= 18)
				{
      				print("You are eligible.");
    				}                     Output: You are eligible.
			
}	
	- If-else condition:
		If the result is true if will be executed if not else will be executed.
		ex:
			void main(){
        		int a = 12;
        		if(a >= 18){
            			print("You are voter.");
        		}else{
           			 print("You are not eligible.");
       			 }
			}                          Output: You are not eligible
	- If-else-if condition:
		We use this for multiple comditions.
		
	- switch case:
		Based on the coditions it will execute.
		ex:
			void main() {
  				int day = 3;
				switch (day) {
    				  case 1:
      					print("Monday");
      					break;
    				  case 2:
      					print("Tuesday");
      					break;
    				  case 3:
      					print("Wednesday");
      					break;
    				  case 4:
      					print("Thursday");
     					break;
    				  case 5:
      					print("Friday");
      					break;
    				  default:
      					print("Weekend");
  					}
				}                Output: Wednesday

# - ___LOOPS IN DART___:

	- It is used to repeat a set of condition until it become false.
	- Types:
		- For loop
		- for Each loop
		- While loop
		- Do while loop

    - For Loop:
		- we can use a for loop to run a code block multiple times according to the condition.
		- ex:
			void main() {
				for (int i = 1; i <= 10; i++) {
    				print(i);
  				}
			}                                                  

	- For Each Loop:
		- It is useful when we want to loop through list/collection.
		- ex:
			void main(){
 				List<String> footballplayers=['Ronaldo','Messi','Neymar'];             Output: Ronaldo
  				footballplayers.forEach( (names)=>print(names));                               Messi
			}                                                                                      Meymar  
	
	- While Loop:
		- While loop will run until and unless the condition is true. We should write conditions before statements.
	        - Ex:
		void main() {
  			int i = 1;
  			while (i <= 10) {
    				print(i);
    				i++;
  				}
	- do while loop:
		- Do while loop is used to run a block of code multiple times. The loop’s body will be executed first, and then the condition is tested.

		- Ex:
			void main() {
  				int i = 1;
  				do {
   				     print(i);
    				     i++;
  				} while (i <= 10);
			}

### - ___FUNCTIONS:___

	- Using functions, we can avoid code repetition and it is very easy to divide the complex programs.

	- Syntax: returntype functionName(parameter1,parameter2, ...){
  		// contents
		}

	- Types of functions:
		- No Parameter And No Return Type
		- Parameter And No Return Type
		- No Parameter And Return Type
		- Parameter And Return Type

	 ### - No Parameter And No Return Type:
		- In this function, there will be no parameter as well as no return type.
		- Ex:void main() {
  			printName();
			}
		void printName() {
  			print("robin");
			}

	### - Parameter And No Return Type:
		- In this function, we will pass the parameter and there will be no return type.
		- Ex: 
			void add(int a, int b) {
  			  int c = a + b;
  			  print("The sum is $sum");
			}
			void main() {
 			 int x = 10;
 			 int y = 20;
			 add(x,y);
			}

	### -  No Parameter And Return Type:
		- In this function, we will have not pass any parameter but there will be a retun type.
		- Ex:
			void main() {
  			 String a = name();
  			 print("The Name of the Co founder of Surfboard Payments is $a.");
			}
			 String name() {
  			 return "Abhraham";
			}

	### - Parameter And Return Type:
		- In this function, there will be a return type and as well as parameter will be passed.
		- Ex:
			int add(int a, int b) {
  			 int c = a + b;
  			 return c;
			}
			void main() {
  			 int x = 10;
  			 int y = 20;
			 int z = add(x,y);
  			 print("The sum is $z.");
			}

	- Learned about Operators, conditions, loops, and functions in dart.

	

## - ___PROGRAMMING LANGUAGE___:
		
	- It is a language used by humans to communicate with the computers easily, because computers knows only zeroes and ones. Using a compiler, we translate our code into computer-understandable codes. Compiler acts as a translator medium btween humans and computers.

	

	


		
	

