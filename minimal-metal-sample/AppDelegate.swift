//
//  AppDelegate.swift
//  minimal-metal-sample

import Cocoa

//@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    var window: NSWindow!
    var controller: NSViewController?
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        
        window = NSWindow(contentRect: NSRect.zero,
                          styleMask: [ .resizable, .titled, .closable],
                          backing: .buffered, defer: false)
        window.title = "minimal-metal-sample"

        controller = GameViewController()
        window.contentViewController = controller
        
        window!.makeKeyAndOrderFront(nil)
    }
    
    
    func applicationWillTerminate(_ aNotification: Notification) {
        
    }
    
    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return true
    }
    
}

