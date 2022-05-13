//
//  ViewController.swift
//  ConversaFiada
//
//  Created by aaav on 12/05/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var btnClean: RotatedButton!
    
    @IBOutlet var btnMeat: RotatedButton!
    
    @IBOutlet var btnCereal: RotatedButton!
    
    @IBOutlet var btnRefri: RotatedButton!
    
    @IBOutlet var btnBev: RotatedButton!
    
    @IBOutlet var btnFruit: RotatedButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        btnFruit.titleLabel?.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
        
        
        
    }

    
}

