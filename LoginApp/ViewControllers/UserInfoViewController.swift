//
//  AboutMePageOneViewController.swift
//  LoginApp
//
//  Created by Олег Лысенко on 29.08.2021.
//

import UIKit

class UserInfoViewController: UIViewController {
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = user.person.fullName
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard  let imageVC = segue.destination as? ImageViewController else { return }
        imageVC.user = user
    }

}
