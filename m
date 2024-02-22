JavaScript String Length
The length property returns the length of a string:

Example
let text = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
let length = text.length;
Extracting String Characters
There are 4 methods for extracting string characters:

The at(position) Method
The charAt(position) Method
The charCodeAt(position) Method
Using property access [] like in arrays
JavaScript String charAt()
The charAt() method returns the character at a specified index (position) in a string:

Example
let text = "HELLO WORLD";
let char = text.charAt(0);
JavaScript String charCodeAt()
The charCodeAt() method returns the code of the character at a specified index in a string:

The method returns a UTF-16 code (an integer between 0 and 65535).

Example
let text = "HELLO WORLD";
let char = text.charCodeAt(0);
JavaScript String at()
ES2022 introduced the string method at():

Examples
Get the third letter of name:

const name = "W3Schools";
let letter = name.at(2);
Get the third letter of name:

const name = "W3Schools";
let letter = name[2];
The at() method returns the character at a specified index (position) in a string.

The at() method is supported in all modern browsers since March 2022:

Note
The at() method is a new addition to JavaScript.

It allows the use of negative indexes while charAt() do not.

Now you can use myString.at(-2) instead of charAt(myString.length-2)
The length property returns the number of characters in a string.

Example
// defining a string
let sentence = "I love Programiz.";

// returns number of characters in the sentence string
let len = sentence.length;

console.log(len);

// Output:
// 17
Run Code
length Syntax
The syntax of the length property is:

str.length
Here, str is a string.

length Parameters
The length property does not take any parameters.

length Return Value
Returns the number of characters in a string.
Note: The String.length property returns the code units in the UTF-16 string format. Some rare string characters require two code units to be represented. Due to this, the length property might not always return the number of characters.

Example 1: Using length Property
// defining string
let string1 = "JavaScript";

// returns the number of characters in 'JavaScript'
let len = string1.length;

console.log(len);
Run Code
Output

10
In the above example, we have defined a string named string1. We have then used the length property to find out the number of characters in string1.

Since 'JavaScript' contains 10 characters, string1.length returns 10.

Example 2: length Property is Read Only
The String.length property is a read-only property. There will be no effect if we try to change it manually. For example:

let string2 = "Programming";

// assigning a value to string's length property
string2.length = 5;

// doesn't change the original string
console.log(string2); // Programming

// returns the length of 'Programming'
console.log(string2.length); // 11
Run Code
Output

Programming
11
Here we have assigned a new value to string2.length. Since the String.length property is read-only, assigning value to it doesn't change the original array.

string2.length returns 11 which is the length of 'Programming'.
JavaScript String replace()
The replace() method returns a new string with the specified string/regex replaced.

Example
const message = "ball bat";

// replace the first b with c
let result = message.replace('b', 'c');
console.log(result);

// Output: call bat
Run Code
replace() Syntax

The syntax of replace() is:

str.replace(pattern, replacement)
Here, str is a string.

replace() Parameter
The replace() method takes in:

pattern - either a string or a regex that is to be replaced
replacement - the pattern is replaced with this replacement (can be either a string or a function)
relace() Return Value
The replace() method returns a new string with the specified pattern replaced.
Example 1: Replace the first occurrence
const text = "Java is awesome. Java is fun."

// passing a string as the first parameter
let pattern = "Java";
let new_text = text.replace(pattern, "JavaScript");
console.log(new_text);

// passing a regex as the first parameter
pattern = /Java/;
new_text = text.replace(pattern, "JavaScript");
console.log(new_text);
Run Code
Output

JavaScript is awesome. Java is fun.
JavaScript is awesome. Java is fun.
In both replace() methods, the first occurrence of Java is replaced with JavaScript.

Example 2: Replace all occurrences
To replace all occurrences of the pattern, you need to use a regex with a g switch (global search). For example, /Java/g instead of /Java/.

const text = "Java is awesome. Java is fun."

// notice the g switch in the regex pattern
const pattern = /Java/g;
const new_text = text.replace(pattern, "JavaScript");
console.log(new_text);
Run Code
Output

JavaScript is awesome. JavaScript is fun.
Here, the replace() method replaces both occurrences of Java with JavaScript.

Replace Without Considering Uppercase/Lowercase
The replace() method is case sensitive. To perform the case-insensitive replacement, you need to use a regex with an i switch (case-insensitive search).

Example 3: Case-Insensitive Replacement
const text = "javaSCRIPT JavaScript"

// the first occurrence of javascript is replaced
let pattern = /javascript/i;  // case-insensitive search
let new_text = text.replace(pattern, "JS");
console.log(new_text)  // JS JavaScript

// all occurrences of javascript is replaced
pattern = /javascript/gi;  // case-insensitive and global search
new_text = text.replace(pattern, "JS");
console.log(new_text)  // JS JS
Run Code
Output

JS JavaScript
JS JS
Example 4: Passing Function as a Replacement
You can also pass a function (instead of a string) as the second parameter to the replace() method.

const text = "Random digit: 3"

// generate a random digit between 0 and 9
function generateRandomDigit() {
  return Math.floor(Math.random() * 10)
}

// regex to match a digit
const pattern = /\d/;

const new_text = text.replace(pattern, generateRandomDigit);
console.log(new_text)
Run Code
Output

Random digit: 8
You may get different output when you run this program. It's because the first digit in text is replaced with a random digit between 0 and 9.

