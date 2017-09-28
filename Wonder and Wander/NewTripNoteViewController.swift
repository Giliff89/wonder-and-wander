//
//  NewTripNoteViewController.swift
//  Wonder and Wander
//
//  Created by gina iliff on 9/22/17.
//  Copyright © 2017 gina iliff. All rights reserved.
//

import UIKit

class NewTripNoteViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let categories = ["Activity", "Food/Drink", "Transportation", "Lodging"]
    

    var imagePicker = UIImagePickerController()
    
    @IBOutlet weak var tripNoteNameTextField: UITextField!
    @IBOutlet weak var tripNoteContactInfoTextField: UITextField!
    @IBOutlet weak var tripNoteLocationTextField: UITextField!
    @IBOutlet weak var tripNoteLinkTextField: UITextField!
    
    @IBOutlet weak var tripNoteCategoryPickerView: UIPickerView!
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return categories.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return categories[row]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imagePicker.delegate = self
        
        tripNoteCategoryPickerView.delegate = self
        tripNoteCategoryPickerView.dataSource = self
    }
    
    @IBAction func cameraTapped(_ sender: Any) {
        imagePicker.sourceType = .camera
        present(imagePicker, animated: true, completion: nil)
    }
    @IBAction func photoAlbumTapped(_ sender: Any) {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }

    @IBAction func addToTripTapped(_ sender: Any) {
    }
}
