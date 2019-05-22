//
//  BinarySearchViewController.swift
//  LeetCode-Swift
//
//  Created by 李泽昆 on 2019/5/22.
//  Copyright © 2019 李泽昆. All rights reserved.
//  二分查找

import UIKit

class BinarySearchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print(self.search([-1,0,3,5,9,12], -1))
    }
    
    // MARK: - 二分查找
    func search(_ nums: [Int], _ target: Int) -> Int {
        if nums.count == 0 {
            return -1;
        }
        var start = 0
        var end = nums.count - 1
        
        while start <= end {
            let middle = (start + end) / 2;
            if target == nums[middle] {
                return middle;
            } else if target < nums[middle] {
                end = middle - 1
            } else {
                start = middle + 1
            }
            
        }
        return -1;
        
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
