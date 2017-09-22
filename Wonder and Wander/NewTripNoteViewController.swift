//
//  NewTripNoteViewController.swift
//  Wonder and Wander
//
//  Created by gina iliff on 9/22/17.
//  Copyright © 2017 gina iliff. All rights reserved.
//

import UIKit

class NewTripNoteViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    var imagePicker = UIImagePickerController()
    
    @IBOutlet weak var tripNoteNameTextField: UITextField!
    @IBOutlet weak var tripNoteContactInfoTextField: UITextField!
    @IBOutlet weak var tripNoteLocationTextField: UITextField!
    @IBOutlet weak var tripNoteLinkTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imagePicker.delegate = self
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
