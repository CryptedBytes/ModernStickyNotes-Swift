//
//  ViewController.swift
//  mem
//
//  Created by Bugra Güray on 25.01.2021.
//

import Cocoa


var MainView : MainViewController!

class DebugViewController: NSViewController {
    
    @IBOutlet var slider_R: NSSlider!
    @IBOutlet var slider_G: NSSlider!
    @IBOutlet var slider_B: NSSliderCell!
    @IBOutlet var slider_A: NSSlider!
    
    @IBOutlet weak var colorPrevBox: NSBox!
    @IBOutlet var nn: NSTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("debug window init")
        let timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(setColor), userInfo: nil, repeats: true)
      
       
        
       
        
        
        
       
       
//      MainVieww.bgbox.fillColor = NSColor.yellow.withAlphaComponent(0.4)
    }

    @objc func setColor(){
        
        var m = MainViewController()
      
        MainViewController.crossCommVar = 1
    //  MainViewController.staticbgbox.fillColor =  #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        
        let sliderColor = NSColor.init(red: CGFloat(slider_R.floatValue), green: CGFloat(slider_G.floatValue), blue: CGFloat(slider_B.floatValue), alpha: CGFloat(slider_A.floatValue))
        
        colorPrevBox.fillColor = sliderColor
        MainViewController.staticbgbox.fillColor =  sliderColor
        
        
        
    
        
    }
    
    
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
}
