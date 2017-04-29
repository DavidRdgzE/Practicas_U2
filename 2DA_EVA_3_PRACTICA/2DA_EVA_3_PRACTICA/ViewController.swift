//
//  ViewController.swift
//  2DA_EVA_3_PRACTICA
//
//  Created by TEMPORAL2 on 28/03/17.
//  Copyright © 2017 TecII. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var lblArea: UILabel!
    
    @IBOutlet weak var imgBottom: UIImageView!
    
    var materias = ["Fundamenteos de Programacion","Fundamentos de Bases de Datos","Redes de Computadoras","Programacion Orientada a Objetos","Conmutacion","Taller de Base de Datos","Topicos Avanzados de Programacion","Administracion de Base de datos","Aplicaciones Web","Programacion Web","Ingenieria de Software","Administracion de Redes"]
    var semestres = ["1er Semestre","4to Semestre","6to Semestre","2do Semestre","7mo Semestre","5to Semestre","4to Semestre","6to Semestre","9no Semestre","8vo Semestre","6to Semestre","8vo Semestre"]
    var areamater = ["PROGRAMACION","BASE DE DATOS","REDES","PROGRAMACION","REDES","BASE DE DATOS","PROGRAMACION","BASE DE DATOS","PROGRAMACION","PROGRAMACION","PROGRAMACION","REDES"]
    var images = ["java","oracle","redes","java","redes","oracle","java","oracle","java","java","java","redes"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return materias.count //agarra los datos del arreglo
    }
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let controlador = UIAlertController(title: materias[indexPath.row], message: semestres[indexPath.row], preferredStyle: .Alert) //selecciona el dato en el que se dio click
        lblArea.text = areamater[indexPath.row]
        imgBottom.image = UIImage(named: images[indexPath.row])
        let boton = UIAlertAction(title: "OK", style: .Default, handler: nil) //detecta los click
        controlador.addAction(boton) //poner el controlador en el boton
        presentViewController(controlador, animated: true, completion: nil) // muestra el dato al que se le dio click
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell { //cellforRow reutiliza las celdas
        
        let celda = tableView.dequeueReusableCellWithIdentifier("micelda")
        let celda2 = UIImage(named: images[indexPath.row])
        celda?.textLabel?.text = materias[indexPath.row]
        celda?.imageView?.image = celda2
        
        //celda.lblNombre.text = misDatos[indexPath.row] // se le da los datos a la celda --- indexPath para saber que fila fue seleccionada
        //celda.lblUbica.text = "Chihuahua" // Agrega una ubicacion para todos nuestros datos
        //celda.lblDesc.text = "Far Far Away..." //Agrega una descripcion para todos nuestros datos
        //let img = UIImage(named: misDatos[indexPath.row])//seleccionar una imagen
        //celda.imgImagen.image = img // asigna la imFija
        //return celda // regresamos la celda
        return celda!
    }


}

