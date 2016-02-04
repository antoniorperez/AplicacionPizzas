//
//  SummaryController.swift
//  Pizzap
//
//  Created by Antonio Rodríguez on 3/2/16.
//  Copyright © 2016 Antonio Rodríguez. All rights reserved.
//

import UIKit

class SummaryController: UIViewController {
    
    var tamaño : String = ""
    var masa : String = ""
    var queso : String = ""
    var ingredientes = [String]()

    @IBOutlet weak var tamañoLabel: UILabel!
    @IBOutlet weak var masaLabel: UILabel!
    @IBOutlet weak var quesoLabel: UILabel!
    @IBOutlet weak var ingredientesLabel: UILabel!
    
    @IBAction func enviarPedido(sender: AnyObject) {
        let alertController = UIAlertController(title: "Pedido enviado!", message:
            "Su pedido fue enviado con exito", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
        
        self.presentViewController(alertController, animated: true, completion: nil)
    }
    
    
    override func viewWillAppear(animated: Bool) {
        self.tamañoLabel.text = tamaño
        masaLabel.text = masa
        quesoLabel.text = queso
        ingredientesLabel.text = "\(ingredientes)"
    }
}
