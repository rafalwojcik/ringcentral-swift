import Foundation
import ObjectMapper
open class PhoneNumberResource: Mappable {
    /*
    Internal identifier of a phone number
    */
    open var `id`: String?
    /*
    Brief information on a phone number country
    */
    open var `country`: CountryResource?
    /*
    Information on an extension to which the phone number is assigned
    */
    open var `extension`: ExtensionResource?
    /*
    Custom user name of a phone number, if any. Supported for numbers assigned to Auto-Receptionist, with usage type 'CompanyNumber'
    */
    open var `label`: String?
    /*
    Location (City, State). Filled for local US numbers
    */
    open var `location`: String?
    /*
    Payment type. 'External' is returned for forwarded numbers which are not terminated in the RingCentral phone system = ['External', 'TollFree', 'Local'],
    */
    open var `paymentType`: String?
    /*
    Phone number
    */
    open var `phoneNumber`: String?
    /*
    Status of a phone number. If the value is 'Normal', the phone number is ready to be used. Otherwise it is an external number not yet ported to RingCentral ,
    */
    open var `status`: String?
    /*
    */
    open var `usageType`: String?
    /*
    Type of a phone number
    */
    open var `type`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, country: CountryResource? = nil, extension: ExtensionResource? = nil, label: String? = nil, location: String? = nil, paymentType: String? = nil, phoneNumber: String? = nil, status: String? = nil, usageType: String? = nil, type: String? = nil) {
        self.init()
        self.id = `id`
        self.country = `country`
        self.extension = `extension`
        self.label = `label`
        self.location = `location`
        self.paymentType = `paymentType`
        self.phoneNumber = `phoneNumber`
        self.status = `status`
        self.usageType = `usageType`
        self.type = `type`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `country` <- map["country"]
        `extension` <- map["extension"]
        `label` <- map["label"]
        `location` <- map["location"]
        `paymentType` <- map["paymentType"]
        `phoneNumber` <- map["phoneNumber"]
        `status` <- map["status"]
        `usageType` <- map["usageType"]
        `type` <- map["type"]
    }
}
