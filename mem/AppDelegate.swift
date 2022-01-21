//
//  AppDelegate.swift
//  mem
//
//  Created by Bugra Güray on 25.01.2021.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    @IBAction func debug_BGColorPi(_ sender: Any) {
     /*
        let storyboard = NSStoryboard(name: "Main", bundle: nil)
        let secondVC = storyboard.instantiateController(withIdentifier: "bugu")
//        self.show(secondVC, sender: self)
        
        
        let mainview = ViewController()
     
      */
        
      
    }
    
    @IBAction func debug_runDebugCode(_ sender: Any) {
        let a = MainViewController()
        
        a.btn1.performClick(self)
        
        print("hm")
        
    }
}

