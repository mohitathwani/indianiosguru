// Playground - noun: a place where people can play

//Video1
//Constants and Variable
// Use "let" for constants, "var" for variables

let employeeID = 25
var highScore = 2000

//employeeID = employeeID + 1
highScore = highScore + 1

var str = "Hello, Playground"

//Decalring variables with explicit data types
let name:String = "Rajinikanth"
let pi:Double = 3.14159
var x,y,z :Double
x = 20
y = 34
z = 45.6789

//Printing
println(employeeID)
println("Hardcoded Message")
println("The employeeID is \(employeeID)")

//Comments
//This is a single line comment

/* This is a 
multiline comment*/

//Integers:
//Swift provides signed and unsigned integers in 8,16,32,64 bit forms
//The naming convention is similar to C
//For e.g:
//UInt8 -> unsigned 8 bit int
//Int32 -> signed 32 bit int

var someX:UInt8 = 150

//The Int type:
//Int has the same size as the current platforms word size.
//32 bit platform -> translated to Int32
//64 bit platform -> translated to Int64
//
//32 bit platform -> UInt32
//64 bit platform -> UInt64

let someInt:Int = 50

//Floating point numbers
//Double -> 64 bit floating point number
//Float -> 32 bit ploating pointnumber

var someDouble:Double = 12.456372829
let someFloat:Float = 3.13457594

//Double is always used in Type Inference
var asd = 4.132

//Integer-Float conversion
let intPi = Int(pi)

let decimalPartOfPi = 0.14159
let originalPi = Double(intPi) + decimalPartOfPi

//Type Aliases
typealias CustomInt = Int
var f:CustomInt = 50

//Bool -> true / false

let earthIsRound = true
let rosesAreBlue = false

if earthIsRound {
    println("Earth is round")
}

//Tuples
//Tuples are a way to group multiple values into a single compound structure
let circle = (20,30,50)
let nameX = ("Steve", "Jobs")

//Tuples can be created with any combination of data types like: (Int, String, Int), (Float, String), (String, String, Int), etc..

//To decompose a tuple, we use the following:
let (X, Y, radius) = circle
println("X is \(X), y is \(Y), radius is \(radius)")

//We can even name the individual elements when the tuple is defined.
var newCircle = (x: 20, y: 30, radius: 50)
println("\(newCircle.x), \(newCircle.y), \(newCircle.radius)")

//Video2
//Optionals
//We use optionals when we are not sure if something may or may not have a value
//To understand optionals, we'll take the example of the "toInt" ethod of the String type
//Option click on convertedInt and you will see the type is Int?
//It basically means that convertedInt can either have an int stored in it or it can be nil
let  intAsString = "123"
let convertedInt = intAsString.toInt()

//Try to set nil to a non-optional data type. You'll see that it is just not possible.
//var something:String
//something = nil

//By default optionals start of as nil. If you only want to declare an optional and set it's value later, make sure you declare it as a var and not let
var theThing:Float?
theThing = 4.56
//Unwrapping an optional
//We can use an if statement and forced unwrapping to unwrap an optional
//Force unwrapping an optional which is nil will cause a runtime error. Always use the if condition to be safe.
if convertedInt != nil {
    println("The actual number is \(convertedInt!)") //See the ! in front of the variable name. That's forced unwrapping.
}

//Optional Binding
//We use optional binding to check if an optional has a value and if it does, we store it in a temporary variable
//I always put the "u" in front of the temporary variable so that I know it is the unwrapped variable.
if let uConvertedInt = convertedInt {
    println("The actual number is \(uConvertedInt)")
}
else {
    println("convertedInt is nil")
}

//Implicity unwrapped Optioanls
//Sometimes, we might know for a fact that an optional will always have a value, and therefore, there's no need to check and unwrap the value every time we want to access it
//Implicitly unwrapped optionals are declared with a ! rather than with ?
//If somethingX was set to nil, the call to count would cause a runtime error.
//Also notice that I do not have to unwrap the variable in the call to count as the variable is implicitly unwrapped
let somethingX:String! = "Hello!"
count(somethingX)

//Video3
//Swift supports most of the standard operators available in C and also improves capabilities of some of them.
//For e.g, the == operator can be used to compare strings.

//Types of operators:
//->Unary: work on a single operand. For e.g, !, ++, --
//->Binary: work on two operands. For e.g, +,-,*,/,%, etc
//->Ternery: operates on three operands and there's only one sunch operator. For e.g, ?:

//Unary Operators:
let someBool = false
!someBool

var apple = 1
++apple
apple--
apple

//Binary Operators
apple = apple + 5

apple = apple - 2

apple = apple * 3

apple = apple/4

apple = apple % 2

//Swift also has Comparison operators which are basically binary operators
//Each of the comparison operators returns a Bool value
apple == 5
apple != 6
apple > 2
apple < 4
apple >= 3
apple <= 6

//== can also be used with Strings
let nameXY = "Steve"
nameXY == "Steve" //try setting the name to "steve", ie, lower case s

//Ternery Operator
//?: is the only ternery operator available
var isEven = (apple % 2 == 0) ? true : false

//Range Operators
//Swift has two shortcuts for expressing a range of values

//Closed range operator
for currentNumber in 1...5 {
    println("The current number is \(currentNumber)")
}

//Half-open range operator
for currentNumber in 1..<5 {
    println("The current number is \(currentNumber)")
}

//Logical Operators
//Swift supports the three standard logical operators:
//Logical NOT : !
//Logical AND : &&
//Logical OR : ||
if !isEven {
    println("Not even")
}

let hasApple = true
let hasBananas = false

if hasApple && hasBananas {
    println("The grocery list is complete")
} else {
    println("You've missed something!")
}

if hasApple || hasBananas {
    println("Either fruit is fine")
} else {
    println("You need atleast one fruit!")
}

//Video4
//Strings and Characters
//Initializing a string variable/constant is as easy as:
let someString = "This is a string"
//Swift will use type inference to automatically infer the type of someString to be String.

//Initializing an empty String
//To create an empty String, we can use one of the two options available to us:
var emptyString = ""
var secondEmptyString = String() //This is the String initializer syntax

//Mutating Strings
//To be able to mutate strings, we should store the string as a var rather than a let
//So you can see the string concatenation can be done with the + operator
var mutableString = "Jack"
mutableString += " and Jill"

//Important thing to note about Strings is that they are passed by value and not by reference unlike most other languages

//Characters
//Swift strings are nothing but a collection of characters
//We can use a for-in loop on a String to print it's characters individually
for character in mutableString {
    println(character)
}

//We can also create stand-alone character constants or variables
let dollarSign:Character = "$" //Notice the double quotes

//Concatenating Strings and Characters
let string1 = "do something"
let string2 = " awesome"
var combinedString = string1 + string2

//Strings can also be appended to strings with the help of the += operator as seen in a previous example

//To append a charcter to a string, we use the append() function of the String type
combinedString.append(dollarSign)

//String interpolation
//Many a times we would like to print the values of variables/constants of different types on screen in a copmlete sentence
//Swift has a special syntax to do so: \()
let numDogs = 5
let message = "I have \(numDogs) dogs"

//Counting Characters
//The global function count() is used to retrieve the number of characters in a string
println("The length of combinedString is \(count(combinedString))")

//Video5
//Collection Types
//There are two collection types available: Arrays and Dictionaries
//Arrays and Dictionaries in swift are strongly typed, so you cannot insert a value of the wrong type by mistake.

//Mutability of Collections
//Assigning a collection to var makes it mutable whereas assigning to let makes it immutable, therefore, it's size and contents cannot be changed.

//Arrays
//Arrays can be initialized with an array literal, i.e a comma separated list of values enclosed within square brackets.
var toBuyList = ["Bread", "Eggs", "Milk"]

//To get the length of the array:
let toBuyListLength = toBuyList.count

//We can also use the Bool property "isEmpty" to quickly check whether an array is empty or not.
if toBuyList.isEmpty {
    println("You have nothing to buy!")
}
else {
    println("You have \(toBuyListLength) items to buy")
}

//To add an item to the end of an array:
toBuyList.append("Butter")

//We can also use the + operator to append an array to our array.
toBuyList += ["Flour", "Sugar", "Cheese"]

//We can use the subscript syntax to get an element from an array
let firstItem = toBuyList[0] //Array indices start from 0!

//We can also insert elements at a specific index:
toBuyList.insert("Nutella", atIndex: 2)

//Similarly, we can remove elements with the syntax:
toBuyList.removeAtIndex(3)

//Iterating over an array:
//We can use the for-in loop to iterate over an array:
for item in toBuyList {
    println(item)
}

//If it is important for us to know the the index number of the elements, we can use the global enumerate() function which returns a tuple:
for (index, value) in enumerate(toBuyList) {
    println("\(index) -> \(value)")
}

//Creating empty Arrays
//We can create an initialize an empty array with the initializer syntax:
var intArray = [Int]()

//Now we can use any of the techniques studied above to insert elements into the array
intArray.append(2)
intArray += [4,6,3]

//Dictionaries
//A dictionary is a key-value pair data structure. In a dictionary, the key and value are separated by a colon and each key-value pair is separated by a comma.
var person:[String:String] = ["name":"Steve", "lastName":"Jobs", "company":"Apple"]

//We can count the number of key-value pairs using the count property
println("There are \(person.count) key-value pairs")

//Similarly, we can also use the isEmpty property:
if person.isEmpty {
    println("person is empty")
} else {
    println("The person dictionary is not empty")
}

//To add a new key-value pair:
person["country"] = "USA"

//To modify an existing key-value pair:
person["company"] = "Apple, Inc"

//To get the value of a particular key, we can use the subscript syntax:
let firstName = person["name"]

//To completely remove a key-value pair, just set the value of the corresponding key to nil
person["country"] = nil

//Iterating over a dictionary:
//Each key-value pair of a dictionary is returned as a tuple while using a for-in loop
for (key, value) in person {
    println("\(key) : \(value)")
}

//If for some reason, we need to inspect the keys of a dictionary, we can use the "keys" property of the dictionary
for key in person.keys {
    println(key)
}

//Similarly, we can use the "values" property to get only the values
for value in person.values {
    println(value)
}

//Creating an empty dictionary
var intStrings = [String:Int]()

//To add key-value pairs in a dictionary, we can use any of the techniques we have studied above
intStrings["Zero"] = 0
intStrings["One"] = 1
println(intStrings)

//Video6
//Control Flow Statments
//Swift has the traditional control flow statements like "for" and "while" loops and "if" and "switch" for conditional execution of code.
//In addition to the traditional control flow statements, swift also provides a nifty for-in loop which makes it dead simple to iterate over collections like arrays, dictionaries, strings and other sequences.
//The switch statement in swift is very powerful as compared to it's counterpart in other languages. Cases do not automatically fall-through in the absence of a break statement, cases can match against various patterns like ranges and tuples. Cases can also have values associated with them and complex matching conditions can be expressed with a "where" clause.

//For Loops:
//Swift provides two kinds of for loops:
//1. The traditional for loop
//2. The for-in loop

//The For-in loop
for multiplier in 1...10 {
    println("\(multiplier) times 3 is \(multiplier * 3)")
}

//The for-in loop can be used to iterate over elements in an array as seen before.
//The for-in loop can also be used to iterate over characters of a string as seen before.

//The For loop:
//Swift also supports the traditional for loop.
for var i = 0; i < 5; i++ {
    println("The value of i is \(i)")
}

//While Loop:
//While loop will check for condition first and then execute its contents.
var i = 0
while (i < 5) {
    println(i)
    i++
}

//Do-while loop:
//Do-while will execute atleast once before checking the condition.
var iA = -1
do {
println(iA)
} while(iA > 0)

//Conditional Statements
//There are two conditinal statements supported by swift. The if statement and the switch-case.

//If:
//The if statement checks for a condition and if the condition evaluates to true, it will get executed. If not, the else block will get executed.
if toBuyList.count < 3 {
    println("You have few items left to buy")
}

else {
    println("You're grocery list is pretty huge!")
}

//We can also chain multiple if statements like so:
if toBuyList.count < 3 {
    println("List is small")
}

else if toBuyList.count > 3 && toBuyList.count < 6 {
    println("List is medium")
}

else {
    println("The list is pretty big!")
}

//Switch Case
//A switch statement takes the variable passed to it and compares it with several matching patterns. On finding the first appropriate match, an appropriate block of code is executed.
let randomCharacter = "m"
switch randomCharacter {
    
    case "a", "e", "i", "o", "u":
    println("Vowel")
    
    case "b", "c", "d", "f", "g", "h", "m":
    println("Consonant")
    
    case "0", "1", "2":
    println("Number")
    
default:
    println("Special Character")
}

//Compared to the Switch statements in C and other traditional languages, the switch in swift does not fall through if a break statement is not give.

//Switch cases in swift can also be used to check for ranges:
switch toBuyList.count {
    
case 0:
    println("empty")
    
case 1...3:
    println("few")
    
case 4...8:
    println("a lot")
    
default:
    println("You really have a lot of shoppong to do!")
}

//The switch statement in swift can also match against tuples:
let ageheight = (22, 150)

switch ageheight {
    
case (20...22, 160...170):
    println("The age-height ratio is normal")
    
case (20...22, 140...159):
    println("The height is abnormal")
    
default:
    println("Please get yourself checked!")
}

//Control Transfer Statements:
//Swift has four Control Transfer statements:
//1. break
//2. continue
//3. fallthrough
//4. return

//We will be looking at the break and continue in this video.

//Continue:
//When used in a loop, it forces the loop to continue to the next iteration thereby skipping rest of the statements.
for i in 1...10 {
    if i % 2 != 0 {
        continue
    }
    println(i)
}

//Break:
//The break statement when used in a loop causes the loop to completely terminate and the control is passed to the next line of code after the loop.
for i in 1...5 {
    if i == 3 {
        break
    }
    println(i)
}

//Note: If you use break in a switch case, the control will be transferred to the statements outside the switch.

//Video7
//Functions
//Functions are self contained blocks of code that perform a certain task and allow us to re-use code.
//Along with it's name, every function in Swift has it's own type. The type of a function is it's parameter types and it's return type. This unique feature of swift allows us to treat functions like any other objects.
//Moreover, functions is Swift can also be nested within other functions to encapsulate usefule functionality.

//Function Definition:
//Functions can optionally have a set of inputs also called as parameters that the function internally uses to do some processing and optionally the function can have a return type to indicate that the function will return the result of the processing back to the line of code that "called" the function.
//Functions have a name and we call a function by referencing it's name and passing parameters.
//The order in which the values, also known as arguments is passed to the function should match the order in which the parameters are declared.
func computeSquare(number:Int) -> Int {
    
    return number * number
}
//The "func" keyword is used to indicate the declaration of a function. The arrow operator is used to indicate that the function is going to return a value.
//From the function signature, we can see that the name of the function is computeSquare, it accepts a parameter called number who's data type is int and the function returns a value of type int.

//To call the function:
computeSquare(3)
let aX = computeSquare(5)

//Multiple Parameters:
//Functions is Swift can also have multiple input parameters separated by commas.
func sayHello(firstName:String, lastName:String) -> String {
    
    return "Hello \(firstName) \(lastName)"
}

//To call the above function and print it's result:
println(sayHello("Amitabh", "Bachchan"))

//Functions without parameters:
func sayGoodMorning() -> String {
    return "Good Morning!"
}

//Functions without return values:
func sayGoodAfternoon() {
    
    println("Good Afternoon!")
}

//Calling the above functions:
sayGoodMorning()
sayGoodAfternoon()

//Functions with multiple return values:
//Swift functions can return multiple values with the help of tuples.
func findFirstAndLast(array:[Int]) -> (first:Int, last:Int) {
    
    return(array[0], array[array.count - 1])
}
//As you can see, we are giving names to the individual tuple values that helps us to easily access the individual values.

//To call the above function:
let firstAndLast = findFirstAndLast([1,4,2,6,5,4])
println("The first element is \(firstAndLast.first) and the last element is \(firstAndLast.last)")

//Parameter Names:
//All of the functions we have seen so far have defined parameter names. These prameter names are are only for local use within the scope of the function. This can cause ambiguity as we may not know the purpose of the parameters.
//To solve this problem, we can use external parameter names to indicate the purpose of the argument.
//For example:
func drawCircle(x: Double, y: Double, r:Double) {
//    code to draw a circle
}

drawCircle(12.34, 3.8, 5.9)
//When we call the drawCircle function, the purpose of the three arguments passed to it is unclear and leads to ambiguity in code.

//To make our intent clear, we should use external parameter names.
func drawCircle2 (atX x:Double, atY y:Double, radius r:Double) {
    
    println("Drawing a circle at \(x),\(y) with radius \(r)")
}

drawCircle2(atX: 3.5, atY: 4.2, radius: 8.9)
//This makes our code more expressive. Internally, the three parameters will be referenced by their internal names i.e, x,y,r

//Default values for Parameter:
//Parameters can have default values and we can omit the parameter while calling the function:
func drawSquare(atX x:Double, atY y:Double, withSide side:Double = 3.0) {
    
    println("Drawing a square at \(x),\(y) with side \(side)")
}

drawSquare(atX: 0.0, atY: 0.0)
//OR
drawSquare(atX: 4.5, atY: 3.2, withSide: 6.7)

//Functions with variable parameters:
//Functions can have parameters that can be passed a variable number of input values.
//The values passed to such a parameter are available as an array in the body of the function.
func findAverage(numbers:Int...) -> Double {
    
    var total = 0
    
    for number in numbers {
        total += number
    }
    
    return Double(total)/Double(numbers.count)
}

//We call this function as:
findAverage(3,5,4,6,8,1)
findAverage(1,3)
//It must be noted that the variable parameter should be the last parameter in a function with different parameters to avoid ambiguity.

//In-Out parameters:
//If we want to make changes to external variables by doing some calculations within the function, we declare the parameters as in-out parameters.
func swap(inout a:Int, inout b:Int) {
    
    let temp = a
    a = b
    b = temp
}

//We can call this function with two variables. We cannot call this function with constants and literals.
var frstInt = 5
var secondInt = 11

swap(&frstInt, &secondInt)

frstInt
secondInt
//The original values in the two variables have been modified. This is something like pointers in C.

//Function Types:
//Functions in Swift have their own types just like how variables and constants have their own data types.
//For example, the function type of the swap function above is:
//(Int, Int) -> ()
//For the average function:
//(Int...) -> Double
//And because of this special deature of Swift, we can pass functions as parameters to other functions and also return functions from functions.
func specialFunc(paramFunction:(String, String) -> String, string1:String, string2:String) {
    
    let x = paramFunction(string1, string2)
}

//To call this function:
specialFunc(sayHello, "Aishwarya", "Rai")

//Similarly, functions can also return functions
func anotherSpecialFunc() -> (String, String) -> String {
    
    return sayHello
}

var returnedFunc = anotherSpecialFunc()
//And we can now call the function by:
returnedFunc("Aamir", "Khan")

//Video8
//Closures
//Closures are self contained blocks of code that can be passed around as objects in code. To make things simpler to understand, think of closures as nameless functions.
//Closures in swift can capture and retain references to objects, constants and variables from the context in which they are defined. Memory management for "capturing" the references is automatically handled for you.
//In fact, all functions in Swift are special types of closures. Functions are named closures and may or may not capture values from the surrounding.
//The standard library in Swift has a sorted function which takes in two parameters. One is an array that needs to be sorted and the other is a closure or an "inline function" that specifies the rules for sorting.
let marks = [50.5, 72.0, 88.5, 34.5, 93.0]

//The closure that is passed to the sorted function has to be of the type: (Double, Double) -> Bool, beacuse we have an array Double

//Let's look at different ways to sort:
//Since functions are nothing but special kinds of closures, we can create a function and pass it to the sorted.
func descending(a:Double, b:Double) -> Bool {
    return a > b
}

var descendingArray = sorted(marks, descending)

//Another way to achieve this is with the inline closure expression syntax:
descendingArray = sorted(marks, { (a:Double, b:Double) -> Bool in
    return a > b
})

//Since Swift caninfer type from context, we don't need to specify the data type for the parameters a and b
descendingArray = sorted(marks, { (a, b) -> Bool in
    return a > b
})

//Swift knows that the sorted function is being called on an array of Doubles and can automatically infer the types of parameters a and b.

//Swift also has another syntax for shorthand argument names.
//These shorthand arguments are referenced by the $ sign and a zero based index.
//For example, if the closure is expected to have 3 parameters, the shorthand names would be: $0, $1, $2
//Now, the descendingArray can be written as:
descendingArray = sorted(marks, {$0 > $1})

//Trailing Closures
//If the last and final parameter of a function is a closure, then we can use the trailing closure syntax. A trailing closure will be written outside the closing paranthesis of the function to which it belongs.
func doSomethingWithClosures(a:Int, b:Double, closure:() -> ()) {
//    do something
}

//The traditional way of calling this function is:
doSomethingWithClosures(2, 3.14) { () -> () in
    //do someting in the closure!
}

//With the trailing closure syntax, we call this function as:
doSomethingWithClosures(2, 3.14) {
    //closure code in here
}

//Closures as Reference Types:
//Closures in Swift are reference types and are passed by reference. So for example, if two variables are assigned a closure, then both of them would be referencing the same closure.