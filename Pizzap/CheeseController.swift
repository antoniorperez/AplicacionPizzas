//
//  CheeseController.swift
//  Pizzap
//
//  Created by Antonio Rodríguez on 3/2/16.
//  Copyright © 2016 Antonio Rodríguez. All rights reserved.
//

import UIKit

class CheeseController : UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
    let quesos = ["Mozzarela", "Cheddar", "Parmesane", "Sin queso"]
    
    var tamaño : String = ""
    var masa : String = ""
    @IBOutlet weak var picker: UIPickerView!
    
    override func viewWillAppear(animated: Bool) {
        
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return quesos.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return quesos[row]
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let ingredientController = segue.destinationViewController as? IngredientController
        let selectedIndex = picker.selectedRowInComponent(0)
        ingredientController?.tamaño = self.tamaño
        ingredientController?.masa = self.masa
        let queso = pickerView(picker, titleForRow: selectedIndex, forComponent: 0)
        ingredientController?.queso=queso!
    }
    

}
