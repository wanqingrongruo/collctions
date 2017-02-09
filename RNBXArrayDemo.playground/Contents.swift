//: Playground - noun: a place where people can play

import UIKit

 var str = "Hello, i am array demo"

// create array

var array01: Array<Int> = Array<Int>()
//var array02 = [Int]()
var array02: [Int] = []
var array03 = array02

// create array and specifies the initial value defined at the same time
var threeInts = [Int](repeatElement(3, count: 4))
var sixInts = threeInts + threeInts
var fiveInts = [1,2,3,4,5]

if sixInts.isEmpty{
    print("this array is empty")
}

// use `range operator` to access to an array
// return: ArraySlice which is a period of an array => 什么是ArraySlice呢？简单来说，就是Array某一段内容的view，它不真正保存数组的内容，只保存这个view引用的数组的范围：
fiveInts[0...2]
fiveInts[0..<2]
Array(fiveInts[0..<2])

// Traversing the array - 遍历数组
for value in fiveInts{
    print(value)
}

for (index, value) in fiveInts.enumerated(){
    print("\(index)" + "\(value))")
}

fiveInts.forEach { (value) in
    print(value)
}

// add + delete

fiveInts.append(6)
//fiveInts += fiveInts
fiveInts.endIndex
fiveInts.insert(100, at: fiveInts.endIndex)
fiveInts.remove(at: fiveInts.endIndex-1)
fiveInts.removeLast()



