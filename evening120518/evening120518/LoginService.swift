//
//  LoginService.swift
//  evening120518
//
//  Created by Admin on 13/05/2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import Foundation


class LoginService {
    
    func loginUser(_ login: String?, _ password: String?) -> Bool {
        saveUser("token")
        return false
    }
    
    func createUser() ->Bool {
        return false
    }
    
    func logoutUser() -> Bool {
        deleteUser()
        return false
    }
    
    private func saveUser(_ token: String!) {
        let userDefaults = UserDefaults.standard
        userDefaults.setValue(token, forKey: "userToken")
        userDefaults.synchronize()
    }
    
    private func deleteUser() {
        let userDefaults = UserDefaults.standard
        userDefaults.removeObject(forKey: "userToken")
    }
    
}
