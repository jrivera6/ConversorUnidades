//
//  ViewController.swift
//  ConversorUnidades
//
//  Created by Jhonny Rivera on 5/7/19.
//  Copyright © 2019 Tecsup. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    var delegate = (UIApplication.shared.delegate as! AppDelegate)
    
    var medidas : [Medida] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let context = delegate.persistentContainer.viewContext
        
        do{
            medidas = try context.fetch(Medida.fetchRequest())
            tableView.reloadData()
        }catch{}
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let medida = medidas[indexPath.row]
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return medidas.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()

        let medida = medidas[indexPath.row]
        cell.textLabel?.text = "\(medida.inicio!) = \(medida.valorInicial) - \(medida.convertido!) = \(medida.valorConvetido)"
//        cell.detailTextLabel?.text = "Prueba"
//        cell.textLabel?.text = medida.convertido
        return cell
    }


}

