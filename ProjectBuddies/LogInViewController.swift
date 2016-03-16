//
//  ViewController.swift
//  ProjectBuddies
//
//  Created by Erica Lee on 3/14/16.
//  Copyright © 2016 EricaAndAini. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController, FBSDKLoginButtonDelegate
{

    override func viewDidLoad() {
        super.viewDidLoad()
        var loginButton = FBSDKLoginButton()

        if(FBSDKAccessToken.currentAccessToken() == nil ){
            print("Not logged in.")
        }
        else{
            
            print("Logged in!")
        }
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func loginButton(loginButton: FBSDKLoginButton!, didCompleteWithResult result: FBSDKLoginManagerLoginResult!, error: NSError!) {
        print("User Logged In")
        
        if ((error) != nil)
        {
            // Process error
        }
        else if result.isCancelled {
            // Handle cancellations
        }
        else {
            // If you ask for multiple permissions at once, you
            // should check if specific permissions missing
            if result.grantedPermissions.contains("email")
            {
                // Do work
            }
        }
    }
    
    func loginButtonDidLogOut(loginButton: FBSDKLoginButton!) {
        print("User Logged Out")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

