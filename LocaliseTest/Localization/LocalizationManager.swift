//
//  LocalizationManager.swift
//  LocaliseTest
//
//  Created by Amila on 2025-10-08.
//

import SwiftUI
import Combine
import Lokalise

class LocalizationManager: ObservableObject {
    static let shared = LocalizationManager()
    
    // This will trigger view updates
    @Published var updateID = UUID()
    
    init() {
        self.setupLokalise()
    }
    
    func refresh() {
        // Force views to update
        updateID = UUID()
    }
    
    private func setupLokalise() {
        // Replace with your actual Project ID and SDK Token
        Lokalise.shared.setProjectID(
            "1492333068e5f395e149e9.49508307",
            token: "ff4df232846b940b7332e7e5ee6362749d2a"
        )
        
        Lokalise.shared.swizzleMainBundle()
        
    }
    
    func checkForUpdates() {
        Lokalise.shared.checkForUpdates { (updated, errorOrNil) in
            if let error = errorOrNil {
                print("⚠️ Error checking for updates: \(error.localizedDescription)")
                return
            }
            
            print("🌐 Localization updates checked. Updated: \(updated)")
            
            if updated {
                print("🌐 New localizations available!")

                print(NSLocalizedString("notifications", comment: ""))
                
                DispatchQueue.main.async {
                    self.refresh()
                }
            }
        }
    }
}
