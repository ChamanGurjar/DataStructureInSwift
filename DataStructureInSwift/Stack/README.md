# DataStructure-Swift
# Stack


```swift
class Node<T> {
    
    let value: T
    var next: Node?
    
    init(value: T) {
        self.value = value
    }
}

class Stack<T> {
    var top: Node<T>?
    
    func push(value: T) {
        let oldTop = top
        top = Node(value: value)
        top?.next = oldTop
    }
    
    func pop() -> T? {
        let valueToPop = top?.value
        top = top?.next
        return valueToPop
    }
}
```

## Usage

```swift
let stack = Stack<Int>()
stack.push(value: 1)
stack.push(value: 2)
stack.push(value: 3)

stack.pop()
stack.pop()
stack.pop()
stack.pop()
```





