//: Playground - noun: a place where people can play

import UIKit
import Foundation
XCPSetExecutionShouldContinueIndefinitely()


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
    
    }
    
   
    
    open func getJSONFromDatabase() -> Void  {
        print("hello!")
        let urlPath = "http://10.0.0.11:8080/crio/api?username=raymond&password=test"
        let url1 = URL(string:urlPath)!
        
        let request = URLRequest(url: url1)
        
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: request, completionHandler: {(data, response, error) in
            //print(data!)
            //print(response!)
            //print(error!)
            
            let dataString = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
            print(dataString!)
            
            
        })
        
      dataTask.resume()
        
    }
    

    
}

var myEx : callWebService = callWebService()
myEx.getJSONFromDatabase()


