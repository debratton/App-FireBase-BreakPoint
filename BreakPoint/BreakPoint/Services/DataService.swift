//
//  DataService.swift
//  BreakPoint
//
//  Created by David E Bratton on 11/8/18.
//  Copyright © 2018 David Bratton. All rights reserved.
//

import Foundation
import Firebase

// Get firebase reference to root of your Firebase DB
// If you open your db in firebase https://breakpoint-6d4a5.firebaseio.com/
// Make this outside of class so it is accessible inside class since it has no initializers
let DB_BASE = Database.database().reference()

class DataService {
    // Make a singleton that is accessisble throughout project
    static let instance = DataService()
    private var _REF_BASE = DB_BASE
    // Like creating a folder to hold user https://breakpoint-6d4a5.firebaseio.com/users
    private var _REF_USERS = DB_BASE.child("users")
    // Like creating a folder to hold user https://breakpoint-6d4a5.firebaseio.com/groups
    private var _REF_GROUPS = DB_BASE.child("groups")
    // Like creating a folder to hold user https://breakpoint-6d4a5.firebaseio.com/feed
    private var _REF_FEED = DB_BASE.child("feed")
    
    // Create public variables
    var REF_BASE: DatabaseReference {
        return _REF_BASE
    }
    
    var REF_USERS: DatabaseReference {
        return _REF_USERS
    }
    
    var REF_GROUPS: DatabaseReference {
        return _REF_GROUPS
    }
    
    var REF_FEED: DatabaseReference {
        return _REF_FEED
    }
    
    func createDBUser(uid: String, userData: Dictionary<String, Any>) {
        REF_USERS.child(uid).updateChildValues(userData)
    }
}
