//
//  ViewController.swift
//  jsq
//
//  Created by 20161104581 on 2018/10/10.
//  Copyright © 2018年 20161104581. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var result: UILabel!
    
    @IBOutlet weak var result_1: UITextField!
    
    @IBOutlet weak var result_2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
        
    }
    var number = 0//判断加减乘除
    
    var judge = 0//决定输出数字的位数
    
    var add = 0//判断运算符次数
    
    var re = 0//判断result.text前是否存在符号
    var op = 0//判断加号
    var om = 0//判断减法
    var omu = 0//判断乘法
    var od = 0//判断除法
    var rw = 0
    
    @IBAction func number1(_ sender: Any) {
        if re == 0{
            
           result.text = result.text! + "1"
        }
    }
        
    
    
    @IBAction func number2(_ sender: Any) {
        if re == 0{
            result.text = result.text! + "2"
        }
    }
    
    @IBAction func number3(_ sender: Any) {
        if re == 0{
            result.text = result.text! + "3"
        }
    }
    
    @IBAction func number4(_ sender: Any) {
        if re == 0{
            result.text = result.text! + "4"
        }
    }
    
    @IBAction func number5(_ sender: Any) {
        if re == 0{
            result.text = result.text! + "5"
        }
    }
    
    @IBAction func number6(_ sender: Any) {
        if re == 0{
            result.text = result.text! + "6"
        }
    }
    
    @IBAction func number7(_ sender: Any) {
        if re == 0{
            result.text = result.text! + "7"
        }
    }
    
    @IBAction func number8(_ sender: Any) {
        if re == 0{
            result.text = result.text! + "8"
        }
    }
    
    @IBAction func number9(_ sender: Any) {
        if re == 0{
            result.text = result.text! + "9"
        }
    }
    
    @IBAction func number0(_ sender: Any) {
        if re == 0{
            result.text = result.text! + "0"
        }
    }
    
    @IBAction func dot(_ sender: Any) {
        
        
        if rw == 0{
        result.text = result.text! + "."
        
        judge = 1
        rw = 1
        }
       
    }
    
    @IBAction func clear(_ sender: Any) {
        result.text = ""
        result_1.text = ""
        result_2.text = ""
        rw = 0
    }
    
    @IBAction func minus(_ sender: Any) {
        if add == 1{
            
            if op == 1{
                
                let a = Double(result_1.text!)!
                
                let b = Double(result.text!)!
                
                let c = a + b
                
                result_1.text = String(c)
                
                result.text = ""
                
                number = 1
            }
            if om == 1{
                let a = Double(result_1.text!)!
                
                let b = Double(result.text!)!
                
                let c = a - b
                
                result_1.text = String(c)
                
                result.text = ""
                
                number = 1
                
            }
            
            if omu == 1{
                let a = Double(result_1.text!)!
                
                let b = Double(result.text!)!
                
                let c = a * b
                
                result_1.text = String(c)
                
                result.text = ""
                
                number = 1
            }
            if od == 1{
                let a = Double(result_1.text!)!
                
                let b = Double(result.text!)!
                
                let c = a / b
                
                result_1.text = String(c)
                
                result.text = ""
                
                number = 1
            }
        }
        
        
        
        else{
            
            if result.text == ""{
                
                result.text = "0"
                
            }else {
                
                let x = Double(result.text!)!
                
                result_1.text = String(x)
                
                result.text = ""
                
                number = 1
                
                re = 0
                add = 1
                
                om = 1
                od = 0
                omu = 0
                op = 0
                
                rw = 0
                
            }
        }
    }
       
    @IBAction func plus(_ sender: Any) {
        if add == 1{
            
            if op == 1{
            
            let a = Double(result_1.text!)!
            
            let b = Double(result.text!)!
            
            let c = a + b
            
            result_1.text = String(c)
            
            result.text = ""
            
            number = 2
        
           }
            if om == 1{
                let a = Double(result_1.text!)!
                
                let b = Double(result.text!)!
                
                let c = a - b
                
                result_1.text = String(c)
                
                result.text = ""
                
                number = 2
            }
            
            if omu == 1{
                let a = Double(result_1.text!)!
                
                let b = Double(result.text!)!
                
                let c = a * b
                
                result_1.text = String(c)
                
                result.text = ""
                
                number = 2
            }
            if od == 1{
                let a = Double(result_1.text!)!
                
                let b = Double(result.text!)!
                
                let c = a / b
                
                result_1.text = String(c)
                
                result.text = ""
                
                number = 2

            }
        }
            
            
            
            
            else{
            
            if result.text == ""{
                
                result.text = "0"
                
            }else {
                
                let x = Double(result.text!)!
                
                result_1.text = String(x)
                
                result.text = ""
                
                number = 2
                
                re = 0
                
                add = 1
                op = 1
                
                od = 0
                om = 0
                omu = 0
                rw = 0

            }
        }
        
    }
    
    @IBAction func multiply(_ sender: Any) {
        if add == 1{
            
            if op == 1{
                
                let a = Double(result_1.text!)!
                
                let b = Double(result.text!)!
                
                let c = a + b
                
                result_1.text = String(c)
                
                result.text = ""
                
                number = 3
            }
            if om == 1{
                let a = Double(result_1.text!)!
                
                let b = Double(result.text!)!
                
                let c = a - b
                
                result_1.text = String(c)
                
                result.text = ""
                
                number = 3
            }
            
            if omu == 1{
                let a = Double(result_1.text!)!
                
                let b = Double(result.text!)!
                
                let c = a * b
                
                result_1.text = String(c)
                
                result.text = ""
                
                number = 3
            }
            if od == 1{
                let a = Double(result_1.text!)!
                
                let b = Double(result.text!)!
                
                let c = a / b
                
                result_1.text = String(c)
                
                result.text = ""
                
                number = 3
            }
        }
        else{
            
            if result.text == ""{
                
                result.text = "0"
                
            }else {
                
                let x = Double(result.text!)!
                
                result_1.text = String(x)
                
                result.text = ""
                
                number = 3
                
                re = 0
                
                add = 1
                omu = 1
                
                od = 0
                om = 0
                op = 0
                rw = 0
           }
        }
    }
        
    
    
    @IBAction func divide(_ sender: Any) {
        if add == 1{
            
            if op == 1{
                
                let a = Double(result_1.text!)!
                
                let b = Double(result.text!)!
                
                let c = a + b
                
                result_1.text = String(c)
                
                result.text = ""
                
                number = 4
            }
            if om == 1{
                let a = Double(result_1.text!)!
                
                let b = Double(result.text!)!
                
                let c = a - b
                
                result_1.text = String(c)
                
                result.text = ""
                
                number = 4
            }
            
            if omu == 1{
                let a = Double(result_1.text!)!
                
                let b = Double(result.text!)!
                
                let c = a * b
                
                result_1.text = String(c)
                
                result.text = ""
                
                number = 4
            }
            if od == 1{
                let a = Double(result_1.text!)!
                
                let b = Double(result.text!)!
                
                let c = a / b
                
                result_1.text = String(c)
                
                result.text = ""
                
                number = 4
            }
        }
        else{
            
            if result.text == ""{
                
                result.text = "0"
                
            }else {
                
                let y = Double(result.text!)!
                
                result_1.text = String(y)
                
                result.text = ""
                
                number = 4
                
                re = 0
                
                add = 1
                od = 1
                
                omu = 0
                op = 0
                om = 0
                rw = 0
            }
            
        }
        
       
    }
    
    @IBAction func equal(_ sender: Any) {
        var d:Double
        
        var c:Double
        
        let x = Double(result_1.text!)!
        
        c = (result.text! as NSString).doubleValue
        
        if number == 1 {
            
            d = x - c
            
        }else if number == 2 {
            
            d = x + c
            
        }else if number == 3 {
            
            d = x * c
            
        }else if number == 4 {
            
            d = x / (c)
            
        }else {
            
            d = 1000
            
        }
        
        result_2.text = String(c)
        
        if judge == 1{
            
            result.text = String(format:"%.2f", d)
            
        }else {
            
            result.text = String(format:"%.0f", d)
            
        }
        
        judge = 0
        
        add = 0
        rw = 0
        
    }
}

