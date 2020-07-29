//
//  FirstUniqCharViewController.swift
//  LeetCode-Swift
//
//  Created by ZeKun Li on 2020/7/24.
//  Copyright © 2020 李泽昆. All rights reserved.
//  第一个只出现一次的字符
/// 在字符串 s 中找出第一个只出现一次的字符。如果没有，返回一个单空格。 s 只包含小写字母。

import UIKit

class FirstUniqCharViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print(firstUniqChar("leetcode"))
        
        let greeting = "Guten Tag!"
        
        let index = greeting.index(greeting.startIndex, offsetBy: 7)
        
        
        
        print(greeting[index])
    }
    

        func firstUniqChar(_ s: String) -> Character {
        var map = [Character: Int]()
        var onceList = [Character]()
        for item in s{
            if map.keys.contains(item){
                map.updateValue(map[item]! + 1 , forKey: item)
                onceList = onceList.filter({$0 != item})
                
            }else{
                map.updateValue(1, forKey: item)
                onceList.append(item)
            }
        }
        
        print(onceList)
        return onceList.count == 0 ? " " : onceList.first!
    }

}
