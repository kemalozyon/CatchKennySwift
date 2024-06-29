//
//  ViewController.swift
//  CatchKenny
//
//  Created by Kemal Özyön on 29.06.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    var userName = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = userName
    }


}

