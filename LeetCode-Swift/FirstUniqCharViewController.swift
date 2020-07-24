//
//  FirstUniqCharViewController.swift
//  LeetCode-Swift
//
//  Created by ZeKun Li on 2020/7/24.
//  Copyright © 2020 李泽昆. All rights reserved.
//

import UIKit

class FirstUniqCharViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print(firstUniqChar("leetcode"))
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