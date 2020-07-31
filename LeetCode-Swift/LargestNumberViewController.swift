//
//  LargestNumberViewController.swift
//  LeetCode-Swift
//
//  Created by ZeKun Li on 2020/7/29.
//  Copyright © 2020 李泽昆. All rights reserved.
//  最大数
/// 给定一组非负整数，重新排列它们的顺序使之组成一个最大的整数。ps:输出结果可能非常大，所以你需要返回一个字符串而不是整数。

import UIKit

class LargestNumberViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print(largestNumber([3,30,34,5,9]))
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func largestNumber(_ nums: [Int]) -> String {
        let sort = nums.map {"\($0)"}.sorted { (lStr, rStr) -> Bool in
            let sum = lStr + rStr > rStr + lStr;
            return sum;
        }
    
        let result = sort.joined()
        if result.prefix(1) == "0" {
            return "0"
        } else {
            return result
        }
    }
    


}
