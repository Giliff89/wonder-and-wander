//
//  AddTripViewController.swift
//  Wonder and Wander
//
//  Created by gina iliff on 9/18/17.
//  Copyright © 2017 gina iliff. All rights reserved.
//

import UIKit
import FirebaseStorage

class AddTripViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let symbols = ["🏖", "🏔", "⛩", "🕌", "🌉", "🏕", "🌋", "🏟", "🏛", "⛪️", "🛣", "🏙", "🏞", "🗾", "🌁", "🌇", "🛤", "🎡", "⚓️", "🗺", "🚢", "🏰", "🚤", "🗽", "🗼", "🗿", "⛵️", "🛶", "🛵", "🚲", "🎁", "🎉", "☃️", "❄️", "☀️", "🍷", "🍙", "☕️", "🥐", "🍔", "🍚", "🍣", "🍺", "🍻", "🥂", "🍶", "🍹", "🍾", "🥖", "🏄🏽‍♀️", "🏄🏽", "🎿", "⛷", "🎭", "🎷", "👙", "🕶", "💃🏼"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return symbols.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return symbols[row]
    }
    

    @IBOutlet weak var tripNameTextField: UITextField!
    
    @IBOutlet weak var tripSymbolPickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tripSymbolPickerView.delegate = self
        tripSymbolPickerView.dataSource = self
    }
    
    @IBAction func createTripTapped(_ sender: Any) {
        
    }
}
