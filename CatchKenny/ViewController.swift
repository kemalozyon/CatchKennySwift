//
//  ViewController.swift
//  CatchKenny
//
//  Created by Kemal Özyön on 29.06.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var scoreLabel: UILabel!
    var score = 0
    var userName = ""
    var timer = Timer()
    var counter = 20
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = userName
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countDown), userInfo: nil, repeats: true)
        imageView.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(gestureFunction))
        imageView.addGestureRecognizer(gestureRecognizer)
        
    }
    @objc func countDown(){
        timeLabel.text = "Time: \(counter)"
        counter -= 1
    }
    @objc func gestureFunction(){
        score += 1
        scoreLabel.text = "Score: \(score)"
    }

}

