//
//  ContentView.swift
//  App1
//
//  Created by itiw on 16/2/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("First App")
                .padding()
            Button("Open second app",action : {
                let application = UIApplication.shared
                let secondAppPath = "second://"
                let appUrl=URL(string:secondAppPath)!
                let websiteUrl=URL(string:"https://www.google.com")!
                if application.canOpenURL(appUrl) {
                    application.open(appUrl, options: [:], completionHandler: nil)
                } else {
                    application.open(websiteUrl)
                }
                
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
