//
//  RojoViewController.swift
//  2DA_EVA_9_SEGUE
//
//  Created by TEMPORAL2 on 24/03/17.
//  Copyright © 2017 TecII. All rights reserved.
//

import UIKit

class RojoViewController: UIViewController {
    @IBOutlet weak var lblRojo: UILabel! //CREAMOS UN OULET
    var sCade = "" //VARIABLE TIPO STRING

    override func viewDidLoad() {
        super.viewDidLoad()
        lblRojo.text = sCade //Asigarle texto a nuestro outlet
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
