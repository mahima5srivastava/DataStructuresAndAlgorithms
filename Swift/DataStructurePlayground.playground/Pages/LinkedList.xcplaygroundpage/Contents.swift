/*This code shows the following implementations in linked list
 1. Creating a singly Linked list
 2. Insertion in the front of the list
 3. Insertion in the end Of the list
 4. Insertion after count n
 5. Deletion from the front
 6. Deletion from the end
 7. Deletion after count n
 8. Traversal
 */

import Foundation

class SinglyNode<T> {
    var data: T?
    var nextNode: SinglyNode?
    
    init(data: T?, nextNode: SinglyNode? = nil) {
        self.data = data
        self.nextNode = nextNode
    }
}

//**************************************************
// MARK: - Create Linked List
//**************************************************

func createLinkedList(with values: [Int]) -> SinglyNode<Int>? {
    print(#function)
    var firstNode = SinglyNode<Int>(data: nil)
    for value in values {
        if firstNode.data == nil {
            firstNode.data = value
        } else {
            let node = SinglyNode(data: value, nextNode: firstNode)
            firstNode = node
        }
    }
    return firstNode
}

//**************************************************
// MARK: - Traverse the linked list
//**************************************************

func printLinkedList(headNode: SinglyNode<Int>?) {
    var nextNode: SinglyNode<Int>? = headNode
    while nextNode != nil {
        print(nextNode?.data ?? "")
        nextNode = nextNode?.nextNode
    }
}


//**************************************************
// MARK: - Insertion from Front
//**************************************************

func insertFromFront(value: Int, headNode: SinglyNode<Int>?) -> SinglyNode<Int> {
    print(#function)
    let node = SinglyNode<Int>(data: value, nextNode: headNode )
    return node
}


//**************************************************
// MARK: - Insertion from End
//**************************************************

func insertionFromEnd(value: Int, headNode: SinglyNode<Int>?) -> SinglyNode<Int>? {
    print(#function)
    let node = SinglyNode(data: value, nextNode: nil)
    var currentNode = headNode
    
    while currentNode?.nextNode != nil {
        currentNode = currentNode?.nextNode
    }
    currentNode?.nextNode = node
    return headNode
}

//**************************************************
// MARK: - Insertion after count n
//**************************************************


func insert(value: Int, after count: Int, list headNode: SinglyNode<Int>?) -> SinglyNode<Int>? {
    print(#function)
    let node = SinglyNode(data: value)
    var prevNode: SinglyNode<Int>? = headNode
    var nextNode: SinglyNode<Int>? = headNode?.nextNode
    var counter = 1
    while counter != count && nextNode != nil {
        prevNode = nextNode
        nextNode = nextNode?.nextNode
        counter += 1
    }
    prevNode?.nextNode = node
    node.nextNode = nextNode
    return headNode
}


//**************************************************
// MARK: - Deletion from front
//**************************************************

func deleteFromFront(in list: SinglyNode<Int>?) -> SinglyNode<Int>? {
    print(#function)
    return list?.nextNode
}



//**************************************************
// MARK: - Deletion from last
//**************************************************

func deleteFromLast(in list: SinglyNode<Int>?) -> SinglyNode<Int>? {
    print(#function)
    var currentNode: SinglyNode<Int>? = list
    while currentNode?.nextNode?.nextNode != nil {
        currentNode = currentNode?.nextNode
    }
    currentNode?.nextNode = nil
    return list
}


//**************************************************
// MARK: - Deletion after count n
//**************************************************

func deleteAfter(count n: Int, in list: SinglyNode<Int>?) -> SinglyNode<Int>? {
    print(#function)
    var currentNode: SinglyNode<Int>? = list
    var counter = 0
    while counter != (n - 1) {
        currentNode = currentNode?.nextNode
        counter += 1
    }
    if currentNode == nil {
       return list
    } else {
        currentNode?.nextNode = currentNode?.nextNode?.nextNode
    }
    return list
}

var list = createLinkedList(with: [1,2,3,4,5,6,7,8,9])
printLinkedList(headNode: list)
list = insertFromFront(value: 10, headNode: list)
printLinkedList(headNode: list)
list = insertionFromEnd(value: 20, headNode: list)
printLinkedList(headNode: list)
list = insert(value: 30, after: 2, list: list)
printLinkedList(headNode: list)
list = deleteFromFront(in: list)
printLinkedList(headNode: list)
list = deleteFromLast(in: list)
printLinkedList(headNode: list)
list = deleteAfter(count: 2, in: list)
printLinkedList(headNode: list)
