//
//  LocaliseTestApp.swift
//  LocaliseTest
//
//  Created by Amila on 2025-10-08.
//

import SwiftUI
import Lokalise

@main
struct LocaliseTestApp: App {
    
    init() {
        LocalizationManager.shared
        }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
//    private func setupLokalise() {
//        // Replace with your actual Project ID and SDK Token
//        Lokalise.shared.setProjectID(
//            "1492333068e5f395e149e9.49508307",
//            token: "ff4df232846b940b7332e7e5ee6362749d2a"
//        )
//        
//        Lokalise.shared.swizzleMainBundle()
//        
//        // Check for updates on launch
//        Lokalise.shared.checkForUpdates { (updated, errorOrNil) in
//            if let error = errorOrNil {
//                print("⚠️ Error checking for updates: \(error.localizedDescription)")
//                return
//            }
//            
//            print("🌐 Localization updates checked. Updated: \(updated)")
//            
//            // If updates are found, you can reload any necessary strings or views
//            if updated {
//                print("🌐 New localizations available!")
////                Lokalise.shared.applypendingUpdates()
////                Lokalise.shared.
//                //                self.lokaliseUpdate = true
//                
//                // Example: Print a newly localized string
//                print(NSLocalizedString("notifications", comment: ""))
//            }
//        }
//    }
}
