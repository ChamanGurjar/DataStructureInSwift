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

var str = "Hello, playground"



func example(of: String) {
    print(of)

    let nodeOne = Node(value: 1)
    let nodeTwo = Node(value: 2)
    let nodeThree = Node(value: 3)
    
    nodeOne.next = nodeTwo
    nodeTwo.next = nodeThree
    
    print(nodeOne)
}

example(of: "Example of creating and linking nodes...")
