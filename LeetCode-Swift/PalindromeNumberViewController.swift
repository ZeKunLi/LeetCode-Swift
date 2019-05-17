//
//  PalindromeNumberViewController.swift
//  LeetCode-Swift
//
//  Created by 李泽昆 on 2019/5/17.
//  Copyright © 2019 李泽昆. All rights reserved.
//  回文数

import UIKit

class PalindromeNumberViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        print(isPalindrome(-1900))
    }
    
    // MARK: - 回文数
    func isPalindrome(_ x: Int) -> Bool {
        let reversedNumber = String(format: "%ld", x)
        let stringNumber = String(format: "%ld", x)
        var toString = String()
        for char in reversedNumber.reversed() {
            print(char, terminator: "")
            toString.append(char)
        }
        if toString == stringNumber {
            return true
        }
        return false

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
