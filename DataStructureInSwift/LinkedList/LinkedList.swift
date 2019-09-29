//
//  LinkedList.swift
//  DataStructureInSwift
//
//  Created by Chaman Gurjar on 29/09/19.
//  Copyright © 2019 Chaman Gurjar. All rights reserved.
//

import Foundation

public struct LinkedList<Value> {
    public var head: Node<Value>?
    public var tail: Node<Value>?
    
    public init() { }
    
    public var isEmpty: Bool {
        return head == nil
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
