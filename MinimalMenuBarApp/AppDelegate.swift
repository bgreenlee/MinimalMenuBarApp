//
//  AppDelegate.swift
//  MinimalMenuBarApp
//
//  Created by Brad Greenlee on 1/11/21.
//

import Cocoa
import SwiftUI

@main
struct MinimalMenuBarApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    // SwiftUI wants something here
    var body: some Scene {
        Settings {
            EmptyView()
        }
    }
}

class AppDelegate: NSObject, NSApplicationDelegate {
    var statusBar: StatusBarController?

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        let contentView = ContentView()
        let mainView = NSHostingView(rootView: contentView)
        mainView.frame =  NSRect(x: 0, y: 0, width: 200, height: 200)
        statusBar = StatusBarController(mainView)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
}

