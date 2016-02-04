//
//  MasaController.swift
//  Pizzap
//
//  Created by Antonio Rodríguez on 3/2/16.
//  Copyright © 2016 Antonio Rodríguez. All rights reserved.
//

import UIKit

class MasaController : UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
    let masas = ["Delgada", "Crujiente", "Gruesa"]
    
    var tamaño : String = ""

    @IBOutlet weak var picker: UIPickerView!
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return masas.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return masas[row]
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let cheeseController = segue.destinationViewController as? CheeseController
        let selectedIndex = picker.selectedRowInComponent(0)
        let masa = pickerView(picker, titleForRow: selectedIndex, forComponent: 0)
        cheeseController?.tamaño = self.tamaño
        cheeseController?.masa = masa!
    }


}
