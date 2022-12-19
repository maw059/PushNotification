//
//  ContentView.swift
//  notification
//
//  Created by Manal alwayeli on 25/05/1444 AH.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button ("Notfifcation") {
                let center = UNUserNotificationCenter.current()
                
                
                let content = UNMutableNotificationContent()
                content.title = "Apple Developer Academy"
                content.body = "HII"
                
                
                let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5.0, repeats: false)
                
                
                let request = UNNotificationRequest(identifier: "identifier", content: content, trigger: trigger)
                
                center.add(request) { error in
                    if let error = error {
                        print(error)
                    }
                    
                }
            }
            }
    }
    
    
//    func reportNotification()
//    {
//        let content = UNMutableNotificationContent()
//                content.title = "التقرير الأسبوعى"
//                content.body = "لقد تم اكتمال تقرير طفلك لهذا الأسبوع يمكنك الإطلاع عليه الآن"
//                var dateComponents = DateComponents()
//                dateComponents.calendar = Calendar.current
//
//                dateComponents.weekday = 2  // Saturday
//        dateComponents.hour = 22    // 18:00 hours
//                let trigger = UNCalendarNotificationTrigger(
//                         dateMatching: dateComponents, repeats: true)
//
//                let uuidString = UUID().uuidString
//                let request = UNNotificationRequest(identifier: uuidString,
//                            content: content, trigger: trigger)
//
//                // Schedule the request with the system.
//                let notificationCenter = UNUserNotificationCenter.current()
//                notificationCenter.add(request) { (error) in
//                   if error != nil {
//                      // Handle any errors.
//                   }
//                }
//    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
