//
//  ConversorViewController.swift
//  ConversorUnidades
//
//  Created by Jhonny Rivera on 5/7/19.
//  Copyright © 2019 Tecsup. All rights reserved.
//

import UIKit

class ConversorViewController: UIViewController {

    
    
    @IBOutlet weak var txtMillas: UITextField!
    @IBOutlet weak var txtYardas: UITextField!
    @IBOutlet weak var txtKilometros: UITextField!
    @IBOutlet weak var txtResutado: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnMillas(_ sender: Any) {
        
        if (txtMillas.text?.isEmpty)! {
            if (txtYardas.text?.isEmpty)!{
                if (txtKilometros.text?.isEmpty)!{
                }else{
                    let res = Double(txtKilometros.text!)! * 0.621371
                    txtResutado.text = String(res)
                }
            }else {
                let res = Double(txtYardas.text!)! * 0.000568182
                txtResutado.text = String(res)
            }
        }else{
        }
        
    }
    
    
    @IBAction func btnYardas(_ sender: Any) {
        
        if (txtMillas.text?.isEmpty)! {
            if (txtYardas.text?.isEmpty)!{
                if (txtKilometros.text?.isEmpty)!{
                }else{
                    let res = Double(txtKilometros.text!)! * 1093.61
                    txtResutado.text = String(res)
                }
            }else {
                
            }
        }else{
            let res = Double(txtMillas.text!)! * 1760
            txtResutado.text = String(res)
        }
        
    }
    
    
    @IBAction func btnKilometros(_ sender: Any) {
        
        if (txtMillas.text?.isEmpty)! {
            if (txtYardas.text?.isEmpty)!{
                if (txtKilometros.text?.isEmpty)!{
                }else{
                    
                }
            }else {
                
                let res = Double(txtYardas.text!)! * 0.0009144
                txtResutado.text = String(res)
                
            }
        }else{
            let res = Double(txtMillas.text!)! * 1.60934
            txtResutado.text = String(res)
        }
    }
    

}
