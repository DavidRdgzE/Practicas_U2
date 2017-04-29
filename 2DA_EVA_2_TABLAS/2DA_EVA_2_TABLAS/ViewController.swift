//
//  ViewController.swift
//  2DA_EVA_2_TABLAS
//
//  Created by TEMPORAL2 on 07/03/17.
//  Copyright © 2017 TecII. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{ // DataSource y ViewDelegate importados para manejar los datos, son funciones
    
    let misDatos = ["1","2","3","4","5","6","7","8","9"] //crear arreglo para usar los datos en la tabla

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //3 funciones para que no marque error al importar DataSource y ViewDelegate
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return misDatos.count //agarra los datos del arreglo
    }
    
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        let controlador = UIAlertController(title: "Tus Datos", message: misDatos[indexPath.row], preferredStyle: .Alert) //selecciona el dato en el q se dio click
        
        let boton = UIAlertAction(title: "OK", style: .Default, handler: nil) //detecta los click
        
        controlador.addAction(boton) //poner el controlador en el boton
        
        presentViewController(controlador, animated: true, completion: nil) // muestra el dato al que se le dio click
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell { //cellforRow reutiliza las celdas
        let celda = tableView.dequeueReusableCellWithIdentifier("micelda") //reutiliza una celda
        
        //if celda == nil{ // para detectar si la tabla esta vacia
        //celda = UITableViewCell(style: .Default, reuseIdentifier: "micelda")
        //}
        
        celda?.textLabel?.text = misDatos[indexPath.row] // se le da los datos a la celda --- indexPath para saber que fila fue seleccionada
        
        let imFija = UIImage(named: "star-b")//seleccionar una imagen
        let imClick = UIImage(named: "star-p")//cuando demos click lo detecta
        celda?.imageView?.image = imFija // asigna la imFija
        celda?.imageView?.highlightedImage = imClick //cambia de imagen cuando se da click
        return celda! // regresamos la celda
    }


}

