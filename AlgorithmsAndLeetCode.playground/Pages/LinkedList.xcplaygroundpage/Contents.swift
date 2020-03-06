class Node {
    var value: Int
    var next: Node?
    
    init(value: Int, next: Node?) {
        self.value = value
        self.next = next
    }
    
    
}

class LinkedList {
    var head: Node?
    var current: Node?
    func insert(value: Int) {
        if head == nil {
            head = Node(value: value, next: nil)
            return
        }
        var current = head
        while current?.next != nil {
            current = current?.next
        }
        
        current?.next = Node(value: value, next: nil)
    }
    
    func delete(value: Int) {
        var current = head
        while current?.next != nil {
            if current?.next?.value == value {
                let next = current?.next?.next
                current?.next = next
            } else {
                current = current?.next
            }
        }
    }
    
    func displayListItems() {
        var current = head
        while current != nil {
            print(current?.value)
            current = current?.next
        }
    }
    
    
    
    func setupDummyNodes() {
        let three = Node(value: 3, next: nil)
        let two = Node(value: 2, next: three)
        head = Node(value: 1, next: two)
    }
}

var sampleList = LinkedList()
sampleList.insert(value: 3)
sampleList.insert(value: 10)
sampleList.insert(value: 20)
sampleList.insert(value: 100)
sampleList.insert(value: 5)

class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil

    }
}
