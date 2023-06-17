//
//  LogOutView.swift
//  StateAnaDataFlow
//
//  Created by Иван on 17.06.2023.
//

import SwiftUI

struct LogOutView: View {
    @EnvironmentObject var user: UserSettings
      
      var body: some View {
          Button(action: logout) {
              Text("Log Out")
                  .font(.title)
                  .fontWeight(.bold)
                  .foregroundColor(.white)
          }
          .frame(width: 200, height: 60)
          .background(.red)
          .cornerRadius(20)
          .overlay {
              RoundedRectangle(cornerRadius: 20)
                  .stroke(.black, lineWidth: 4)
          }
      }
      
      private func logout() {
          user.delete()
      }
  }

struct LogOutView_Previews: PreviewProvider {
    static var previews: some View {
        LogOutView()
    }
}
