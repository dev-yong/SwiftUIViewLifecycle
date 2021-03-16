//
//  ContentView.swift
//  SwiftUIViewLifecycle
//
//  Created by 이광용 on 2021/03/16.
//

import SwiftUI

struct ContentView: View {
    
    @State var isPresenting = false
    @Binding var seconds: Int
    
    init(seconds: Binding<Int>) {
        
        print("[ContentView]", #function)
        self._seconds = seconds
    }
    
    var body: some View {
        
        print("[ContentView]", #function)
        return Button(action: {
            isPresenting = true
        }, label: {
            Text("Toggle \(self.seconds)")
        }).sheet(
            isPresented: $isPresenting,
            content: {
                ViewControllerWrapper(count: self.$seconds)
                    .onAppear {
                        print("[ContentView] onAppear")
                    }
                    .onDisappear {
                        print("[ContentView] onDisAppear")
                    }
            })
    }
}
