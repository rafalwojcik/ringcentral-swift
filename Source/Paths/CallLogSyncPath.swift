import Foundation
import ObjectMapper
import Alamofire
open class CallLogSyncPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "call-log-sync"
        }
    }
    /*
    */
    open func list(callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    /*
    */
    open func list(parameters: Parameters, callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false), parameters: parameters) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    /*
    */
    open func list(parameters: ListParameters, callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
        /*
        Type of synchronization. 'FSync' is a default value
        */
        open var `syncType`: String?
        /*
        Value of syncToken property of last sync request response
        */
        open var `syncToken`: String?
        /*
        The start datetime for resulting records in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z. The default value is the current moment
        */
        open var `dateFrom`: String?
        /*
        For FSync the parameter is mandatory, it limits the number of records to be returned in response. For ISync it specifies with how many records to extend sync Frame to the past, the maximum number of records is 250
        */
        open var `recordCount`: Int?
        /*
        Type of calls to be returned. The default value is 'All'
        */
        open var `statusGroup`: String?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(syncType: String? = nil, syncToken: String? = nil, dateFrom: String? = nil, recordCount: Int? = nil, statusGroup: String? = nil) {
            self.init()
            self.syncType = `syncType`
            self.syncToken = `syncToken`
            self.dateFrom = `dateFrom`
            self.recordCount = `recordCount`
            self.statusGroup = `statusGroup`
        }
        open func mapping(map: Map) {
            `syncType` <- map["syncType"]
            `syncToken` <- map["syncToken"]
            `dateFrom` <- map["dateFrom"]
            `recordCount` <- map["recordCount"]
            `statusGroup` <- map["statusGroup"]
        }
    }
    open class ListResponse: Mappable {
        /*
        List of call log records with synchronization information. For ISync the total number of returned records is limited to 250; this includes both new records and the old ones, specified by the recordCount parameter
        */
        open var `records`: [CallLogRecord]?
        /*
        Sync type, token and time
        */
        open var `syncInfo`: SyncInfo?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(records: [CallLogRecord]? = nil, syncInfo: SyncInfo? = nil) {
            self.init()
            self.records = `records`
            self.syncInfo = `syncInfo`
        }
        open func mapping(map: Map) {
            `records` <- map["records"]
            `syncInfo` <- map["syncInfo"]
        }
    }
}
