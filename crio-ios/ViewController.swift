//
//  ViewController.swift
//  crio-ios
//
//  Created by Neil Philip for CRIO.
//  Copyright © 2017 Home. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet var username: UITextField!
    
    @IBOutlet var password: UITextField!
    
    var activityIndicator: UIActivityIndicatorView = UIActivityIndicatorView()
    
    @IBAction func register(_ sender: AnyObject) {
        
        if username.text == "" || password.text == ""
        {
            let alert = UIAlertController(title: "Error in form",
                                          message: "Empty username/password. Please provide both username and password.",
                                          preferredStyle: .alert)
            
            alert.addAction((UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
            
                self.dismiss(animated: true, completion: nil)
                
            
            })))
        }
        else{
            
            activityIndicator = UIActivityIndicatorView(frame: CGRect(x:0,y:0,width:50, height: 50))
            activityIndicator.center = self.view.center
            activityIndicator.hidesWhenStopped = true
            activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.gray
            view.addSubview(activityIndicator)
            activityIndicator.startAnimating()
            UIApplication.shared.beginIgnoringInteractionEvents()
            
        }
    }
    
    @IBAction func logIn(_ sender: AnyObject) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
     
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

