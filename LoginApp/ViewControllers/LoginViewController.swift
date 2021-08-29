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
    
    private let userData = UserData(userName: "User", password: "Password")
    private let person = Person(name: "Oleg Lysenko")
    private let about = About(about: "Привет. Меня Зовут Олег. Мне 24 года и в данный момент я работаю менеджером по продажам")
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        let viewControllers: [UIViewController]?
        viewControllers = [tabBarController]
          for viewController in viewControllers! {
             if let welcomeVC = viewController as? WelcomeViewController {
               tabBarController.tabBarItem.title = person.name
                welcomeVC.welcomeUserName = person.name
             } else if let navigationVC = viewController as? UINavigationController {
                let aboutUserVC = navigationVC.topViewController as! AboutMePageOneViewController
                aboutUserVC.aboutMe = about.about
            }
        }
     }
    
    
    @IBAction func logInPressed() {
        if userNameTF.text != userData.userName || passwordTF.text != userData.password {
            showAlert(
                with: "Invalid login or password",
                and: "Please, enter correct login and password"
            )
            passwordTF.text = ""
        }
    }
    
    @IBAction func forgotUNPressed() {
        showAlert(with: "Oops!", and: "Your name is \(userData.userName)😉")
    }
    
    @IBAction func forgotPassPressed() {
        showAlert(with: "Oops!", and: "Your password is \(userData.password)😉")
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
}

// MARK: - Private Methods
extension LoginViewController {
    private func showAlert(with title: String, and message: String){
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

extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTF {
            passwordTF.becomeFirstResponder()
        } else {
            logInPressed()
            performSegue(withIdentifier: "showWelcomeVC", sender: nil)
        }
        return true
    }
}
