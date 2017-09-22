//
//  DetailsTripNoteViewController.swift
//  Wonder and Wander
//
//  Created by gina iliff on 9/22/17.
//  Copyright © 2017 gina iliff. All rights reserved.
//

import UIKit

class DetailsTripNoteViewController: UIViewController {

    @IBOutlet weak var tripNoteNameLabel: UILabel!
    @IBOutlet weak var tripNoteCategoryLabel: UILabel!
    @IBOutlet weak var tripSymbolLabel: UILabel!
    @IBOutlet weak var tripNoteLocationLabel: UILabel!
    @IBOutlet weak var tripNoteDateLabel: UILabel!
    @IBOutlet weak var tripNoteStartTimeLabel: UILabel!
    @IBOutlet weak var tripNoteEndTimeLabel: UILabel!
    @IBOutlet weak var tripNoteLinkLabel: UILabel!
    @IBOutlet weak var tripNoteContactInfoLabel: UILabel!
    @IBOutlet weak var tripNoteImageLabel: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

// Add in section for notes, maybe change start and end time to just one label "time"
