//
//  AddTripViewController.swift
//  Wonder and Wander
//
//  Created by gina iliff on 9/18/17.
//  Copyright © 2017 gina iliff. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseStorage
import FirebaseDatabase

class AddTripViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var user = Auth.auth().currentUser?.uid
    
    let symbols = ["🏖", "🏔", "⛩", "🕌", "🌉", "🏕", "🌋", "🏟", "🏛", "⛪️", "🛣", "🏙", "🏞", "🗾", "🌁", "🌇", "🛤", "🎡", "⚓️", "🗺", "🚢", "🏰", "🚤", "🗽", "🗼", "🗿", "⛵️", "🛶", "🛵", "🚲", "🎁", "🎉", "☃️", "❄️", "☀️", "🍷", "🍙", "☕️", "🥐", "🍔", "🍚", "🍣", "🍺", "🍻", "🥂", "🍶", "🍹", "🍾", "🥖", "🏄🏽‍♀️", "🏄🏽", "🎿", "⛷", "🎭", "🎷", "👙", "🕶", "💃🏼"]
    
    var refTrips : DatabaseReference!
    
    @IBOutlet weak var tripNameTextField: UITextField!
    
    @IBOutlet weak var tripSymbolPickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tripSymbolPickerView.delegate = self
        tripSymbolPickerView.dataSource = self
        
        refTrips = Database.database().reference().child("users").child(user!).child("trips")
    }
    
    func addTrip() {
        
        let key = refTrips.childByAutoId().key
        
        let selectedSymbol = symbols[tripSymbolPickerView.selectedRow(inComponent: 0)]
        
        let trip = [
            "id": key,
            "tripName": tripNameTextField.text! as String,
            "tripSymbol": selectedSymbol as String
        ]
        
        refTrips.child(key).setValue(trip)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return symbols.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return symbols[row]
    }
    
    // Hide keyboard when user touches outside text box
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func createTripTapped(_ sender: Any) {
        
        addTrip()
        
        self.performSegue(withIdentifier: "newTripToTripsTVC", sender: nil)
        
    }
}
