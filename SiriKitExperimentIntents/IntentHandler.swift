//
//  IntentHandler.swift
//  SiriKitExperimentIntents
//
//  Created by Yoshikuni Kato on 2018/09/26.
//  Copyright © 2018 Yoshikuni Kato. All rights reserved.
//

import Intents


class IntentHandler: INExtension, PrintIntentHandling {
    func handle(intent: PrintIntent, completion: @escaping (PrintIntentResponse) -> Void) {
        print("intent handled, message: \(intent.message)")
        completion(.init(code: .success, userActivity: nil))
    }
}
