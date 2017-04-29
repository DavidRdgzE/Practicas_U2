//
//  ViewController.swift
//  2DA_EVA_4_PRACTICA
//
//  Created by TEMPORAL2 on 30/03/17.
//  Copyright © 2017 TecII. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    @IBOutlet weak var lblDatos: UILabel!
    @IBOutlet weak var imgCar: UIImageView!
    
    //ARREGLOS
    let aCarros = ["Mustang","Corvette"]
    let aColor = ["Rojo","Negro"]
    let aAño = ["2010","2015"]
    
    var inicio = [0,0,0]
    var musroj10 = [0,0,0]
    var musroj15 = [0,0,1]
    var musneg10 = [0,1,0]
    var musneg15 = [0,1,1]
    var corroj10 = [1,0,0]
    var corroj15 = [1,0,1]
    var corneg10 = [1,1,0]
    var corneg15 = [1,1,1]
    

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
            return aCarros[row] //regresa la fila que debe refrescar
        }else if component == 1{
            return aColor[row]
        }else{
            return aAño[row]
        }
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 3 //Numero de arreglos u origenes de datos
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {// NOS MOSTRARA EL DATO QUE SE HA SELECCIONADO
    // MOSTRAMOS LA IMAGEN DEPENDIENDO DE LA ELECCION QUE SE HAYA HECHO
        inicio[component] = row
        
        if inicio == musroj10{
            imgCar.image = UIImage(named: "musroj10")
        }else if inicio == musroj15{
            imgCar.image = UIImage(named: "musroj15")
        } else if inicio == musneg10{
            imgCar.image = UIImage(named: "musneg10")
        }else if inicio == musneg15{
            imgCar.image = UIImage(named: "musneg15")
        }else if inicio == corroj10{
            imgCar.image = UIImage(named: "corroj10")
        }else if inicio == corroj15{
            imgCar.image = UIImage(named: "corroj15")
        }else if inicio == corneg10{
            imgCar.image = UIImage(named: "corneg10")
        }else if inicio == corneg15{
            imgCar.image = UIImage(named: "corneg15")
        }
        
    
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return aCarros.count
        }else if component == 1{
            return aColor.count //Cantidad de datos del componente actual
        }else{
            return aAño.count
        }
    }

}

