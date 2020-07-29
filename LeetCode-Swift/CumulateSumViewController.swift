//
//  CumulateSumViewController.swift
//  LeetCode-Swift
//
//  Created by ZeKun Li on 2020/7/29.
//  Copyright © 2020 李泽昆. All rights reserved.
//

import UIKit

class CumulateSumViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        print(iterationSum(100))
        
        
    }
    
    func recursiveSum(_ num:Int) -> Int {
        if num <= 0 {
            return num
        }
        var number:Int = recursiveSum(num - 1)
        number += num
        return number
    }
    
    
//    func iterationSum(_ num:Int) -> Int {
//        var i:Int = num;
//        var sum:Int = 0;
//        while i > 0 {
//            sum = sum + i
//            i -= 1
//        }
//        return sum
//    }
    
//    func iterationSum(_ num:Int) -> Int {
//
//        var sum:Int = 0
//        for i in 1...num {
//            sum = sum + i
//        }
//        return sum
//
//    }

    func iterationSum(_ num:Int) -> Int {
        
        var i:Int = num
        var sum:Int = 0
        repeat{
            sum = sum + i
            i -= 1
        } while i > 0
        
        return sum
        
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
