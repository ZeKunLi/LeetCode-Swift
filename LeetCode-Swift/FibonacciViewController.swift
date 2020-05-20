//
//  FibonacciViewController.swift
//  LeetCode-Swift
//
//  Created by ZeKun Li on 2020/5/19.
//  Copyright © 2020 李泽昆. All rights reserved.
//  斐波那契数

import UIKit

class FibonacciViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        print(fib(n: 50))
        
    }
    
    func fib(n:Int) -> Int {
        if n <= 1 {
            return n
        }
        return fib(n: n - 1) + fib(n: n - 2)
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
