//
//  dataManager.swift
//  StateAnaDataFlow
//
//  Created by Иван on 17.06.2023.
//

import SwiftUI

final class DataManager: ObservableObject {
    @AppStorage("username") var  username = ""
    @AppStorage("isLogin") var isLogin = false
    
    func add(user: String) {
        username = user
        isLogin.toggle()
    }
}
