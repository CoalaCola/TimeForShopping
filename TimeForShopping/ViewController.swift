//
//  ViewController.swift
//  TimeForShopping
//
//  Created by Vince Lee on 2017/8/3.
//  Copyright © 2017年 Vince Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
        var all = 0
    
        var commodity1Number = 0
        var commodity1Price = 0
        var commodity1total = 0
    
    @IBAction func stepper1(_ sender: UIStepper) {
        commodity1Number = Int(sender.value)
        commodity1Price = Int(price1.text!)!
        quantity1.text = "\(commodity1Number)"
        commodity1total = calculationEach(quantity: commodity1Number, price: commodity1Price)
        total1.text = "\(commodity1total)"
        all = calculationALL(one: commodity1total, two: commodity2total, three: commodity3total, four: commodity4total)
        allSum.text = "\(all)"
       
    }
    
    var commodity2Number = 0
    var commodity2Price = 0
    var commodity2total = 0
    
    @IBAction func stepper2(_ sender: UIStepper) {
        commodity2Number = Int(sender.value)
        commodity2Price = Int(price2.text!)!
        quantity2.text = "\(commodity2Number)"
        commodity2total = calculationEach(quantity: commodity2Number, price: commodity2Price)
        total2.text = "\(commodity2total)"
        all = calculationALL(one: commodity1total, two: commodity2total, three: commodity3total, four: commodity4total)
        allSum.text = "\(all)"
    }
    
    var commodity3Number = 0
    var commodity3Price = 0
    var commodity3total = 0
    
    @IBAction func stepper3(_ sender: UIStepper) {
        var commodity3Number = 0
        commodity3Number = Int(sender.value)
        var commodity3Price = 0
        commodity3Price = Int(price3.text!)!
        quantity3.text = "\(commodity3Number)"
        commodity3total = calculationEach(quantity: commodity3Number, price: commodity3Price)
        total3.text = "\(commodity3total)"
        all = calculationALL(one: commodity1total, two: commodity2total, three: commodity3total, four: commodity4total)
        allSum.text = "\(all)"
    }
    
    var commodity4Number = 0
    var commodity4Price = 0
    var commodity4total = 0
    
    @IBAction func stepper4(_ sender: UIStepper) {
        var commodity4Number = 0
        commodity4Number = Int(sender.value)
        var commodity4Price = 0
        commodity4Price = Int(price4.text!)!
        quantity4.text = "\(commodity4Number)"
        commodity4total = calculationEach(quantity: commodity4Number, price: commodity4Price)
        total4.text = "\(commodity4total)"
        all = calculationALL(one: commodity1total, two: commodity2total, three: commodity3total, four: commodity4total)
        allSum.text = "\(all)"
    }
    
    
 
    
    @IBOutlet weak var price1: UILabel!
    
    @IBOutlet weak var quantity1: UITextField!
    
    @IBOutlet weak var total1: UITextField!
    
    @IBOutlet weak var price2: UILabel!
    
    @IBOutlet weak var quantity2: UITextField!
    
    @IBOutlet weak var total2: UITextField!
    
    @IBOutlet weak var price3: UILabel!
    
    @IBOutlet weak var quantity3: UITextField!
    
    @IBOutlet weak var total3: UITextField!
    
    @IBOutlet weak var price4: UILabel!
    
    @IBOutlet weak var quantity4: UITextField!
    
    @IBOutlet weak var total4: UITextField!
    
    @IBOutlet weak var allSum: UITextField!
    
    
    func calculationEach (quantity: Int, price: Int ) -> Int {
        return quantity * price
    }
    
    func calculationALL (one: Int, two:Int, three:Int, four:Int) -> Int{
        return one + two + three + four
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        quantity1.text = "0"
        
        
       
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
