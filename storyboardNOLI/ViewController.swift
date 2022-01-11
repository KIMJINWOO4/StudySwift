//
//  ViewController.swift
//  storyboardNOLI
//
//  Created by 진우 on 2020/12/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var num1: UILabel!
    @IBOutlet var num2: UILabel!
    @IBOutlet var userAns: UITextField!
    @IBOutlet var wrong: UILabel!
    @IBOutlet var correct: UILabel!
    @IBOutlet var count: UILabel!
    @IBOutlet var sB: UIButton!
    
    var corr: Int = 0
    var wron: Int = 0
    var cnt: Int = 0
    var n1: Int = 0
    var n2: Int = 0
    var nu: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func start(){
        n1 = Int(arc4random() % 12) + 1
        n2 = Int(arc4random() % 12) + 1
        num1.text = "\(n1)"
        num2.text = "\(n2)"
        sB.isEnabled = false
    }
    @IBAction func curcul(){
        nu = Int(userAns.text!)!
        let realAns: Int = Int(n1 * n2)
        if nu == realAns {
            corr += 1
            correct.text = "\(corr)"
            cnt += 1
            count.text = "\(cnt)"
            userAns.text = ""
            n1 = Int(arc4random() % 12) + 1
            n2 = Int(arc4random() % 12) + 1
            num1.text = "\(n1)"
            num2.text = "\(n2)"
            
        }
        else {
            wron += 1
            wrong.text = "\(wron)"
            cnt += 1
            count.text = "\(cnt)"
            userAns.text = ""
            n1 = Int(arc4random() % 12) + 1
            n2 = Int(arc4random() % 12) + 1
            num1.text = "\(n1)"
            num2.text = "\(n2)"
        }
    }
    @IBAction func stopClick(){
        corr = 0
        cnt = 0
        n1 = 0
        n2 = 0
        nu = 0
        wron = 0
        correct.text = "0"
        wrong.text = "0"
        count.text = "0"
        num1.text = "0"
        num2.text = "0"
        userAns.text = ""
        sB.isEnabled = true
    }
}

