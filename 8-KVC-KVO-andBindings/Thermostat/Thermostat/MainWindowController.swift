//
//  MainWindowController.swift
//  Thermostat
//
//  Created by Robert on 3/28/18.
//  Copyright © 2018 Robert. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {
    
    private var privateTemperature = 68
    @objc dynamic var temperature: Int {
        set {
            print("set temperature to \(newValue)")
            privateTemperature = newValue
        }
        get {
            print("get temperature")
            return privateTemperature
        }
    }
    @objc dynamic var isOn = true
    
    override var windowNibName: NSNib.Name? {
        return NSNib.Name(rawValue: "MainWindowController")
    }
    
    override func windowDidLoad() {
        super.windowDidLoad()

        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }
    @IBAction func makeWarmer(_ sender: NSButton) {
        temperature += 1
    }
    
    @IBAction func makeCooler(_ sender: NSButton) {
        temperature -= 1
    }
}
