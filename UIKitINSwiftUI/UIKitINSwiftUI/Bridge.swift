//
//  Bridge.swift
//  UIKitINSwiftUI
//
//  Created by Sai Pasumarthy on 12/10/22.
//

import UIKit
import SwiftUI

struct Bridge: UIViewRepresentable {
    func makeUIView(context: Context) -> some UIView {
        let view = UIKitButtonView()
        view.becomeFirstResponder()
        return view
    }
    func makeCoordinator() -> Coordinator {
        return Coordinator()
    }
    func updateUIView(_ uiView: UIViewType, context: Context) { }
    
    class Coordinator: NSObject {}
}
