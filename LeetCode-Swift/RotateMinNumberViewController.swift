//
//  RotateMinNumberViewController.swift
//  LeetCode-Swift
//
//  Created by ZeKun Li on 2020/7/22.
//  Copyright © 2020 李泽昆. All rights reserved.
//  旋转数组的最小数字
/// 描述： 把一个数组最开始的若干个元素搬到数组的末尾，我们称之为数组的旋转。输入一个递增排序的数组的一个旋转，输出旋转数组的最小元素。例如，数组 [3,4,5,1,2] 为 [1,2,3,4,5] 的一个旋转，该数组的最小值为1。

import UIKit

class RotateMinNumberViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        print(rankingMinArray([3,4,5,1,2]))
    }
    
    // MARK: - ranking method
    func rankingMinArray(_ numbers: [Int]) -> Int {
        return numbers.sorted().first ?? 0;
    }
    
    
    // MARK: - enumeration method
    func enumerationMinArray(_ numbers: [Int]) -> Int {
        var number = numbers.first;
        for i  in 0..<numbers.count {
            number = numbers[i] < number! ? numbers[i] : number
        }
        
        return number!;
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
