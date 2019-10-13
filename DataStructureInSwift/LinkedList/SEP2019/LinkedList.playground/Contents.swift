//
//  Node.swift
//  DataStructureInSwift
//
//  Created by Chaman Gurjar on 28/09/19. 05:52 PM
//  Copyright © 2019 Chaman Gurjar. All rights reserved.
//


import UIKit

class Node<Value> {
    
    public var value: Value
    public var next: Node?
    
    public init(value: Value, next: Node? = nil) {
        self.value = value
        self.next = next
    }
    
}

extension Node: CustomStringConvertible {
    
    public var description: String {
        guard let next = next else {
            return "\(value)"
        }
        return "\(value) -> " + String(describing: next) + " "
    }
}

func example(of: String) {
    print(of)
    
    let nodeOne = Node(value: 1)
    let nodeTwo = Node(value: 2)
    let nodeThree = Node(value: 3)
    
    nodeOne.next = nodeTwo
    nodeTwo.next = nodeThree
    
    print(nodeOne)
}

//example(of: "Example of creating and linking nodes...")


// 29 sep 2019 - Sunday
// Linked List

public struct LinkedList<Value> {
    var head: Node<Value>?
    var tail: Node<Value>?
    
    
    
    var isEmpty: Bool {
        return head == nil
    }
    
    // Push
    mutating func push(_ value: Value) {
        head = Node(value: value, next: head)
        
        if tail == nil {
            tail = head
        }
    }
    
    // Append
    mutating func append(_ value: Value) {
        guard !isEmpty else {
            push(value)
            return
        }
        
        tail!.next = Node(value: value)
        tail = tail!.next
    }
    
    
    // 30 Sep 2019 - Monday
    //Node at
    func node(at index: Int) -> Node<Value>? {
        var currentNode = head
        var currentIndex = 0
        
        while currentNode != nil && currentIndex < index {
            currentNode = currentNode!.next
            currentIndex += 1
        }
        
        return currentNode
    }
    
    // 30 Sep 2019 - Monday
    //Insert value in linked list at a particular index.
    @discardableResult
    mutating func insert(value: Value, after node: Node<Value>) -> Node<Value> {
        guard tail !== node else {
            append(value)  // If after node is the last node then we will add the value at the end of the linked list.
            return tail!
        }
        
        node.next = Node(value: value, next: node.next)
        return node.next!
    }
    
    // 30 Sep 2019 - Monday
    // Pop from the linked list
    @discardableResult
    mutating func pop() -> Value? {
        defer {
            head = head?.next
            if isEmpty {
                tail = nil
            }
        }
        return head?.value
    }
    
    // 13 Oct 2019 - Sunday
    @discardableResult
    mutating func removeFromLast() -> Value? {
        guard let head = head else {
            return nil
        }
        
        guard head.next != nil else {
            return pop()
        }
        
        var prev = head
        var current = head
        
        while let next = current.next {
            prev = current
            current = next
        }
        
        prev.next = nil
        tail = prev
        return current.value
    }
    
    // 13 Oct 2019 - Sunday
    @discardableResult
    mutating func remove(after node: Node<Value>) -> Value? {
        defer {
            if node.next === tail {
                tail = node
            }
            node.next = node.next?.next
        }
        return node.next?.value
    }
    
}

extension LinkedList: CustomStringConvertible {
    
    public var description: String {
        guard let head = head else {
            return "Linked List is empty"
        }
        return String(describing: head)
    }
    
}

// Linked List Impl

private func linkedListPushImpl() {
    var list = LinkedList<Int>()
    list.push(3)
    list.push(2)
    list.push(1)
    
    print(list)
}
// linkedListPushImpl()


private func linkedListAppendImpl() {
    var list = LinkedList<Int>()
    list.append(1)
    list.append(2)
    list.append(3)
    
    print("Append impl")
    print(list)
}
// linkedListAppendImpl()


private func linkedListInsertImpl() {
    var list = LinkedList<Int>()
    
    list.push(3)
    list.push(2)
    list.push(1)
    
    print("Before inserting the list : \(list) \n")
    let middleNode = list.node(at: 1)!
    
    for i in 5...8 {
        list.insert(value: i, after: middleNode)
    }
    
    print("List after insertion:  \(list)")
}

//linkedListInsertImpl()

private func linkedListRemoveFromLastImpl() {
    var list = LinkedList<Int>()
    list.push(3)
    list.push(2)
    list.push(1)
    
    print("Before removing the last node from the list : \(list) \n")
    
    let removedValue = list.removeFromLast()
    
    print("After removing the last node from the list : \(list) \n")
    print("Removed value : " + String(describing: removedValue))
}

// linkedListRemoveFromLastImpl()

private func linkedListRemoveAfterNodeImpl() {
    var list = LinkedList<Int>()
    list.push(3)
    list.push(2)
    list.push(1)
    
    print("Before removing the particular node from the list : \(list) \n")
    
    let node = list.node(at: 0)!
    
    let removedValue = list.remove(after: node)
    
    print("After removing the particular node from the list : \(list) \n")
    print("Removed value : " + String(describing: removedValue))
}

linkedListRemoveAfterNodeImpl()
