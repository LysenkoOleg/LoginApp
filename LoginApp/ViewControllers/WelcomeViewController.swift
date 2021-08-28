//
//  ResultLoginViewController.swift
//  LoginApp
//
//  Created by Олег Лысенко on 25.08.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeUser: UILabel!
    
    var welcomeUserName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        welcomeUser.text = "Welcome, \(welcomeUserName)!"
    }

    @IBAction func logOutPressed() {
        dismiss(animated: true)
    }
    
}
