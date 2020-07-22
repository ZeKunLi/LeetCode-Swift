//
//  ReverseLinkedListViewController.swift
//  LeetCode-Swift
//
//  Created by ZeKun Li on 2020/7/22.
//  Copyright © 2020 李泽昆. All rights reserved.
//

import UIKit

class Node {
    public var date:Int
    public var next:Node?
    
    init(_ data:Int) {
        self.date = data
        self.next = nil
    }
    
}

class ReverseLinkedListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let newNode = constructList(count: 5)
        printList(head: newNode)
        
        let reverseNode:Node = pointerReverseList(node: newNode)
        printList(head: reverseNode)
        
    }

    
    /// 反转链表
    /// - Parameter node: 头结点
    /// - Returns: 新头结点
    func pointerReverseList(node:Node) -> Node {
        
        var curNode:Node? = node
        var newNode:Node? = nil
        
        while curNode != nil {
            // 保存 next
            let tempNode = curNode!.next
            // 修改当前结点 next
            curNode?.next = newNode
            // 修改 newNode 把当前结点移到新结点上
            newNode = curNode
            // 移动当前结点
            curNode = tempNode
        }
        
        return newNode!
    }
    
    
    /// 构造链表
    /// - Parameter count: 个数
    /// - Returns: 头结点
    func constructList(count:Int) -> Node {
        // 定义一个头结点的指向
        var head:Node?
        
        var cur:Node?
        
        for i in 1...count {
            
            let temp:Node = Node(i)
            
            if head == nil {
                head = temp
            } else {
                cur?.next = temp
            }
            cur = temp
        }
        
        return head!
        
    }
    
    
    /// 打印链表数据
    /// - Parameter head: 头结点
    func printList(head:Node) {
        
        var temp:Node? = head
        while temp != nil {
            print("Node is \(temp!.date)")
            temp = temp?.next
        }
    }

}
