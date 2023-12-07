//
//  StormViewerApp.swift
//  StormViewer
//
//  Created by Ricky David Groner II on 12/7/23.
//

import SwiftUI

@main
struct StormViewerApp: App {
    var body: some Scene {
        Window("Storm Viewer", id: "main") {
            ContentView()
                .onAppear {
                    NSWindow.allowsAutomaticWindowTabbing = false
                }
        }
        .commands {
            CommandGroup(replacing: .newItem) {
                
            }
            CommandGroup(replacing: .undoRedo) {
                
            }
            CommandGroup(replacing: .pasteboard) {
                
            }
        }
    }
}
