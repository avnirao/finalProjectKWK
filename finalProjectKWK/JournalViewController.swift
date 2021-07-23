//
//  JournalViewController.swift
//  finalProjectKWK
//
//  Created by Gordon Bond on 21/07/2021.
//

import UIKit

class JournalViewController: UIViewController {

    @IBOutlet weak var journalLabel: UILabel!
    @IBOutlet weak var userJournalEntry: UITextView!
    
    @IBAction func hideTextButton(_ sender: Any) {
        userJournalEntry.isHidden = true
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
