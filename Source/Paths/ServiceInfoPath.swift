import Foundation
import ObjectMapper
import Alamofire
open class ServiceInfoPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "service-info"
        }
    }
    /*
    Returns the information about service plan, available features and limitations for a particular RingCentral customer account.
    */
    open func get(callback: @escaping (_ t: AccountServiceInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: AccountServiceInfo?, error) in
            callback(t, error)
        }
    }
}
