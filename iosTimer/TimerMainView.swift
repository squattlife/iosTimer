//
//  ContentView.swift
//  iosTimer
//
//  Created by 이재영 on 2023/09/13.
//

import SwiftUI

struct TimerView: View {
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
