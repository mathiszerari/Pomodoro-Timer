//
//  ApplicationMenu.swift
//  Pomodoro Timer
//
//  Created by Mathis Zerari on 26/01/2023.
//

import Foundation
import SwiftUI
import AppKit

class ApplicationMenu: NSObject {
    let menu = NSMenu()
    
    func createMenu() -> NSMenu {
        let redView = RedView()
        let topView = NSHostingController(rootView: redView)
        topView.view.frame.size = CGSize(width: 250, height: 150)
        
        let customMenuItem = NSMenuItem()
        customMenuItem.view = topView.view
        menu.addItem(customMenuItem)
        menu.addItem(NSMenuItem.separator())
        
        let aboutMenuItem = NSMenuItem(title: "About me",
                                       action: #selector(about),
                                       keyEquivalent: "")
        aboutMenuItem.target = self
        menu.addItem(aboutMenuItem)
        
        let quitMenuItem = NSMenuItem(title: "Quit",
                                       action: #selector(quit),
                                       keyEquivalent: "q")
        quitMenuItem.target = self
        menu.addItem(quitMenuItem)
        
        return menu
    }
    
    
    
    @objc func about(sender: NSMenuItem) {
        NSApp.orderFrontStandardAboutPanel()
    }
    
    @objc func quit(sender: NSMenuItem) {
        NSApp.terminate(self)
    }
}
