//
//  ConversorViewController.swift
//  ConversorUnidades
//
//  Created by Jhonny Rivera on 5/7/19.
//  Copyright © 2019 Tecsup. All rights reserved.
//

import UIKit

class ConversorViewController: UIViewController {

    let delegate = (UIApplication.shared.delegate as! AppDelegate)
    
    @IBOutlet weak var txtMillas: UITextField!
    @IBOutlet weak var txtYardas: UITextField!
    @IBOutlet weak var txtKilometros: UITextField!
    @IBOutlet weak var txtResutado: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func guardarMedida(inicio : String, convertido : String, valorInicial : Double, valorFinal : Double) {
        
        let context = delegate.persistentContainer.viewContext
        
        let medida = Medida(context: context)
        
        
        
        medida.inicio = inicio
        medida.convertido = convertido
        medida.valorInicial = valorInicial
        medida.valorConvetido = valorFinal
        
        delegate.saveContext()
        
        print("Guardado exitoso")
        
        
//        let context = delegate.persistentContainer.viewContext
//
//        let sound = Sound(context: context)
//        sound.name = nameTextField.text
//        try sound.audio = Data(contentsOf: audioURL!)
//        delegate.saveContext()
//        navigationController!.popViewController(animated: true)
    }
    

    @IBAction func btnMillas(_ sender: Any) {
        
        let inicial = "Millas"
        
        if (txtMillas.text?.isEmpty)! {
            if (txtYardas.text?.isEmpty)!{
                if (txtKilometros.text?.isEmpty)!{
                }else{
                    let res = Double(txtKilometros.text!)! * 0.621371
                    txtResutado.text = String(res)
                    
                    guardarMedida(inicio: inicial, convertido: "Kilometros", valorInicial: Double(txtKilometros.text!)!, valorFinal: res)
                }
            }else {
                let res = Double(txtYardas.text!)! * 0.000568182
                txtResutado.text = String(res)
                
                guardarMedida(inicio: inicial, convertido: "Yardas", valorInicial: Double(txtYardas.text!)!, valorFinal: res)
            }
        }else{
        }
        
    }
    
    
    @IBAction func btnYardas(_ sender: Any) {
        let inicial = "Yardas"
        
        if (txtMillas.text?.isEmpty)! {
            if (txtYardas.text?.isEmpty)!{
                if (txtKilometros.text?.isEmpty)!{
                }else{
                    let res = Double(txtKilometros.text!)! * 1093.61
                    txtResutado.text = String(res)
                    
                    guardarMedida(inicio: inicial, convertido: "Kilometros", valorInicial: Double(txtKilometros.text!)!, valorFinal: res)
                }
            }else {
                
            }
        }else{
            let res = Double(txtMillas.text!)! * 1760
            txtResutado.text = String(res)
            
            guardarMedida(inicio: inicial, convertido: "Millas", valorInicial: Double(txtMillas.text!)!, valorFinal: res)
        }
        
    }
    
    
    @IBAction func btnKilometros(_ sender: Any) {
        let inicial = "Kilometros"
        
        if (txtMillas.text?.isEmpty)! {
            if (txtYardas.text?.isEmpty)!{
                if (txtKilometros.text?.isEmpty)!{
                }else{
                    
                }
            }else {
                
                let res = Double(txtYardas.text!)! * 0.0009144
                txtResutado.text = String(res)
                
                guardarMedida(inicio: inicial, convertido: "Yardas", valorInicial: Double(txtYardas.text!)!, valorFinal: res)
                
            }
        }else{
            let res = Double(txtMillas.text!)! * 1.60934
            txtResutado.text = String(res)
            
            guardarMedida(inicio: inicial, convertido: "Millas", valorInicial: Double(txtMillas.text!)!, valorFinal: res)
        }
    }
    

}
