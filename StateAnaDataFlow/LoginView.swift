//
//  LoginView.swift
//  StateAnaDataFlow
//
//  Created by Alexey Efimov on 14.06.2023.
//

import SwiftUI

struct LoginView: View {
    @State private var name = ""
    @State private var isNameValid = false
    @EnvironmentObject private var user: UserSettings

    var body: some View {
        VStack {
            HStack{
                TextField("Enter your name...", text: $name)
                    .multilineTextAlignment(.center)
                    .onChange(of: name) { newValue in
                        isNameValid = newValue.count >= 3
                    }

                Spacer()

                Text("\(name.count)")
                    .padding(.leading, -100)
                    .foregroundColor(name.count < 3 ? Color.red : Color.green)
            }

            .padding(.bottom, 16)

            Button(action: login) {
                HStack {
                    Image(systemName: "checkmark.circle")
                        .foregroundColor(isNameValid ? Color.green : Color.red)
                    Text("OK")
                        .foregroundColor(isNameValid ? Color.green : Color.red)
                }
            }
        }
    }

    private func login() {
        if isNameValid {
            user.update(newName: name, logged: true)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

