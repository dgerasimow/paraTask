//
//  UserAppSettings.swift
//  taskWithUserDefaults
//
//  Created by Danil Gerasimov on 02.11.2021.
//

import Foundation

struct UserSettings: Codable {
    
    var notificationSettings: NotificationSettings
    var authorizationSettings: AuthorizationSettings
    
}

struct AuthorizationSettings: Codable {
    var isUseFaceID: Bool
    var isAutoEnter: Bool
    var controlQuestion: String
}

struct NotificationSettings: Codable {
    var isUsePhoneNumber: Bool
    var isUseEmail: Bool
    var isUseApp: Bool
}


