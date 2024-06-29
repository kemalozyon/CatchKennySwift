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
    var counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        counter = 20
        score = 0
        nameLabel.text = userName
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countDown), userInfo: nil, repeats: true)
        imageView.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(gestureFunction))
        imageView.addGestureRecognizer(gestureRecognizer)
        imageView.frame.origin.x = 0
    }
    @objc func countDown(){
        let numberX = Int.random(in: 0...275)
        let numberY = Int.random(in: 300...700)
        imageView.frame.origin.x = CGFloat(numberX)
        imageView.frame.origin.y = CGFloat(numberY)
        timeLabel.text = "Time: \(counter)"
        counter -= 1
        if counter < 0{
            timer.invalidate()
            let alert = UIAlertController(title: "Game Over", message: "Your Score is: \(score) Do You Want To Play Again", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel) { UIAlertAction in
                self.viewDidLoad()
                self.viewWillAppear(true)
            }
            let noButton = UIAlertAction(title: "NO", style: UIAlertAction.Style.default) { UIAlertAction in
                _ = self.navigationController?.popToRootViewController(animated: true)

            }
            alert.addAction(okButton)
            alert.addAction(noButton)
            self.present(alert, animated: true)
        }
    }
    @objc func gestureFunction(){
        score += 1
        scoreLabel.text = "Score: \(score)"
        let numberX = Int.random(in: 0...275)
        let numberY = Int.random(in: 300...700)
        imageView.frame.origin.x = CGFloat(numberX)
        imageView.frame.origin.y = CGFloat(numberY)
    }

}

