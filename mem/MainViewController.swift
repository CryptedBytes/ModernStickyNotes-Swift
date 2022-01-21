//
//  ViewController.swift
//  mem
//
//  Created by Bugra Güray on 25.01.2021.
//

import Cocoa
let storyboard = NSStoryboard(name: NSStoryboard.Name("Main"), bundle: nil)
var windowController: NSWindowController!
//var debugViewController: DebugViewController!
var debugViewController: NSWindowController!



class MainViewController: NSViewController, NSTextViewDelegate {
    @IBOutlet weak var debugButton: NSButton!
    @IBOutlet weak var scrollView: NSScrollView!
    @IBOutlet var noteTextView: NSTextView!
    
    @IBOutlet weak var testBtn: NSButton!
    @IBOutlet weak var bgbox: NSBox!
    static var staticbgbox: NSBox!
    @IBOutlet weak var btn1: NSButton!
    
    static var crossCommVar = 0
    
    var yapraksayar = 0
    @IBOutlet var yaprakview: NSView!
    
    @IBOutlet weak var textStyleButton_italic: NSButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        guard let window = NSApplication.shared.windows.first else { return }
        window.isOpaque = false
      //  let timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(crossCommPollTimer), userInfo: nil, repeats: true)
      
        MainViewController.staticbgbox = bgbox
        
        noteTextView.delegate = self
        
       // self.testBtn.layer?.backgroundColor = NSColor.systemBlue.cgColor

        //        window.backgroundColor = .clear
        // Do any additional setup after loading the view.
    }
    
    @objc func crossCommPollTimer(){
        print(String(format: "crossCommPollTimer checked the pool. result is: %i",  MainViewController.crossCommVar))
    }
    
    func textViewDidChangeSelection(_ notification: Notification) {
        print("UwU")
//        print(notification)
      // let attributes = [NSAttributedString.Key.font : NSFont.boldSystemFont(ofSize: 20.0)]
        
       
        var symTraits = NSFontDescriptor().symbolicTraits
        symTraits.insert([.italic]) //TODO: let bold and italic toggles change state of this
        let fontDescriptorVar = NSFontDescriptor().withSymbolicTraits(symTraits)
                
        
        //NSFont.init(descriptor: fontDescriptorVar, size: 20.0)
        
        //let attributes = [NSAttributedString.Key.font : NSFont.systemFont(ofSize: 10.0)]
        let attributes = [NSAttributedString.Key.font :   NSFont.init(descriptor: fontDescriptorVar, size: 20.0)]
        noteTextView.textStorage?.setAttributes(attributes, range: noteTextView.selectedRange())
      
        noteTextView.textColor = NSColor.white //TODO: make text color dynamic so light mode wont make text unreadible!
        if(noteTextView.selectedRange().length >= 1) {
           
            animateView(view: scrollView)
        
        }
        else {
            
        }
    }
    func textDidBeginEditing(_ notification: Notification) {
        print("aa")
    }
    
    func textDidChange(_ notification: Notification) {
        print("bb")
    }
    
    func textDidEndEditing(_ notification: Notification) {
        print("cc")
    }
    
    
    func animateView(view : NSScrollView){
        
        NSAnimationContext.runAnimationGroup({ context in
            // 2 second animation
            context.duration = 2
                    
            // Animate the NSView downward 20 points
            var origin = view.frame.origin
            origin.y -= 20

            // The view will animate to the new origin
            view.animator().frame.origin = origin
        }) {
            // Handle completion
        }
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    func showChildViewController (child : NSViewController){
            child.view.frame = NSMakeRect(70, 0, 1140-70, 700)
            self.addChild(child);
            
            self.view.addSubview(child.view)
            
        }

    @IBAction func floatontopbuttontest(_ sender: Any) {
        view.window?.level = .floating
    }
    
   
    @IBAction func debugButtonClicked(_ sender: Any) {
        debugViewController = storyboard?.instantiateController(identifier: NSStoryboard.SceneIdentifier("debugController"))
        debugViewController.showWindow(self)
    }
    
    @IBAction func btn_NewNote(_ sender: Any) {
        
        
        yapraksayar = yapraksayar + 1
        MainViewController.staticbgbox.fillColor = NSColor.yellow.withAlphaComponent(0.4)
        MainViewController.staticbgbox.title = "meow"
        print(String(format: "yapprak %i", yapraksayar))
       
      
//        let storyBoard = NSStoryboard(name: NSStoryboard.Name("Main"), bundle: nil)
//        let mainViewController : NSViewController = storyBoard.instantiateController(withIdentifier: NSStoryboard.SceneIdentifier("bugu")) as! NSViewController
//        self.present(mainViewController, asPopoverRelativeTo: (sender as AnyObject).bounds, of: sender as! NSView, preferredEdge: .maxY, behavior: .transient)
//        self.presentAsSheet(mainViewController)
//        self.presentAsModalWindow(mainViewController)
//        loadView()
        
        
//        windowController = storyboard.instantiateController(withIdentifier: NSStoryboard.SceneIdentifier(rawValue: "WC")) as! WindowController
//        windowController.showWindow(self)
       
        
        
        windowController = storyboard?.instantiateController(identifier: NSStoryboard.SceneIdentifier("mainWindowController"))
        windowController.showWindow(self)
        
        
     
     
//        let homeViewController =  NSStoryboard.init(name: NSStoryboard.Name(rawValue: "Main"), bundle: nil).instantiateController(withIdentifier: NSStoryboard.SceneIdentifier(rawValue: "HomeViewController")) as! ViewController
             
//        debugViewController = storyboard?.instantiateController(identifier: NSStoryboard.SceneIdentifier("bugu"))
//        debugViewController.present(self, animator: NSViewControllerPresentationAnimator)
        
      
        
//        let debugV =  NSStoryboard.init(name: NSStoryboard.Name("Main"), bundle: nil).instantiateController(withIdentifier: NSStoryboard.SceneIdentifier("bugu")) as! NSViewController
                 
//        self.showChildViewController(child: debugV)
        
        
   
        
        
    }
        
    }
    
    

