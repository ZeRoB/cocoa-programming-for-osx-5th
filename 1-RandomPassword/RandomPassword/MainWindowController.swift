//
//  MainWindowController.swift
//  RandomPassword
//
//  Created by Rob on 01.03.18.
//  Copyright © 2018 Robert. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {

    @IBOutlet weak var textField: NSTextField!
    
    override func windowDidLoad() {
        super.windowDidLoad()

        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }
    
    @IBAction func generatePassword(_ sender: Any) {
        textField.stringValue = "button clicked"
    }
    
}
