//
//  CerealViewController.swift
//  ConversaFiada
//
//  Created by aaav on 16/05/22.
//

import UIKit

class CerealViewController: UIViewController {

    
    @IBOutlet var conversaFiada: UITextView!
    
    
    lazy var conversasFiadas : Array<String> = getCSVData(str:"Cereais");
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Gere uma conversa fiada";
        navigationItem.backButtonTitle = "";
    }
    
    func getCSVData(str : String) -> Array<String> {
        do {
            let path = Bundle.main.url(forResource: "Cereais", withExtension: "csv")
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
    
    func csv(data: String) -> [[String]] {
           var result: [[String]] = []
           let rows = data.components(separatedBy: "\n")
           for row in rows {
               let columns = row.components(separatedBy: ";")
               result.append(columns)
           }
           return result
       }


    @IBAction func generateButton(_ sender: Any) {
        let r = Int.random(in:0..<conversasFiadas.count)
        conversaFiada.text = conversasFiadas[r];
        
    }
    
}
