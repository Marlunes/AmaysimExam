//
//	Link.swift
//
//	Create by Marlon Boncodin on 6/6/2017

import Foundation


class Link : NSObject, NSCoding{

	var url : String!
	var related : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		url = dictionary["self"] as? String
		related = dictionary["related"] as? String
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if url != nil{
			dictionary["self"] = self
		}
		if related != nil{
			dictionary["related"] = related
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         url = aDecoder.decodeObject(forKey: "self") as? String
         related = aDecoder.decodeObject(forKey: "related") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if url != nil{
			aCoder.encode(self, forKey: "self")
		}
		if related != nil{
			aCoder.encode(related, forKey: "related")
		}

	}

}
