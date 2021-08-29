//
//  AboutMePageOneViewController.swift
//  LoginApp
//
//  Created by Олег Лысенко on 29.08.2021.
//

import UIKit

class AboutMePageOneViewController: UIViewController {

    @IBOutlet var AboutMePageOneLabel: UILabel!
    
    var aboutMe = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        AboutMePageOneLabel.text = aboutMe
    }

}
