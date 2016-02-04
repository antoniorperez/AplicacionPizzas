//
//  IngredientController.swift
//  Pizzap
//
//  Created by Antonio Rodríguez on 3/2/16.
//  Copyright © 2016 Antonio Rodríguez. All rights reserved.
//

import UIKit

class IngredientController: UIViewController {
    
    var tamaño : String = ""
    var masa : String = ""
    var queso : String = ""

    @IBOutlet weak var jamon: UISwitch!
    @IBOutlet weak var pimiento: UISwitch!
    @IBOutlet weak var cebolla: UISwitch!
    @IBOutlet weak var peperoni: UISwitch!
    @IBOutlet weak var salchicha: UISwitch!
    @IBOutlet weak var aceituna: UISwitch!
    @IBOutlet weak var pavo: UISwitch!

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var lista :[String] = []
        if jamon.on{
            lista.append("jamon")
        }
        if pimiento.on{
            lista.append("pimiento")
        }
        if cebolla.on{
            lista.append("cebolla")
        }
        if peperoni.on{
            lista.append("peperoni")
        }
        if salchicha.on{
            lista.append("salchicha")
        }
        if aceituna.on{
            lista.append("aceituna")
        }
        if pavo.on{
            lista.append("pavo")
        }
        
        if lista.count > 0 && lista.count < 6{
            let summaryController = segue.destinationViewController as? SummaryController
            summaryController!.tamaño = self.tamaño
            summaryController!.masa = self.masa
            summaryController!.queso = self.queso
            summaryController!.ingredientes = lista
            
        }else{
            let alertController = UIAlertController(title: "Error", message:
                "Selecciona un mínimo de un ingrediente y un máximo de 5!", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
            
            self.presentViewController(alertController, animated: true, completion: nil)
        }
    }
    
    
    

}
