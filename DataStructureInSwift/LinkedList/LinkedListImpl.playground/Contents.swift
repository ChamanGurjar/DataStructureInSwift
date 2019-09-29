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


// 29 sep 2019
// Linked List

public struct LinkedList<Value> {
     var head: Node<Value>?
     var tail: Node<Value>?
    
    
    
     var isEmpty: Bool {
        return head == nil
    }
    
    mutating func push(_ value: Value) {
        head = Node(value: value, next: head)
        
        if tail == nil {
            tail = head
        }
    }
    
    mutating func append(_ value: Value) {
        guard !isEmpty else {
            push(value)
            return
        }
        
        tail!.next = Node(value: value)
        tail = tail!.next
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

linkedListAppendImpl()
