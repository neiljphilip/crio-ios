//: Playground - noun: a place where people can play

import UIKit
import Foundation

public class callWebService {
    
    /*
     open func crioWebService(){
     var url : String = "http://10.0.0.11:8080/crio/api"
     var request : NSMutableURLRequest = NSMutableURLRequest()
     request.url = URL(string: url)
     request.httpMethod = "GET"
     NSURLConnection.sendAsynchronousRequest(request as URLRequest, queue: OperationQueue(), completionHandler:{ (response:URLResponse!, data: Data!, error: NSError!) -> Void in
     var error: AutoreleasingUnsafeMutablePointer<NSError?>? = nil
     let jsonResult: NSDictionary! = JSONSerialization.JSONObjectWithData(data, options:JSONSerialization.ReadingOptions.mutableContainers, error: error) as? NSDictionary
     
     if (jsonResult != nil) {
     // process jsonResult
     } else {
     // couldn't load JSON, look at error
     }
     
     
     } as! (URLResponse?, Data?, Error?) -> Void)
     
     
     
     }
     }
     */
    
    open func crioWebService(){
        print(getJSONFromDatabase())
        
    }
    
    open func getJSONFromDatabase() -> String  {
        let urlPath = "http://10.0.0.11:8080/crio/api?username=raymond&password=test"
        let url1:URL = URL(string:urlPath as String)
        
        let request: URLRequest = URLRequest(URL: url1)
        var response
        NSURLConnection.sendSynchronousRequest(<#T##request: URLRequest##URLRequest#>, queue:nil, completionHandler: {
            (response: URLResponse, data:Data!, error: Error!) -> Void in
            if data.length > 0 && error == nil {
                response: AnyObject! = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.fromMask(0), error:nil)
            }
        })
        
        return response
    }
    
}
