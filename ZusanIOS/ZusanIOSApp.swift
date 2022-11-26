//
//  ZusanIOSApp.swift
//  ZusanIOS
//
//  Created by Sudhar Zan on 22/11/22.
//

import SwiftUI

@main
struct ZusanIOSApp: App {
    @StateObject private var appData = ApplicationData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(appData)
        }
    }
}
