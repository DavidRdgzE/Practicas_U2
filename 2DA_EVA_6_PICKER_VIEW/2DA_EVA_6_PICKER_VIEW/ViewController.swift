//
//  ViewController.swift
//  2DA_EVA_6_PICKER_VIEW
//
//  Created by TEMPORAL2 on 16/03/17.
//  Copyright © 2017 TecII. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    //ARREGLOS
    let
    let asDatos = ["Lunes","Martes","Miercoles","Jueves","Viernes","Sabado","Domingo"]
    let newDatos = ["Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0{
            return asDatos[row] //regresa la fila que debe refrescar
        }else{
            return newDatos[row]
        }
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 2 //Numero de arreglos u origenes de datos
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {// NOS MOSTRARA EL DATO QUE SE HA SELECCIONADO
        var sMensa: String
        
        if component == 0{
            sMensa = asDatos[row]
        }else{
            sMensa = newDatos[row]
        }
        let acMostrar = UIAlertController(title: "PICKER VIEW", message: sMensa, preferredStyle: .Alert)
        let acBoton = UIAlertAction(title: "OK", style: .Default, handler: nil)
        acMostrar.addAction(acBoton)
        presentViewController(acMostrar, animated: true, completion: nil)
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0{
            return asDatos.count //Cantidad de datos del componente actual
        }else{
            return newDatos.count
        }
    }


}

