//
//	Data.swift
//
//	Create by Marlon Boncodin on 6/6/2017

import Foundation


class PlanData : NSObject, NSCoding{

	var attributes : Attribute!
	var id : String!
	var links : Link!
	var relationships : Relationship!
	var type : InfoType!

	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		if let attributesData = dictionary["attributes"] as? [String:Any]{
			attributes = Attribute(fromDictionary: attributesData)
		}
		id = dictionary["id"] as? String
		if let linksData = dictionary["links"] as? [String:Any]{
			links = Link(fromDictionary: linksData)
		}
		if let relationshipsData = dictionary["relationships"] as? [String:Any]{
			relationships = Relationship(fromDictionary: relationshipsData)
		}
		let typeString = dictionary["type"] as? String
        type = InfoType(rawValue: typeString!)
        
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if attributes != nil{
			dictionary["attributes"] = attributes.toDictionary()
		}
		if id != nil{
			dictionary["id"] = id
		}
		if links != nil{
			dictionary["links"] = links.toDictionary()
		}
		if relationships != nil{
			dictionary["relationships"] = relationships.toDictionary()
		}
		if type != nil{
			dictionary["type"] = type
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         attributes = aDecoder.decodeObject(forKey: "attributes") as? Attribute
         id = aDecoder.decodeObject(forKey: "id") as? String
         links = aDecoder.decodeObject(forKey: "links") as? Link
         relationships = aDecoder.decodeObject(forKey: "relationships") as? Relationship
         type = aDecoder.decodeObject(forKey: "type") as? InfoType

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if attributes != nil{
			aCoder.encode(attributes, forKey: "attributes")
		}
		if id != nil{
			aCoder.encode(id, forKey: "id")
		}
		if links != nil{
			aCoder.encode(links, forKey: "links")
		}
		if relationships != nil{
			aCoder.encode(relationships, forKey: "relationships")
		}
		if type != nil{
			aCoder.encode(type, forKey: "type")
		}

	}

}
