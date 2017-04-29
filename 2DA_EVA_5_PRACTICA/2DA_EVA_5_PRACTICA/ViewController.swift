//
//  ViewController.swift
//  2DA_EVA_5_PRACTICA
//
//  Created by TEMPORAL2 on 31/03/17.
//  Copyright © 2017 TecII. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var txtUser: UITextField!
    var pass1 = ["0","1","2","3","4","5","6","7","8","9"]
    var pass2 = ["0","1","2","3","4","5","6","7","8","9"]
    var pass3 = ["0","1","2","3","4","5","6","7","8","9"]
    
    var nextView = false
    
    var codigo = [5,7,2]
    var inicio = [0,0,0]

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
            return pass1[row] //regresa la fila que debe refrescar
        }else if component == 1{
            return pass2[row]
        }else{
            return pass3[row]
        }
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 3 //Numero de arreglos u origenes de datos
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {// NOS MOSTRARA EL DATO QUE SE HA SELECCIONADO
        // MOSTRAMOS LA IMAGEN DEPENDIENDO DE LA ELECCION QUE SE HAYA HECHO
        inicio[component] = row
        if txtUser.text == "david"{
        if inicio == codigo{
            let alert = UIAlertController(title: "Combinacion Correcta!!!", message: "Correcto", preferredStyle: .Alert)
            let btn = UIAlertAction(title: "ACEPTAR", style: .Default, handler: {action in self.performSegueWithIdentifier("correcto", sender: self)})
            alert.addAction(btn)
            presentViewController(alert, animated: true, completion: nil)
            
        }else{
            let alert = UIAlertController(title: "Combinacion Incorrecta!!!", message: "ERROR", preferredStyle: .Alert)
            let btn = UIAlertAction(title: "ACEPTAR", style: .Default, handler: nil)
            alert.addAction(btn)
            presentViewController(alert, animated: true, completion: nil)
        }
        }
        
        
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return pass1.count
        }else if component == 1{
            return pass2.count //Cantidad de datos del componente actual
        }else{
            return pass3.count
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) { //MANDA LA INFORMACION ANTES DE QUE SEA VISIBLE LA SIGUIENTE INTERFAZ
        if segue.identifier == "correcto" { //DETECTA SI YA TENEMOS CORRECTA LA CONTRASEÑA
            let miViewController = segue.destinationViewController as! ViewControllerCorrecto//OBTENEMOS LA INFO DEL SEGUE DESDE VERDEVIEWCONTROLLER
            miViewController.sTexto = "LO LOGRASTE!!" // EL TEXTO QUE SE MOSTRARA EN NUESTRA PANTALLA VERDE
        }
    }


}

