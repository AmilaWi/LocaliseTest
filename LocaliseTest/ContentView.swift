//
//  ContentView.swift
//  LocaliseTest
//
//  Created by Amila on 2025-10-08.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var loc = LocalizationManager.shared
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                
                Text(NSLocalizedString("welcome_message", comment: ""))
                
                // Navigation to DetailView
                NavigationLink(destination: DetailView()) {
                    Text(NSLocalizedString("go_to_detail", comment: ""))
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            .padding()
            .onAppear {
                loc.checkForUpdates()
            }
            // Bind to updateID so view reloads when updated
            .id(loc.updateID)
        }
    }
}

#Preview {
    ContentView()
}

struct DetailView: View {
    
    var body: some View {
        VStack(spacing: 20) {
            Text(NSLocalizedString("detail_title", comment: ""))
                .font(.title)
            
            Text(NSLocalizedString("detail_message", comment: ""))
                .multilineTextAlignment(.center)
        }
        .padding()


    }
}
