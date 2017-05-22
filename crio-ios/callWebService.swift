//
//  callWebService.swift
//  crio-ios
//
//  Created by Neil Philip on 5/21/17.
//  Copyright © 2017 Home. All rights reserved.
//

import Foundation

public class callWebService {
    
    open func crioWebService(){
        var url : String = "http://10.0.0.11:8080/crio/api"
        var request : NSMutableURLRequest = NSMutableURLRequest()
        request.url = URL(string: url)
        request.httpMethod = "GET"
        NSURLConnection.sendAsynchronousRequest(request as URLRequest, queue: OperationQueue(), completionHandler:{ (response:URLResponse!, data: Data!, error: NSError!) -> Void in
            var error: AutoreleasingUnsafeMutablePointer<NSError?> = nil
            let jsonResult: NSDictionary! = JSONSerialization.JSONObjectWithData(data, options:JSONSerialization.ReadingOptions.MutableContainers, error: error) as? NSDictionary
            
            if (jsonResult != nil) {
                // process jsonResult
            } else {
                // couldn't load JSON, look at error
            }
            
            
        } as! (URLResponse?, Data?, Error?) -> Void)
        
        
        
            }
}
