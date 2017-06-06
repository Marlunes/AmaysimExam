//
//	Attribute.swift
//
//	Create by Marlon Boncodin on 6/6/2017

import Foundation


class Attribute : NSObject, NSCoding{

	var contactnumber : String!
	var dateofbirth : String!
	var emailaddress : String!
	var emailaddressverified : Bool!
	var emailsubscriptionstatus : Bool!
	var firstname : String!
	var lastname : String!
	var nextbillingdate : Int!
	var paymenttype : String!
	var title : String!
	var unbilledcharges : Int!
	var includedcredit : Int!
	var includeddata : Int!
	var includedinternationaltalk : Int!
	var name : String!
	var price : Int!
	var unlimitedinternationaltalk : Bool!
	var unlimitedinternationaltext : Bool!
	var unlimitedtalk : Bool!
	var unlimitedtext : Bool!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		contactnumber = dictionary["contact-number"] as? String
		dateofbirth = dictionary["date-of-birth"] as? String
		emailaddress = dictionary["email-address"] as? String
		emailaddressverified = dictionary["email-address-verified"] as? Bool
		emailsubscriptionstatus = dictionary["email-subscription-status"] as? Bool
		firstname = dictionary["first-name"] as? String
		lastname = dictionary["last-name"] as? String
		nextbillingdate = dictionary["next-billing-date"] as? Int
		paymenttype = dictionary["payment-type"] as? String
		title = dictionary["title"] as? String
		unbilledcharges = dictionary["unbilled-charges"] as? Int
		includedcredit = dictionary["included-credit"] as? Int
		includeddata = dictionary["included-data-balance"] as? Int
		includedinternationaltalk = dictionary["included-international-talk"] as? Int
		name = dictionary["name"] as? String
		price = dictionary["price"] as? Int
		unlimitedinternationaltalk = dictionary["unlimited-international-talk"] as? Bool
		unlimitedinternationaltext = dictionary["unlimited-international-text"] as? Bool
		unlimitedtalk = dictionary["unlimited-talk"] as? Bool
		unlimitedtext = dictionary["unlimited-text"] as? Bool
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if contactnumber != nil{
			dictionary["contact-number"] = contactnumber
		}
		if dateofbirth != nil{
			dictionary["date-of-birth"] = dateofbirth
		}
		if emailaddress != nil{
			dictionary["email-address"] = emailaddress
		}
		if emailaddressverified != nil{
			dictionary["email-address-verified"] = emailaddressverified
		}
		if emailsubscriptionstatus != nil{
			dictionary["email-subscription-status"] = emailsubscriptionstatus
		}
		if firstname != nil{
			dictionary["first-name"] = firstname
		}
		if lastname != nil{
			dictionary["last-name"] = lastname
		}
		if nextbillingdate != nil{
			dictionary["next-billing-date"] = nextbillingdate
		}
		if paymenttype != nil{
			dictionary["payment-type"] = paymenttype
		}
		if title != nil{
			dictionary["title"] = title
		}
		if unbilledcharges != nil{
			dictionary["unbilled-charges"] = unbilledcharges
		}
		if includedcredit != nil{
			dictionary["included-credit"] = includedcredit
		}
		if includeddata != nil{
			dictionary["included-data-balance"] = includeddata
		}
		if includedinternationaltalk != nil{
			dictionary["included-international-talk"] = includedinternationaltalk
		}
		if name != nil{
			dictionary["name"] = name
		}
		if price != nil{
			dictionary["price"] = price
		}
		if unlimitedinternationaltalk != nil{
			dictionary["unlimited-international-talk"] = unlimitedinternationaltalk
		}
		if unlimitedinternationaltext != nil{
			dictionary["unlimited-international-text"] = unlimitedinternationaltext
		}
		if unlimitedtalk != nil{
			dictionary["unlimited-talk"] = unlimitedtalk
		}
		if unlimitedtext != nil{
			dictionary["unlimited-text"] = unlimitedtext
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         contactnumber = aDecoder.decodeObject(forKey: "contact-number") as? String
         dateofbirth = aDecoder.decodeObject(forKey: "date-of-birth") as? String
         emailaddress = aDecoder.decodeObject(forKey: "email-address") as? String
         emailaddressverified = aDecoder.decodeObject(forKey: "email-address-verified") as? Bool
         emailsubscriptionstatus = aDecoder.decodeObject(forKey: "email-subscription-status") as? Bool
         firstname = aDecoder.decodeObject(forKey: "first-name") as? String
         lastname = aDecoder.decodeObject(forKey: "last-name") as? String
         nextbillingdate = aDecoder.decodeObject(forKey: "next-billing-date") as? Int
         paymenttype = aDecoder.decodeObject(forKey: "payment-type") as? String
         title = aDecoder.decodeObject(forKey: "title") as? String
         unbilledcharges = aDecoder.decodeObject(forKey: "unbilled-charges") as? Int
         includedcredit = aDecoder.decodeObject(forKey: "included-credit") as? Int
         includeddata = aDecoder.decodeObject(forKey: "included-data-balance") as? Int
         includedinternationaltalk = aDecoder.decodeObject(forKey: "included-international-talk") as? Int
         name = aDecoder.decodeObject(forKey: "name") as? String
         price = aDecoder.decodeObject(forKey: "price") as? Int
         unlimitedinternationaltalk = aDecoder.decodeObject(forKey: "unlimited-international-talk") as? Bool
         unlimitedinternationaltext = aDecoder.decodeObject(forKey: "unlimited-international-text") as? Bool
         unlimitedtalk = aDecoder.decodeObject(forKey: "unlimited-talk") as? Bool
         unlimitedtext = aDecoder.decodeObject(forKey: "unlimited-text") as? Bool

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if contactnumber != nil{
			aCoder.encode(contactnumber, forKey: "contact-number")
		}
		if dateofbirth != nil{
			aCoder.encode(dateofbirth, forKey: "date-of-birth")
		}
		if emailaddress != nil{
			aCoder.encode(emailaddress, forKey: "email-address")
		}
		if emailaddressverified != nil{
			aCoder.encode(emailaddressverified, forKey: "email-address-verified")
		}
		if emailsubscriptionstatus != nil{
			aCoder.encode(emailsubscriptionstatus, forKey: "email-subscription-status")
		}
		if firstname != nil{
			aCoder.encode(firstname, forKey: "first-name")
		}
		if lastname != nil{
			aCoder.encode(lastname, forKey: "last-name")
		}
		if nextbillingdate != nil{
			aCoder.encode(nextbillingdate, forKey: "next-billing-date")
		}
		if paymenttype != nil{
			aCoder.encode(paymenttype, forKey: "payment-type")
		}
		if title != nil{
			aCoder.encode(title, forKey: "title")
		}
		if unbilledcharges != nil{
			aCoder.encode(unbilledcharges, forKey: "unbilled-charges")
		}
		if includedcredit != nil{
			aCoder.encode(includedcredit, forKey: "included-credit")
		}
		if includeddata != nil{
			aCoder.encode(includeddata, forKey: "included-data-balance")
		}
		if includedinternationaltalk != nil{
			aCoder.encode(includedinternationaltalk, forKey: "included-international-talk")
		}
		if name != nil{
			aCoder.encode(name, forKey: "name")
		}
		if price != nil{
			aCoder.encode(price, forKey: "price")
		}
		if unlimitedinternationaltalk != nil{
			aCoder.encode(unlimitedinternationaltalk, forKey: "unlimited-international-talk")
		}
		if unlimitedinternationaltext != nil{
			aCoder.encode(unlimitedinternationaltext, forKey: "unlimited-international-text")
		}
		if unlimitedtalk != nil{
			aCoder.encode(unlimitedtalk, forKey: "unlimited-talk")
		}
		if unlimitedtext != nil{
			aCoder.encode(unlimitedtext, forKey: "unlimited-text")
		}

	}

}
