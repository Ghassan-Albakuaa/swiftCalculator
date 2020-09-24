//
//  ViewController.swift
//  calculatorProject
//
//  Created by Ghassan  albakuaa  on 9/24/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var laShowNumber: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var flag = true
        func addNumberToInput(number: String)
        {
            if let st = laShowNumber.text
            {
                var textNumber = laShowNumber.text!
                if flag
                {
                    textNumber = ""
                    flag = false
                }
                textNumber = textNumber + number
                laShowNumber.text = textNumber            }
           
        }

    
    @IBAction func btn(_ sender: UIButton) {
        if let st = laShowNumber.text
        {
            addNumberToInput(number: sender.currentTitle!)        }
    }
    
    var op = "+"
    var number1:Double?
    
    @IBAction func opreationBtn(_ sender: UIButton) {
        
        if let st = sender.currentTitle
        {
            op = sender.currentTitle!
                    number1 = Double (laShowNumber.text!)
                    flag = true
            if op == "A/C"
            {
                laShowNumber.text = "0"
               
            }
        }
       
    }
    
    
    @IBAction func eqBtn(_ sender: Any) {
        let number2 = Double(laShowNumber.text!)
               var result:Double?
        if let no1 = number1
        {
            if let no2 = number2
            {
                switch op {
                case "x":
                    result = number1! * number2!
                case "+":
                    result = number1! + number2!
                case "-":
                    result = number1! - number2!
                case "/":
                    result = number1! / number2!
                case "A/C":
                    result = 0               case "%":
                    result = (number1! * 100) / number2!
                        default:
                    result = 0.0    }
         laShowNumber.text = String(result!)
            }
            
        }
             
}

}


/*
 import UIKit

 class ViewController: UIViewController {

     @IBOutlet weak var laShowNumber: UILabel!
     
     override func viewDidLoad() {
         super.viewDidLoad()
         // Do any additional setup after loading the view.
     }
     var flag = true
         func addNumberToInput(number: String)
         {
             
             var textNumber = laShowNumber.text!
             if flag
             {
                 textNumber = ""
                 flag = false
             }
             textNumber = textNumber + number
             laShowNumber.text = textNumber
         }

     
     @IBAction func btn(_ sender: UIButton) {
         addNumberToInput(number: sender.currentTitle!)
     }
     
     var op = "+"
     var number1:Double?
     
     @IBAction func opreationBtn(_ sender: UIButton) {
         op = sender.currentTitle!
                 number1 = Double (laShowNumber.text!)
                 flag = true
         if op == "A/C"
         {
             laShowNumber.text = "0"
            
         }
     }
     
     
     @IBAction func eqBtn(_ sender: Any) {
         let number2 = Double(laShowNumber.text!)
                var result:Double?
                switch op {
                case "x":
                    result = number1! * number2!
                case "+":
                    result = number1! + number2!
                case "-":
                    result = number1! - number2!
                case "/":
                    result = number1! / number2!
                case "A/C":
                    result = 0               case "%":
                    result = (number1! * 100) / number2!
                        default:
                    result = 0.0    }
         laShowNumber.text = String(result!)
 }

 }

*/
