//
//  AddKindMessageViewController.swift
//  finalProjectKWK
//
//  Created by Gordon Bond on 22/07/2021.
//

import UIKit

class AddKindMessageViewController: UIViewController {
    var previousVC = ReadKindMessagesTableViewController()
    @IBOutlet weak var messageTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func submitTapped(_ sender: Any) {
        let kindMessage = KindMessage()
        
        if let messageText = messageTextView.text{
            kindMessage.message = messageText
            
            let alert = UIAlertController(title: "thank you", message: "your message has been submitted.", preferredStyle: .alert)

            alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))

            self.present(alert, animated: true)
        }
        previousVC.kindMessages.append(kindMessage)
        previousVC.tableView.reloadData()
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
