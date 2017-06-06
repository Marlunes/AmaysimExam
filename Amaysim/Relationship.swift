//
//	Relationship.swift
//
//	Create by Marlon Boncodin on 6/6/2017

import Foundation


class Relationship : NSObject, NSCoding{

	var services : Service!
	var downgrade : Downgrade!
	var product : Product!
	var service : Service!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		if let servicesData = dictionary["services"] as? [String:Any]{
			services = Service(fromDictionary: servicesData)
		}
		if let downgradeData = dictionary["downgrade"] as? [String:Any]{
			downgrade = Downgrade(fromDictionary: downgradeData)
		}
		if let productData = dictionary["product"] as? [String:Any]{
			product = Product(fromDictionary: productData)
		}
		if let serviceData = dictionary["service"] as? [String:Any]{
			service = Service(fromDictionary: serviceData)
		}
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if services != nil{
			dictionary["services"] = services.toDictionary()
		}
		if downgrade != nil{
			dictionary["downgrade"] = downgrade.toDictionary()
		}
		if product != nil{
			dictionary["product"] = product.toDictionary()
		}
		if service != nil{
			dictionary["service"] = service.toDictionary()
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         services = aDecoder.decodeObject(forKey: "services") as? Service
         downgrade = aDecoder.decodeObject(forKey: "downgrade") as? Downgrade
         product = aDecoder.decodeObject(forKey: "product") as? Product
         service = aDecoder.decodeObject(forKey: "service") as? Service

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if services != nil{
			aCoder.encode(services, forKey: "services")
		}
		if downgrade != nil{
			aCoder.encode(downgrade, forKey: "downgrade")
		}
		if product != nil{
			aCoder.encode(product, forKey: "product")
		}
		if service != nil{
			aCoder.encode(service, forKey: "service")
		}

	}

}
