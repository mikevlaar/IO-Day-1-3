"#Opdracht 1#" println
calculateFibonacci := method(n,
	if(n < 3, 1, calculateFibonacci(n - 1) + calculateFibonacci(n - 2))
)

"Fibonacci with Recursion!" println
for(i, 1, 9, calculateFibonacci(i) println)

"" println

"#Opdracht 2#" println
originalDiv := Number getSlot("/")
"Original Division" println
(2 / 0) println
(2 / 1) println

"" println

Number / := method(i, 
	if (i != 0, self originalDiv(i), 0)
)
"Fixed Division" println
(2 / 0) println
(2 / 1) println

"" println

"#Opdracht 3#" println
calculateTotalSum := method(array,
	array flatten sum  
)
 
array := list(1, list(5, 8), 10, list(3, 9), list(5), 2)
calculateTotalSum(array) println

"" println

"#Opdracht 4#" println
List myAverage := method(
	sum := 0
	self foreach(i, value, if(value type == "Number", sum = sum + value, Exception raise("A value in the list is not a Number")))
	sum / (self size)
)

list(0) myAverage println
list(6, 2, 4, 7, 1, 9, 10, 1, 20, 0) myAverage println
#list(0, "NaN", 21) myAverage println

"" println

"#Opdracht 5#" println
twoDList := List clone;
twoDList dim := method(x, y, 
	self setSize(y)
	for(i, 0, (y - 1), 1,
		self atPut(i,(list setSize(x)))
    )
)

twoDList set := method(x, y, value,
	self at(y) atPut(x, value);
)

twoDList get := method(x, y,
    self at(y) at(x)
)

list := twoDList dim(2, 3); 
list set(0, 0, "A");
list set(1, 0, "B");
list set(0, 1, "C");
list set(1, 1, "D");
list set(0, 2, "E");
list set(1, 2, "F");

"Create new TwoDList!" println
list println
 
twoDListFile := File open("TwoDList.txt") 
twoDListFile write(list serialized())
twoDListFile close

""println

"#Opdracht 7#" println
"Read TwoDList from a file!" println
twoDListFile := doFile("TwoDlist.txt")
twoDListFile println

"" println

"#Opdracht 8#" println
#number := Random value(1, 2) floor ####Werkt niet!!!####
number := 43
numberOfGeusses := 0

while(numberOfGeusses < 10,
	"" println
	input := File standardInput readLine("Enter your guess: ") asNumber()
	number println
	
	if(input > number) then (
		"The number is too high!" println
	)
	if(input < number) then (
		"The number is too low!" println
	)
	
	if(input == number) then (
		"You guesed the number!" println
		numberOfGeusses = 10
	)
	numberOfGeusses = numberOfGeusses + 1
)

/**
 * Testcase for IO Day 2 myAverage function of Opdracht 4.
 */
opdracht4TestCase := UnitTest do(
	setUp := method(
		self oneToTen := list(1,2,3,4,5,6,7,8,9,10)
	)

	test_AverageOfOneToTenShouldBeFiveAndAHalf := method(
		assertEquals(5.5, oneToTen myAverage)
	)
)

FileCollector run
DirectoryCollector run