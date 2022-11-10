//
//  UberCloneApp.swift
//  UberClone
//
//  Created by Berkay Disli on 4.11.2022.
//

import SwiftUI

@main
struct UberCloneApp: App {
    @StateObject var locationViewModel = LocationSearchViewModel()
    var body: some Scene {
        WindowGroup {
            Home()
                .environmentObject(locationViewModel)
        }
    }
}
