//
//  ReverseIntegerViewController.swift
//  LeetCode-Swift
//
//  Created by 李泽昆 on 2019/5/16.
//  Copyright © 2019 李泽昆. All rights reserved.
//  整数反转

import UIKit

class ReverseIntegerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print(reverse(10))
    }
    
    // MARK - 整数反转
    func reverse(_ x: Int) -> Int {
        var myX = x
        var myOutput:Double = 0

        while ((myX > 9 || myX < -9) && myX % 10 == 0) {
            myX = myX / 10
        }
        while myX != 0 {
            print(myX)
            print(myOutput)
            myOutput = myOutput * 10 + Double(myX % 10)
            myX = myX / 10
        }
        if myOutput > Double(Int32.max) || myOutput < Double(Int32.min) {
            return 0
        }else {
            return Int(myOutput)
        }

    }
    

    // MARK - 整数反转
//    func reverse(_ x: Int) -> Int {
//        var reversedXArr = [String]()
//        reversedXArr = String(x).map{ "\($0)" }.reversed()
//
//        if x >= 0 {
//            if let r = Int32(reversedXArr.joined()) {
//                return Int(r)
//            } else {
//                return 0
//            }
//        } else {
//            reversedXArr.remove(at: reversedXArr.count - 1)
//            reversedXArr.insert("-", at: 0)
//            if  let r = Int32(reversedXArr.joined()) {
//                return Int(r)
//            } else {
//                return 0
//            }
//        }
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
