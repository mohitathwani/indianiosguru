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
//var theThing:Float?

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
//If somethingX was set to nil, the call to countElements would cause a runtime error.
//Also notice that I do not have to unwrap the variable in the call to countElements as the variable is implicitly unwrapped
let somethingX:String! = "Hello!"
countElements(somethingX)

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
//The global function countElements() is used to retrieve the number of characters in a string
println("The length of combinedString is \(countElements(combinedString))")

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





























