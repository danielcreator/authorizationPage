//
//  ViewController.swift
//  authorizationPage
//
//  Created by Daniel on 14.02.2023.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var userName: UITextField!
    @IBOutlet var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let greetingsVC = segue.destination as? GreetingsViewController else { return }
        
    }
    
    
    @IBAction func pressedButtonFP() {
        showAlert(withtitle: "Oops!", andMessage: "Your password is Password")
    }
    @IBAction func pressedButtonUN() {
        showAlert(withtitle: "Oops!", andMessage: "Your name is User")
    }
}

//MARK - UIAlertController
extension ViewController {
    private func showAlert(withtitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
