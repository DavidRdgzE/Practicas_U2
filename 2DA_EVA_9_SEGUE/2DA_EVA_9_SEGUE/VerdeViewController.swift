//
//  VerdeViewController.swift
//  2DA_EVA_9_SEGUE
//
//  Created by TEMPORAL2 on 23/03/17.
//  Copyright © 2017 TecII. All rights reserved.
//

import UIKit

class VerdeViewController: UIViewController {
    @IBOutlet weak var lblDatos: UILabel! //CREAMOS UN OULET
    var sTexto = "" //VARIABLE TIPO STRING

    override func viewDidLoad() {
        super.viewDidLoad()
        lblDatos.text = sTexto //Asigarle texto a nuestro outlet
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
