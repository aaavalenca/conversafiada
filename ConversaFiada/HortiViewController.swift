//
//  HortiViewController.swift
//  ConversaFiada
//
//  Created by aaav on 15/05/22.
//

import UIKit


class HortiViewController: UIViewController {

    @IBOutlet var conversaFiada: UITextView!

    lazy var conversasFiadas : Array<String> = getCSVData();
    
    func getCSVData() -> Array<String> {
        do {
            let content = try String(contentsOfFile: "/Users/aaav/Documents/Coding/ConversaFiada/ConversaFiada/data/Hortifruti.csv")
            
            let parsedCSV: [String] = content.components(
                separatedBy: "\n"
            ).map{ $0.components(separatedBy: ";")[1] }
            return parsedCSV
        }
        catch {
            return []
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
