//
//  MeditateViewController.swift
//  finalProjectKWK
//
//  Created by Gordon Bond on 21/07/2021.
//

import UIKit

class MeditateViewController: UIViewController {

    @IBOutlet weak var timerLabel: UILabel!
    
    var timer = Timer()
    var seconds = 300
    
    @IBAction func startButton(_ sender: Any) {
        // no other timers running
        timer.invalidate()
        // create timer
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(MeditateViewController.timerClass), userInfo: nil, repeats: true)
    }

    @IBAction func pauseButton(_ sender: Any) {
        timer.invalidate()
    }
    @IBAction func resetButton(_ sender: Any) {
        timer.invalidate()
        seconds = 300
        timerLabel.text = "5:00"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @objc func timerClass(){
        if(seconds > 0){
                let minutes = String(seconds / 60)
                var second = String(seconds % 60)
                timerLabel.text = minutes + ":" + second
                seconds -= 1
        }
    }

}
