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

"#Opdracht 5, 6, 7#" println


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
		return "You guesed the number!" println
	)
	numberOfGeusses = numberOfGeusses + 1
)