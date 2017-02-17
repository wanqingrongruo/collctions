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
var slice = fiveInts[0..<2]
slice = []




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

// ### Array and NSArray

var a = [1,2,3]
let copyA = a // 此时,真正的copy并没有发生,两个数组仍旧引用同一个内存地址

//a.append(4) // 修改了 a 数组,两个数组对象分开,有了各自的地址

// 实例验证
func getBufferAddress<T>(of array: [T]) -> String{
    return array.withUnsafeBufferPointer({ buffer in
        return String(describing: buffer.baseAddress)
    })
    
    // withUnsafeBufferPointer是 array 的一个方法,他可以把保存的 Array 内容的地址传递给它的 closure 参数
}

getBufferAddress(of: a)
getBufferAddress(of: copyA)

a.append(4)

getBufferAddress(of: a)
getBufferAddress(of: copyA)

// 深拷贝 -- 拷贝了值,而不是拷贝地址
// 浅拷贝 -- 拷贝了地址
let b = NSMutableArray(array: [1,2,3,4])
let copyB: NSArray = b
let deepCopy = b.copy() as! NSArray

b.insert(0, at: 0) // [0, 1, 2, 3, 4]

copyB // [0, 1, 2, 3, 4]

deepCopy // [1, 2, 3, 4]


// swift 下的 array 的使用
var sa = [1,2,3,4,5,6,7,8,9]
type(of: sa[1])
let index = sa.index{ $0 == 3 }
index
type(of: index)
sa.first
type(of:sa.first)
sa.removeLast() // 需要确定数组不为空
sa.popLast() // return: optional

let constantSeq = sa.map { (a) -> Int in
    return a*a
}

//  partition(by:)则会根据指定的条件返回一个分界点位置。这个分界点分开的两部分中，前半部分的元素都不满足指定条件；后半部分都满足指定条件
let pivot = sa.partition { $0 < 2 }
pivot
sa[0 ..< pivot]
sa[pivot ..< sa.endIndex]

// 计算变量内存大小
MemoryLayout.size(ofValue: sa)
sa.makeIterator()

print("set begin")

// set
// type annotation first, otherwise type intference will understand it as Array
var setA: Set<Int> = [1,2,3,4,5,6,7]
setA.forEach { (t) in
    print(t)
    return
}
//setA.count
//setA.isEmpty
//setA.remove(7)
//setA.insert(55)
//setA.contains(44)

var setB: Set = [5,6,7,8,9,10]
// 交集
let intersectionAB = setA.intersection(setB)
// 并集
let unionAB = setA.union(setB)
// 并集取反
let symmetricDifferenceAB = setA.symmetricDifference(setB)
// A独有的
let subtractingAB = setA.subtracting(setB)

print("Range*********Uncountable")
for i in stride(from: 1.0, to: 5.0, by: 1.0){
    print(i)
}
for i in stride(from: 1.0, through: 5.0, by: 1.0){
    print(i)
}
