//
//  CarnesViewController.swift
//  ConversaFiada
//
//  Created by aaav on 16/05/22.
//

import UIKit

class CarnesViewController: UIViewController {

    @IBOutlet var conversaFiada: UITextView!
    
    lazy var conversasFiadas : Array<String> = getCSVData();
    
    func getCSVData() -> Array<String> {
        do {
            let path = Bundle.main.url(forResource: "Carne", withExtension: "csv")
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
