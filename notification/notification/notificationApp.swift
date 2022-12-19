//
//  notificationApp.swift
//  notification
//
//  Created by Manal alwayeli on 25/05/1444 AH.
//

import SwiftUI

@main
struct notificationApp: App {
    
    init(){
        let center = UNUserNotificationCenter.current()
        center.requestAuthorization(options: [.alert, .sound, .badge]) { result, error in
            if let error = error {
                print(error)
            }
        }
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
