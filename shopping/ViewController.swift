//
//  ViewController.swift
//  shopping
//
//  Created by Apple on 2018/5/23.
//  Copyright © 2018年 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Qty6: UILabel!
    @IBOutlet weak var Qty5: UILabel!
    @IBOutlet weak var Qty4: UILabel!
    @IBOutlet weak var Qty3: UILabel!
    @IBOutlet weak var Qty2: UILabel!
    @IBOutlet weak var Qty1: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    var value1:Int=0
    var value2:Int=0
    var value3:Int=0
    var value4:Int=0
    var value5:Int=0
    var value6:Int=0
    
    
    
    
    @IBAction func stepper1(_ sender: UIStepper) {
        value1 = Int(sender.value)
        Qty1.text = "\(value1)"
        total()
        
    }
    
    @IBAction func stepper2(_ sender: UIStepper) {
        value2 = Int(sender.value)
        Qty2.text = "\(value2)"
        total()
        
    }
    
    @IBAction func stepper3(_ sender: UIStepper) {
        value3 = Int(sender.value)
        Qty3.text = "\(value3)"
        total()
    }
    @IBAction func stepper4(_ sender: UIStepper) {
        value4 = Int(sender.value)
        Qty4.text = "\(value4)"
        total()
        
    }
    @IBAction func stepper5(_ sender: UIStepper) {
        value5 = Int(sender.value)
        Qty5.text = "\(value5)"
        total()
        
    }
    @IBAction func stepper6(_ sender: UIStepper) {
        value6 = Int(sender.value)
        Qty6.text = "\(value6)"
        total()
        
    }
    
    func total() {
        let sum = 600 * value1 + 600 * value2 + 900 * value3 + 450 * value4 + 300 * value5 + 300 * value6
        print("\(sum)")
        totalLabel.text = "$ \(sum)"
    }
    
    @IBAction func resultButton(_ sender: Any) {
        let alert = UIAlertController(title: "總金額為", message: totalLabel.text, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "確定", style: .default, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


