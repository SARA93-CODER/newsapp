//
//  inboardingVC.swift
//  newsapplication
//
//  Created by mac on 27/01/2023.
//

import UIKit


class inboardingVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func btnNotifications(_ sender: UIButton) {
        
        // set up the local notification for authorization from user:
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in
            if granted {
                print("granted")
                self.schedualeNotification()
            }else{
                print("denied")
            }
        }
     }
    
    func schedualeNotification(){
        //Notification content:
        let content = UNMutableNotificationContent()
        content.title = "My Title"
        content.body = "My Body"
        content.sound = .default
        content.badge = 2 // an example.
        
        //Time of sending the notification / (3sec is an example) :
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: TimeInterval(3), repeats: false)
        
        //sending request to Notification Center:
        let request = UNNotificationRequest(identifier: "notificationID", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request)
    }

            
    
    @IBAction func btnSkip(_ sender: Any) {
    }
    

    

}
