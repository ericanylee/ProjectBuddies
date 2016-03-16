//
//  FBLoginViewController.swift
//  ProjectBuddies
//
//  Created by Erica Lee on 3/15/16.
//  Copyright © 2016 EricaAndAini. All rights reserved.
//

import UIKit

class FBLoginViewController: UIViewController, FBSDKLoginButtonDelegate {

    @IBOutlet weak var LoginBtn: FBSDKLoginButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if(FBSDKAccessToken.currentAccessToken() == nil ){
            print("Not logged in.")
        }
        else{
            
            print("Logged in!")
        }
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func configureFacebook()
    {
        LoginBtn.readPermissions = ["public_profile", "email", "user_friends"]
        LoginBtn.delegate = self
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
        
        
        
        /*
        FBSDKGraphRequest.init(graphPath: "me", parameters: ["fields":"first_name, last_name, picture.type(large)"]).startWithCompletionHandler { (connection, result, error) -> Void in
        let strFirstName: String = (result.objectForKey("first_name") as? String)!
        let strLastName: String = (result.objectForKey("last_name") as? String)!
        let strPictureURL: String = (result.objectForKey("picture")?.objectForKey("data")?.objectForKey("url") as? String)!
        self.lblName.text = "Welcome, \(strFirstName) \(strLastName)"
        self.ivUserProfileImage.image = UIImage(data: NSData(contentsOfURL: NSURL(string: strPictureURL)!)!)
        }
        - See more at: http://www.theappguruz.com/blog/facebook-integration-using-swift#sthash.UAZsvFtX.dpuf
        */
    }
    
    func loginButtonDidLogOut(loginButton: FBSDKLoginButton!) {
        print("User Logged Out")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
