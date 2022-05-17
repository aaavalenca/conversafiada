//
//  FriosViewController.swift
//  ConversaFiada
//
//  Created by aaav on 16/05/22.
//

import UIKit

class FriosViewController: UIViewController {

    
    @IBOutlet var conversaFiada: UITextView!
    
    lazy var conversasFiadas : Array<String> = getCSVData();
    
    func getCSVData() -> Array<String> {
        do {
            let path = Bundle.main.url(forResource: "Frios", withExtension: "csv")
            do {
                let content = try String(contentsOf: path!, encoding: .utf8)
                print(content)
                let parsedCSV: [String] = content.components(
                    separatedBy: "\n").map{ $0.components(separatedBy: ";")[1] }
                return parsedCSV
            } catch  {
                return []
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Gere uma conversa fiada";
        navigationItem.backButtonTitle = "";
    }
    
    @IBAction func generateButton(_ sender: Any) {
//        print(conversasFiadas)
        let r = Int.random(in:0..<conversasFiadas.count)
        conversaFiada.text = conversasFiadas[r]
    }
    
}
