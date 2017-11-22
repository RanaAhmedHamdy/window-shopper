//
//  ViewController.swift
//  window-shopper
//
//  Created by Hazem Mohamed Magdy on 11/22/17.
//  Copyright © 2017 Rana. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxtField: RoundedCornersTxtField!
    
    @IBOutlet weak var itemPriceTxtField: RoundedCornersTxtField!
    
    @IBOutlet weak var resultLbl: UILabel!
    
    @IBOutlet weak var hoursLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let calcBtn = UIButton(frame: CGRect(x:0, y:0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.4163398557, blue: 0.04845579123, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        
        calcBtn.addTarget(self, action: #selector(MainVC.calculte), for: .touchUpInside)
        
        wageTxtField.inputAccessoryView = calcBtn
        itemPriceTxtField.inputAccessoryView = calcBtn
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
    }
    
    @objc func calculte() {
        if let priceTxt = itemPriceTxtField.text, let wageTxt = wageTxtField.text {
            if let price = Double(priceTxt), let wage = Double(wageTxt) {
                
                view.endEditing(true)
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                
                resultLbl.text = "\(Wage.calculate(wage: wage, price: price))"
            }
        }
    }

    @IBAction func clearBtnPressed(_ sender: Any) {
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        wageTxtField.text = ""
        itemPriceTxtField.text = ""
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

