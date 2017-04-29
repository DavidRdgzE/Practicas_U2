//
//  ViewController.swift
//  2DA_EVA_9_SEGUE
//
//  Created by TEMPORAL2 on 23/03/17.
//  Copyright © 2017 TecII. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func lanzarSegue(sender: AnyObject) {
        let alertController = UIAlertController(title: "PANTALLAS", message: "Mostrar Pantallas", preferredStyle: .Alert) //CREA UN ALERT CONTROLER
        let actionVerde = UIAlertAction(title: "VERDE", style: .Default, handler: {action in self.performSegueWithIdentifier("verde", sender: self)}) //ALERTA PARA EL BOTON VERDE
        let actionRojo = UIAlertAction(title: "ROJO", style: .Default, handler: {action in self.performSegueWithIdentifier("rojo", sender: self)}) //ALERTA PARA EL BOTON ROJO
        
        alertController.addAction(actionVerde) //AGREGA LA ACCION DEL BOTON VERDE
        alertController.addAction(actionRojo) //AGREGA LA ACCION DEL BOTON ROJO
        presentViewController(alertController, animated: true, completion: nil) //PRESENTA EL CONTROLADOR
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) { //MANDA LA INFORMACION ANTES DE QUE SEA VISIBLE LA SIGUIENTE INTERFAZ
        if segue.identifier == "verde" { //DETECTA CUAL SEGUE ESTAMOS UTILIZANDO
            let miViewController = segue.destinationViewController as! VerdeViewController //OBTENEMOS LA INFO DEL SEGUE DESDE VERDEVIEWCONTROLLER
            miViewController.sTexto = "HOLA MUNDO VERDE!!!" // EL TEXTO QUE SE MOSTRARA EN NUESTRA PANTALLA VERDE
        }else if segue.identifier == "rojo" {
            let miViewController = segue.destinationViewController as! RojoViewController
            miViewController.sCade = "HOLA MUNDO ROJO!!!" //EL TEXTO QUE SE MOSTRARA EN NUESTRA PANTALLA ROJA
        }
    }


}

