//
//  LoginHelper.swift
//  Amaysim
//
//  Created by Marlon Boncodin on 06/06/2017.
//  Copyright © 2017 Marlon Boncodin. All rights reserved.
//

import UIKit

class LoginHelper: NSObject {
    
    func getIdSegueToSubscription() -> String{
        return "segue_subscription"
    }
    
    func textFieldsCompleted(textFields: [UITextField]) -> Bool{
        let completedTFs = textFields.filter{ $0.text!.characters.count > 0 }
        return (completedTFs.count == textFields.count)
    }
    
    func validateHardCodedJSON(completed: (()->Void)){
        
        do {
            if let file = Bundle.main.url(forResource: "collection", withExtension: "json") {
                let data = try Data(contentsOf: file)
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                if let object = json as? [String: Any] {
                    let subscription = Subscription(fromDictionary: object)
                    Storage.sharedInstance.saveSubscription(model: subscription)
                    completed()
                }else {
                    print("JSON is invalid")
                }
            } else {
                print("Invalid file path")
            }
        } catch {
            print(error.localizedDescription)
        }
    
    }

}
