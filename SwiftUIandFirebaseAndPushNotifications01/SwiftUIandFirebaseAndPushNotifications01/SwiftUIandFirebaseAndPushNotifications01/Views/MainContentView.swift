//
//  MainContentView.swift
//  SwiftUIandFirebaseAndPushNotifications01
//
//  Created by Petro Onishchuk on 8/25/22.
//

import SwiftUI

struct MainContentView: View {
    
    @EnvironmentObject var myAppVM: MyAppViewModel
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    ForEach(myAppVM.allMessages, id: \.id) { message in
                        VStack(alignment: .leading) {
                            Text("Title: \(message.title)")
                            Text("Body: \(message.body)")
                                .font(Font.system(size: 14))
                            Text("Date: \(myAppVM.convertData(date: message.messagesDate))")
                        }
                    }
                } header: {
                    Text("Message List Section")
                }
            }
            .onAppear {
                myAppVM.setupNotifications()
            }
        }
        .padding()
    }
}

struct MainContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainContentView()
    }
}
