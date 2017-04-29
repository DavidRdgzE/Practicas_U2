//
//  ViewController.swift
//  2DA_EVA_8_PICKER_VIEW_IMG_2
//
//  Created by TEMPORAL2 on 21/03/17.
//  Copyright © 2017 TecII. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var aiImagenes: [UIImage]!
    var aiImagenes2: [UIImage]!
    var aiImagenes3: [UIImage]!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        //ARREGLO DE IMAGENES
        aiImagenes = [UIImage(named: "pick1")!,UIImage(named: "pick2")!,UIImage(named: "pick3")!,UIImage(named: "pick4")!,UIImage(named: "pick5")!,UIImage(named: "pick6")!,UIImage(named: "pick7")!,UIImage(named: "pick8")!,UIImage(named: "pick9")!,UIImage(named: "pick10")!,UIImage(named: "pick11")!,UIImage(named: "pick12")!]
        
        aiImagenes2 = [UIImage(named: "pick1")!,UIImage(named: "pick2")!,UIImage(named: "pick3")!,UIImage(named: "pick4")!,UIImage(named: "pick5")!,UIImage(named: "pick6")!,UIImage(named: "pick7")!,UIImage(named: "pick8")!,UIImage(named: "pick9")!,UIImage(named:"pick10")!,UIImage(named: "pick11")!,UIImage(named: "pick12")!]
        
        aiImagenes3 = [UIImage(named: "pick1")!,UIImage(named: "pick2")!,UIImage(named: "pick3")!,UIImage(named: "pick4")!,UIImage(named: "pick5")!,UIImage(named: "pick6")!,UIImage(named: "pick7")!,UIImage(named: "pick8")!,UIImage(named: "pick9")!,UIImage(named: "pick10")!,UIImage(named: "pick11")!,UIImage(named: "pick12")!]
    }
    
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView {
        let imagen = aiImagenes[row] //detecta en que row estamos
        let imgView = UIImageView(image: imagen) // crear la vista
        return imgView // regresamos la vista
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 3 //indica cuantos arreglos tenemos
    }
    
    //regresa la cantidad de elementos de nuestro arreglo
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return aiImagenes1.count
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //
    }
    
    //indica el tamaño de las imagenes
    func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 64 //tamaño de la imagen
    }



}

