//
//  LeetCodeViewController.swift
//  LeetCode-Swift
//
//  Created by 李泽昆 on 2019/4/5.
//  Copyright © 2019 李泽昆. All rights reserved.
//  两数之和

import UIKit

class LeetCodeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        print(twoSum([3, 2, 4], 6))
    }
    
    // MARK: - 两数之和
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var map = [Int: Int]()
        for i in 0..<nums.count {
            let difference = target - nums[i]
            if map.keys.contains(difference) {
                if let index = map[difference] {
                    return [index, i]
                }
            } else {
                map[nums[i]] = i
            }
        }
        return [Int]()
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
