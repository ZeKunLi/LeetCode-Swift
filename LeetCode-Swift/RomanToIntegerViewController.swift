//
//  RomanToIntegerViewController.swift
//  LeetCode-Swift
//
//  Created by 李泽昆 on 2019/5/18.
//  Copyright © 2019 李泽昆. All rights reserved.
//  罗马数字转整数

import UIKit

class RomanToIntegerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print(romanToInt("IIIIMCMXCIV"))
    }
    
    // MARK: - 罗马数字转整数
    func romanToInt(_ s: String) -> Int {
        var num = 0
        var ss = s
        while ss.contains("IV") || ss.contains("IX") || ss.contains("XL") || ss.contains("XC") || ss.contains("CD") || ss.contains("CM") {
            if ss.contains("IV") {
                ss = ss.replacingOccurrences(of: "IV", with: "")
                num = num + 4
            }else if ss.contains("IX") {
                ss = ss.replacingOccurrences(of: "IX", with: "")
                num = num + 9
            }else if ss.contains("XL") {
                ss = ss.replacingOccurrences(of: "XL", with: "")
                num = num + 40
            }else if ss.contains("XC") {
                ss = ss.replacingOccurrences(of: "XC", with: "")
                num = num + 90
            }else if ss.contains("CD") {
                ss = ss.replacingOccurrences(of: "CD", with: "")
                num = num + 400
            }else if ss.contains("CM") {
                ss = ss.replacingOccurrences(of: "CM", with: "")
                num = num + 900
            }
        }
        
        for c in ss {
            switch String(c) {
            case "I" :
                num = num + 1
            case "V" :
                num = num + 5
            case "X" :
                num = num + 10
            case "L" :
                num = num + 50
            case "C" :
                num = num + 100
            case "D" :
                num = num + 500
            case "M" :
                num = num + 1000
            default:
                num = num + 0
            }
        }
        return num
        
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
