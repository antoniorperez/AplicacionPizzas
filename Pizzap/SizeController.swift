//
//  SizeController.swift
//  Pizzap
//
//  Created by Antonio Rodríguez on 3/2/16.
//  Copyright © 2016 Antonio Rodríguez. All rights reserved.
//

import UIKit

class SizeController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
    var tamaños = ["Chica", "Mediana", "Grande"]
    @IBOutlet weak var pizzaSizePicker: UIPickerView!
    
    
    override func viewWillAppear(animated: Bool) {

    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tamaños.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return tamaños[row]
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let masaController = segue.destinationViewController as? MasaController
        let selectedIndex = pizzaSizePicker.selectedRowInComponent(0)
        let size = pickerView(pizzaSizePicker, titleForRow: selectedIndex, forComponent: 0)
        masaController?.tamaño = size!
    }
    
    
    

}
