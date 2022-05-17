//
//  BebidaViewController.swift
//  ConversaFiada
//
//  Created by aaav on 15/05/22.
//

import UIKit


class BebidaViewController: UIViewController {

    @IBOutlet var conversaFiada: UITextView!
    
    
    @IBOutlet var labelCSV: UILabel!
    
    lazy var conversasFiadas : Array<String> = getCSVData(str:labelCSV.text!);
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Gere uma conversa fiada";
        navigationItem.backButtonTitle = "";
    }
    
    func getCSVData(str : String) -> Array<String> {
        do {
            let path = Bundle.main.url(forResource: "Bebidas", withExtension: "csv")
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
