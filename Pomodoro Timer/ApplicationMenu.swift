//
//  ApplicationMenu.swift
//  Pomodoro Timer
//
//  Created by Mathis Zerari on 26/01/2023.
//

import Foundation
import SwiftUI

class ApplicationMenu: NSObject {
    let menu = NSMenu()
    
    func createMenu() -> NSMenu {
        let redView = RedView()
        let topView = NSHostingController(rootView: redView)
        topView.view.frame.size = CGSize(width: 275, height: 200)
        
        let customMenuItem = NSMenuItem()
        customMenuItem.view = topView.view
        menu.addItem(customMenuItem)
        menu.addItem(NSMenuItem.separator())
        
        let aboutMenuItem = NSMenuItem(title: "About me",
                                       action: #selector(about),
                                       keyEquivalent: "")
        
        aboutMenuItem.target = self
        menu.addItem(aboutMenuItem)
        
        return menu
    }
    
    @objc func about(sender: NSMenuItem) {
        NSApp.orderFrontStandardAboutPanel()
    }
}
