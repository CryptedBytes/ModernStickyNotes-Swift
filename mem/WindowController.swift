//
//  WindowController.swift
//  mem
//
//  Created by Bugra Güray on 26.01.2021.
//

import Cocoa

class WindowController: NSWindowController {
    
    override func windowDidLoad() {
        super.windowDidLoad()
        print("WINDOW LOADED\n\n\n")
        
        self.window?.styleMask.remove(.resizable)
        
    }

}
