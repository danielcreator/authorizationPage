//
//  GreetingsViewController.swift
//  authorizationPage
//
//  Created by Daniel on 14.02.2023.
//

import UIKit

final class GreetingsViewController: UIViewController {
    
    @IBOutlet var userName: UILabel!
    var usernameField: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userName.text = usernameField
        
    }
    @IBAction func logoutButtonTapped() {
        dismiss(animated: true)
    }
}
