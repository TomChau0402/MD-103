import UIKit

import UIKit

let myValues : [Int] = [10,20,30]
print(myValues)

//Empty array
var fruits = [String]()
var age : [Int] = []
var gardes : [Float]
var isStand : [Bool]

// accessing arrays -> The fruit list

var fruitsList : [String] = ["Apple","Banana","Orange"]

//Print the second fruit -. index
print("The second fruit is: ", fruitsList[1])

//accessing the last and first item
print(fruitsList.first!)
print (fruitsList.last!)
      
print(fruitsList.last ?? "No fruit")
// Looping the Array
for fruit in fruitsList{
    print(fruit)
}
for (index, fruit) in fruitsList.enumerated() {
    print(" The indext is : \(index) and the fruit is : \(fruit)")
}
    //Search an item by its value
print(fruitsList.contains( "banana")) //false

print(fruitsList.contains( "Banana"))
    

//Remiove Item byt Indez
print("Remove Item: ", fruitsList.remove(at:2))
print("Fruits after removing: ", fruitsList)

//1. Ask for the indext of the value
