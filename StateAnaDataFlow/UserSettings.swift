//
//  UserSettings.swift
//  StateAnaDataFlow
//
//  Created by Alexey Efimov on 14.06.2023.
//

import SwiftUI

final class UserSettings: ObservableObject {
    @AppStorage("name") var name = ""
    @AppStorage("isLoggedIn") var isLoggedIn = false
    
    func update(newName: String, logged: Bool) {
        name = newName
        isLoggedIn = logged
    }
    
    func delete() {
        name = ""
        isLoggedIn = false
    }
}
