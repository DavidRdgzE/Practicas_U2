//
//  ViewControllerCorrecto.swift
//  2DA_EVA_5_PRACTICA
//
//  Created by TEMPORAL2 on 31/03/17.
//  Copyright © 2017 TecII. All rights reserved.
//

import UIKit

class ViewControllerCorrecto: UIViewController {
    
    @IBOutlet weak var lblDatos: UILabel! // CREA UN OUTLET PARA NUESTRA LABEL
    
    var sTexto = "" //VARIABLE TIPO STRING

    override func viewDidLoad() {
        super.viewDidLoad()
        lblDatos.text = sTexto // ASIGNA EL VALOR DE NUESTRA VARIABLE AL LABEL
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
