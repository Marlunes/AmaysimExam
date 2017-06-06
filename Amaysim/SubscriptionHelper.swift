//
//  SubscriptionHelper.swift
//  Amaysim
//
//  Created by Marlon Boncodin on 06/06/2017.
//  Copyright © 2017 Marlon Boncodin. All rights reserved.
//

import UIKit

class SubscriptionHelper: NSObject {
    
    /**
     Convert **mb** megabytes to GB (1024)
     */
    func convertToGB(mb: Int?) -> Double{
        
        if let mega = mb {
            return (Double(mega) / 1024).rounded(2)
        }
        
        return 0
    }
    
    /**
     Convert **cents** to Dollars (100)
     */
    func convertToDollar(cents: Int?) -> Double{
        
        if let centavos = cents {
            return (Double(centavos) / 100).rounded(2)
        }
        
        return 0

    }
    
    /**
     Create plan name/price string according to data
     */
    func createPlanName(data: PlanData?) -> String{
        
        if let info = data {
            return "\(info.attributes.name!) ($\(convertToDollar(cents: info.attributes.price)))"
        }
        
        return Strings().no_info_found
        
    }

}

extension Double {
    func rounded(_ places: Int) -> Double {
        let multiplier = pow(10, Double(places))
        return Darwin.round(self * multiplier) / multiplier
    }
}
