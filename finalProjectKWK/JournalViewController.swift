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
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if userJournalEntry.textColor == UIColor.lightGray {
            userJournalEntry.text = nil
            userJournalEntry.textColor = UIColor.black
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if userJournalEntry.text.isEmpty {
            textView.text = "enter text"
            textView.textColor = UIColor.lightGray
        }
    }
    
    @IBAction func hideTextButton(_ sender: Any) {
        userJournalEntry.isHidden = true
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        userJournalEntry.text = "enter text"
        userJournalEntry.textColor = UIColor.lightGray
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
