//
//  ViewController.swift
//  2DA_EVA_7_PICKER_VIEW_IMG
//
//  Created by TEMPORAL2 on 16/03/17.
//  Copyright © 2017 TecII. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var aiImagenes: [UIImage]!
    var arreglo = [0,0,0]
    var password = [5,9,8]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //ARREGLO DE IMAGENES
        aiImagenes = [UIImage(named: "pick1")!,UIImage(named: "pick2")!,UIImage(named: "pick3")!,UIImage(named: "pick4")!,UIImage(named: "pick5")!,UIImage(named: "pick6")!,UIImage(named: "pick7")!,UIImage(named: "pick8")!,UIImage(named: "pick9")!,UIImage(named: "pick10")!,UIImage(named: "pick11")!,UIImage(named: "pick12")!]
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView {
        let imagen = aiImagenes[row] //detecta en que row estamos
        let imgView = UIImageView(image: imagen) // crear la vista
        return imgView // regresamos la vista
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1 //indica cuantos arreglos tenemos
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return aiImagenes.count
    }
    
    //Muestra el cuadro de dialogo
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        arreglo[component] = row
        if arreglo == password{
            let alert = UIAlertController(title: "Combinacion Correcta!!!", message: "Correcto", preferredStyle: .Alert)
            let btn = UIAlertAction(title: "ACEPTAR", style: .Default, handler: nil)
            alert.addAction(btn)
            presentViewController(alert, animated: true, completion: nil)
        }
    }
    
    func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 64 //tamaño de la imagen
    }


}

