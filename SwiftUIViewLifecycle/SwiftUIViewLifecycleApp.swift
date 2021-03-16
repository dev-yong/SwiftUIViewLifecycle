//
//  SwiftUIViewLifecycleApp.swift
//  SwiftUIViewLifecycle
//
//  Created by 이광용 on 2021/03/16.
//

import SwiftUI

@main
struct SwiftUIViewLifecycleApp: App {
    
    let timer = Timer.publish(
        every: 1,
        on: .main,
        in: .common
    ).autoconnect()
    @State var seconds: Int = 0
    var body: some Scene {
        WindowGroup {
            ContentView(seconds: $seconds)
                .onReceive(timer) { time in
                self.seconds += 1
            }
        }
    }
}
