import UIKit

var str = "Hello, playground"


let array = [16,1,0,100,9]
var sortedArray = array

/// Insertion Sort Implementation
private func insertionSort(_ arrayToSort: [Int]) -> [Int] {
    var arr = arrayToSort
    guard arrayToSort.count > 1 else {
        return arr
    }
    
    for ind in 1..<arr.count {
        //print(ind)
        var index = ind
        while index > 0 && arr[index] < arr[index - 1] {
           // print(index)
           // print("Swap \(arr[index]) with value \(arr[index-1])")
            arr.swapAt(index-1, index)
            index -= 1
        }
    }
    
    return arr
}

//print(insertionSort(array))
private func a() {
    for i in stride(from: 10, to: 15, by: 1) {
        print("i=\(i)")
    }
}

//a()

for i in stride(from: 10, through: 15, by: 1) { print("i=\(i)") }

