struct LinkedList<Element>{
    
    private class Node {
        var value: Element
        var next: Node?
        
        init(value: Element) {
            self.value = value
        }
    }
    
    private var head : Node?
    
    // Insert an element at the end
       mutating func insert(_ value: Element) {
           let newNode = Node(value: value)
           
           if head == nil {
               head = newNode
               return
           }
           
           var current = head
           
           while current?.next != nil {
               current = current?.next
           }
           
           current?.next = newNode
       }
       
       // Delete the first matching element
       mutating func delete(_ value: Element) where Element: Equatable {
           
           if head?.value == value {
               head = head?.next
               return
           }
           
           var current = head
           
           while let nextNode = current?.next {
               if nextNode.value == value {
                   current?.next = nextNode.next
                   return
               }
               
               current = nextNode
           }
       }
       
       // Search for an element
       func contains(_ value: Element) -> Bool where Element: Equatable {
           
           var current = head
           
           while let node = current {
               if node.value == value {
                   return true
               }
               
               current = node.next
           }
           
           return false
       }
       
       // Display all elements
       func printList() {
           var current = head
           
           while let node = current {
               print(node.value, terminator: " ")
               current = node.next
           }
           
           print()
       }
   }
    
// Input:
// LinkedList<Int>
// Insert: 10, 20, 30
// Search: 10
// Search: 2
// Delete: 30
//
// Output:
// Linked List: 10 20 30
// Contains 10: true
// Contains 2: false
// After deleting 30: 10 20
