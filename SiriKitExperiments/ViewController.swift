//
//  ViewController.swift
//  SiriKitExperiments
//
//  Created by Yoshikuni Kato on 2018/09/26.
//  Copyright © 2018 Yoshikuni Kato. All rights reserved.
//

import UIKit
import Intents

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonTapped(_ sender: Any) {
        donateUserActivity()
        donateCustomIntent()
    }
    
    private func donateUserActivity() {
        let userActivity = NSUserActivity(activityType: "com.yoshikuni-web.test") // same in info.plist
        userActivity.title = "Title"
        userActivity.userInfo = ["key": "value"]
        
        userActivity.isEligibleForPrediction = true // this enables shortcut
        userActivity.suggestedInvocationPhrase = "Suggested Phrase"
        
        self.userActivity = userActivity // donate
    }
    
    private func donateCustomIntent() {
        let intent = ExperimentIntent()
        intent.message = "Test message"
        
        let interaction = INInteraction(intent: intent, response: nil)
        interaction.donate { error in
            print("intent donation error \(error)")
        }
    }
}

