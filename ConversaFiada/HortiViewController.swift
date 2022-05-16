//
//  HortiViewController.swift
//  ConversaFiada
//
//  Created by aaav on 15/05/22.
//

import UIKit


class HortiViewController: UIViewController {

    
    var conversasFiadas:[String] = ["conversa 1", "conversa 2", "conversa 3"]
    
    @IBOutlet var conversaFiada: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Gere uma conversa fiada";
        navigationItem.backButtonTitle = "";
        // Do any additional setup after loading the view.
    }
    
    @IBAction func generateButton(_ sender: Any) {
        
        let r = Int.random(in:0..<conversasFiadas.count)
        conversaFiada.text = conversasFiadas[r]
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
