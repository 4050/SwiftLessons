//
//  ViewController.swift
//  secondProject
//
//  Created by Stanislav on 11.04.2020.
//  Copyright © 2020 Stanislav. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var wageTxt: CurrencyTxtField!
    @IBOutlet weak var priceTxt: CurrencyTxtField!
    @IBOutlet weak var cleareCalculateButton: UIButton!
    @IBOutlet weak var resultLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(ViewController.calculate), for: .touchUpInside)
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
        cleareCalculateButton.isHidden = true
        resultLbl.isHidden = true
    }
    
    @objc func calculate() {
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                view.endEditing(true)
                resultLbl.isHidden = false
                cleareCalculateButton.isHidden = false
                resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }
    
    @IBAction func cleareCalculatePressed(_ sender: Any) {
        resultLbl.isHidden = true
        cleareCalculateButton.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
    }
}

