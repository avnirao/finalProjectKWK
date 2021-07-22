//
//  HelpOthersViewController.swift
//  finalProjectKWK
//
//  Created by Ravi Yadav on 7/20/21.
//

import UIKit

class HelpOthersViewController: UIViewController {
    var previousVC = ReadKindMessagesTableViewController()
    
    @IBOutlet weak var leaveKindMessagesBox: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func submitTapped(_ sender: Any) {
        let kindMessage = KindMessage()
        
        if let leaveKindMessage = leaveKindMessagesBox.text {
            kindMessage.message = leaveKindMessage
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
