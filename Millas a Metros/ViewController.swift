//
//  ViewController.swift
//  Millas a Metros
//
//  Created by Frank on 11/17/17.
//  Copyright © 2017 Frank. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var distanceTextField: UITextField!
    @IBOutlet var segmentedControl: UISegmentedControl!
    @IBOutlet var resultLabel: UILabel!
    let mileUnit = 1.609
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        resultLabel.text = "Escribe distancia a convertir"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func converterPress(_ sender: UIButton) {
        let selectIndex = segmentedControl.selectedSegmentIndex
        let textField = Double (distanceTextField.text!)!
        if selectIndex == 0{
            let convertedValue = textField / mileUnit
            reloadView(textField : textField, convertedValue : convertedValue)
            
        }else if selectIndex == 1{
            let convertedValue = textField * mileUnit
            reloadView(textField : textField, convertedValue : convertedValue)
        }else{
            print("Pone algo arriba")
        }
        
    }
    
    func reloadView(textField : Double, convertedValue : Double) {
        
        let initialValue = String(format: "%.2f", textField)
        let finalValue = String(format: "%.2f", convertedValue)
        
        if segmentedControl.selectedSegmentIndex == 0{
            let mensaje  = initialValue + " " + "kilometros = " + finalValue + " millas"
            resultLabel.text = mensaje
        }else{
            let mensaje  = initialValue + " " + "millas = " + finalValue + " kilometros"
            resultLabel.text = mensaje
        }
    }

}

