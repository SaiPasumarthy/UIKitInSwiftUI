//
//  ContentView.swift
//  UIKitINSwiftUI
//
//  Created by Sai Pasumarthy on 12/10/22.
//

import SwiftUI

struct ContentView: View {
    @State var textField = ""
    var myView: Bridge = Bridge()
    var body: some View {
        NavigationView {
            VStack {
                TextField("Type something here...", text: $textField)
                    .padding()
                myView
                    .frame(height: 100)
                    .background(Color.orange)
                Button("SwiftUI Button") {
                    debugPrint("SwiftUI Button Clicked")
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(Color.red)
            .onTapGesture {
                debugPrint("Tap gesture Clicked")
                UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
