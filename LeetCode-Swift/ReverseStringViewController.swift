//
//  ReverseStringViewController.swift
//  LeetCode-Swift
//
//  Created by ZeKunLi on 2020/5/14.
//  Copyright © 2020 李泽昆. All rights reserved.
//

import UIKit

class ReverseStringViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var greeting:[Character] = ["H","E","L","L","O"]
        print(greeting)
        reverseString(&greeting)
        print(greeting)
        
    }
    
    func reverseString(_ s: inout [Character]) {
            var l = 0
            var r = s.count-1
            while l<r {
                print(s)
                s.swapAt(l, r)
                print(l)
                print(r)
                l += 1
                r -= 1
                print(s)
                print(l)
                print(r)
            }
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
