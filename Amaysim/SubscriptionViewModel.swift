//
//  SubscriptionViewModel.swift
//  Amaysim
//
//  Created by Marlon Boncodin on 06/06/2017.
//  Copyright © 2017 Marlon Boncodin. All rights reserved.
//

import UIKit

class SubscriptionViewModel: NSObject {

    /**
     Get the subscribers fullname according to the DATA type accounts.
     */
    func getUserInfoFullName() -> String{
        
        if let data = Storage.sharedInstance.getCurrentSubscription()?.data{
            return "\(data.attributes.firstname!) \(data.attributes.lastname!)"
        }
        
        return ""
    }
    
    /**
     Get the plan information according to the DATA type.
     
     ## Parameters ##
     **type** The type of Data that (e.g accounts, services, etc)
     
     */
    func getUserPlanInfo(type: InfoType) -> PlanData?{
        
        if let data = Storage.sharedInstance.getCurrentSubscription()?.included{
            let planInfo = data.filter({$0.type == type})
            if planInfo.count > 0 {
                return planInfo[0]
            }
        }
        
        return nil
        
    }
    
}
