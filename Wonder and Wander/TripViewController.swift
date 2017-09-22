//
//  TripViewController.swift
//  Wonder and Wander
//
//  Created by gina iliff on 9/20/17.
//  Copyright © 2017 gina iliff. All rights reserved.
//

import UIKit
import MapKit

class TripViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet weak var tripNameLabel: UILabel!
    @IBOutlet weak var tripDetailTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tripDetailTableView.delegate = self

    }

}
