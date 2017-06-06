//
//	Subscription.swift
//
//	Create by Marlon Boncodin on 6/6/2017

import Foundation

public enum InfoType: String{
    
    case accounts = "accounts"
    case services = "services"
    case subscriptions = "subscriptions"
    case products = "products"
    
}

class Subscription : NSObject, NSCoding{

	var data : PlanData!
	var included : [PlanData]!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		if let dataData = dictionary["data"] as? [String:Any]{
			data = PlanData(fromDictionary: dataData)
		}
		included = [PlanData]()
		if let includedArray = dictionary["included"] as? [[String:Any]]{
			for dic in includedArray{
				let value = PlanData(fromDictionary: dic)
				included.append(value)
			}
		}
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if data != nil{
			dictionary["data"] = data.toDictionary()
		}
		if included != nil{
			var dictionaryElements = [[String:Any]]()
			for includedElement in included {
				dictionaryElements.append(includedElement.toDictionary())
			}
			dictionary["included"] = dictionaryElements
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         data = aDecoder.decodeObject(forKey: "data") as? PlanData
         included = aDecoder.decodeObject(forKey :"included") as? [PlanData]
	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if data != nil{
			aCoder.encode(data, forKey: "data")
		}
		if included != nil{
			aCoder.encode(included, forKey: "included")
		}

	}

}
