func reverseList(_ head: ListNode?) -> ListNode? {
    var current = head
    var next = head?.next
    var prev: ListNode? = nil
    while current != nil {
        next = current?.next
        current?.next = prev
        prev = current
        current = next
    }
    return prev
}
