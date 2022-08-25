//
//  MainContentView.swift
//  SwiftUIandFirebaseAndPushNotifications01
//
//  Created by Petro Onishchuk on 8/25/22.
//

import SwiftUI

struct MainContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct MainContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainContentView()
    }
}
