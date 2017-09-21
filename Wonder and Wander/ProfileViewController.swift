//
//  ProfileViewController.swift
//  Wonder and Wander
//
//  Created by gina iliff on 9/18/17.
//  Copyright © 2017 gina iliff. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var usernameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func logoutTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func viewTripsTapped(_ sender: Any) {
    }

    @IBAction func addTripTapped(_ sender: Any) {
    }
    
}
