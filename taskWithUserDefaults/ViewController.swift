//
//  ViewController.swift
//  taskWithUserDefaults
//
//  Created by Danil Gerasimov on 02.11.2021.
//

import UIKit

enum UserDefaultsKey {
    static let settings = "settings"
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        let userDefaults = UserDefaults.standard
        
        let userSettings = UserSettings(notificationSettings: NotificationSettings(isUsePhoneNumber: false, isUseEmail: false, isUseApp: false), authorizationSettings: AuthorizationSettings(isUseFaceID: false, isAutoEnter: false, controlQuestion: "aa?"))
        
        let encoder = JSONEncoder()
        
        let encodedSettings = try? JSONEncoder().encode(userSettings)
        userDefaults.set(encodedSettings, forKey: UserDefaultsKey.settings)
        
        let userDefaultsData = userDefaults.value(forKey: UserDefaultsKey.settings) as! Data
        let decodedSettings = try? JSONDecoder().decode(UserSettings.self, from: userDefaultsData)
        print(decodedSettings)
    }


}

