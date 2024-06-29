//
//  InitializeViewController.swift
//  CatchKenny
//
//  Created by Kemal Özyön on 29.06.2024.
//

import UIKit

class InitializeViewController: UIViewController {
    var userNameProperty = ""
    @IBOutlet weak var userName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func playGame(_ sender: Any) {
        
        if userName.text == ""{
            let alert = UIAlertController(title: "Error", message: "User Name cannot be blank", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true)
        }else{
            userNameProperty = userName.text!
            performSegue(withIdentifier: "goToGame", sender: nil)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToGame"{
            let destination = segue.destination as! ViewController
            destination.userName = userNameProperty
        }
    }

}
