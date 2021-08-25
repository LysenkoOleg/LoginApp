//
//  ViewController.swift
//  LoginApp
//
//  Created by Олег Лысенко on 25.08.2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func logInPressed() {
    }
    
    @IBAction func forgotUNPressed() {
       showAlert(with: "Oops!", and: "Your name is User😉")
    }
    
    @IBAction func forgotPassPressed() {
        showAlert(with: "Oops!", and: "Your password is Password😉")
    }
}

// MARK: - Private Methods
extension LoginViewController {
    func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAlert = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAlert)
        present(alert, animated: true)
    }
}
