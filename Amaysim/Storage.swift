//
//  Storage.swift
//  Amaysim
//
//  Created by Marlon Boncodin on 07/06/2017.
//  Copyright © 2017 Marlon Boncodin. All rights reserved.
//

import UIKit

class Storage{
    
    static let sharedInstance = Storage()
    
    var currentSubscription : Subscription?
    
    func saveSubscription(model: Subscription){
        currentSubscription = model
    }
    
    func getCurrentSubscription() -> Subscription?{
        return currentSubscription
    }

}
