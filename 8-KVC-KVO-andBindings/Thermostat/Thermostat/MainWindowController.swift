//
//  MainWindowController.swift
//  Thermostat
//
//  Created by Robert on 3/28/18.
//  Copyright © 2018 Robert. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {

    @objc var temperature = 68
    
    override var windowNibName: NSNib.Name? {
        return NSNib.Name(rawValue: "MainWindowController")
    }
    
    override func windowDidLoad() {
        super.windowDidLoad()

        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }
    @IBAction func makeWarmer(_ sender: NSButton) {
        let newTemperature = temperature + 1
        setValue(newTemperature, forKey: "temperature")
    }
    
    @IBAction func makeCooler(_ sender: NSButton) {
        let newTemperature = temperature - 1
        setValue(newTemperature, forKey: "temperature")
    }
}
