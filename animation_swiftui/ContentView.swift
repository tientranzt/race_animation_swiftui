//
//  ContentView.swift
//  animation_swiftui
//
//  Created by tientran on 7/18/20.
//  Copyright © 2020 tientran. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var isRace : Bool = false
    var body: some View {
        VStack {
            HStack(alignment:.top){
                VStack{Text("🐝").font(.system(size: 80))}
                    .offset(x: 0, y: self.isRace ? 600 : 0)
                    .animation(Animation.easeIn(duration: 5))
                Divider()
                VStack{Text("🐌").font(.system(size: 80))}
                    .offset(x: 0, y: self.isRace ? 600 : 0)
                    .animation(Animation.easeIn(duration: 3))
                Divider()
                VStack{Text("🐴").font(.system(size: 80))}
                    .offset(x: 0, y: self.isRace ? 600 : 0)
                    .animation(Animation.easeIn(duration: 8))
                
                Divider()
                VStack{Text("🐢").font(.system(size: 80))}
                    .offset(x: 0, y: self.isRace ? 600 : 0)
                    .animation(Animation.easeIn(duration: 12))
                
            }
            Spacer()
            Button(action: {
                self.isRace.toggle()
            }){
                Text("Race").bold()
            }
            .padding()
            .background(Color.red)
            .foregroundColor(.white)
            .font(.system(size: 20))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
