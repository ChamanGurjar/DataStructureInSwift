import UIKit


class Node {
    
    let value: Int
    var next: Node?
    
    init(value: Int) {
        self.value = value
    }
}

class Stack {
    var top: Node?
    
    func push(value: Int) {
        let oldTop = top
        top = Node(value: value)
        top?.next = oldTop
    }
    
    func pop() -> Int? {
        let valueToPop = top?.value
        top = top?.next
        return valueToPop
    }
}

let stack = Stack()
stack.push(value: 1)
stack.push(value: 2)
stack.push(value: 3)

stack.pop()
stack.pop()
stack.pop()
stack.pop()
stack.pop()
