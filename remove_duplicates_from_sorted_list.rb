def delete_duplicates(head)
    x = []
    while head != nil do
        if x.include?(head.val)
            head = head.next
        else
            x << head.val
            head = head.next
        end
    end
    return x
end