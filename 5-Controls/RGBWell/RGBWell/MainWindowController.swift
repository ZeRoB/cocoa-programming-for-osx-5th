//
//  MainWindowController.swift
//  RGBWell
//
//  Created by Robert on 3/12/18.
//  Copyright © 2018 Robert. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {
    override var windowNibName: NSNib.Name? {
        return NSNib.Name(rawValue: "MainWindowController")
    }
    @IBAction func adjustRed(_ sender: NSSlider) {
        print("R slider's value is \(sender.floatValue)")
    }
}
