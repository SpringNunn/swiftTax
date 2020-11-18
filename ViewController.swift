//
//  ViewController.swift
//  SalesTax
//
//  Created by Spring Nunn on 11/8/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var priceTxt: UITextField!
    @IBOutlet weak var salesTaxTxt: UITextField!
    @IBOutlet weak var totalPriceLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalPriceLbl.text = ""
        // Do any additional setup after loading the view.
    }
    @IBAction func calculateTotalPrice(_ sender: Any) {
        let price = Double(priceTxt.text!)!
        let salesTax = Double(salesTaxTxt.text!)!
        
        let totalSalesTax = price * salesTax
        
        let totalPrice = price + totalSalesTax
        
        
        totalPriceLbl.text = "$\(totalPrice)"
        
    }
    

}
