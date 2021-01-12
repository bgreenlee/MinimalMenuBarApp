//
//  StatusBarController.swift
//  MinimalMenuBarApp
//
//  Created by Brad Greenlee on 1/11/21.
//

import AppKit

class StatusBarController {
    private var statusBar: NSStatusBar
    private var statusItem: NSStatusItem
    private var mainView: NSView

    init(_ view: NSView) {
        self.mainView = view
        statusBar = NSStatusBar()
        statusItem = statusBar.statusItem(withLength: NSStatusItem.variableLength)

        if let statusBarButton = statusItem.button {
            statusBarButton.title = "MinimalMenuBarApp"
            let menuItem = NSMenuItem()
            menuItem.view = mainView
            let menu = NSMenu()
            menu.addItem(menuItem)
            statusItem.menu = menu
        }
    }
}
