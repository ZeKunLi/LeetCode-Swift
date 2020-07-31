//
//  ShuffleStringViewController.swift
//  LeetCode-Swift
//
//  Created by ZeKun Li on 2020/7/31.
//  Copyright © 2020 李泽昆. All rights reserved.
//  重新排列字符串
/// 给你一个字符串 s 和一个 长度相同 的整数数组 indices 。
/// 请你重新排列字符串 s ，其中第 i 个字符需要移动到 indices[i] 指示的位置。
/// 返回重新排列后的字符串。


import UIKit

class ShuffleStringViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print(restoreString("codeleet", [4,5,6,7,0,2,1,3]))
    }
    

    /*
    // MARK: - Navigation
    
    输入：s = "codeleet", indices = [4,5,6,7,0,2,1,3]
    输出："leetcode"
    解释：如图所示，"codeleet" 重新排列后变为 "leetcode" 。

    
    输入：s = "abc", indices = [0,1,2]
    输出："abc"
    解释：重新排列后，每个字符都还留在原来的位置上。
     
    输入：s = "aiohn", indices = [3,1,4,2,0]
    输出："nihao
    */
    
    func restoreString(_ s: String, _ indices: [Int]) -> String {
        var string = String()
        for i in 0..<indices.count {
            for j in 0..<indices.count {
                if indices[j] == i {
                    let name = s as NSString
                    string.append(name.substring(with: NSRange(location: j, length: 1)))
                    break;
                }
            }
        }
        return string
    }

}
