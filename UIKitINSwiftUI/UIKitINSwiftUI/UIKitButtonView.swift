//
//  UIKitButtonView.swift
//  UIKitINSwiftUI
//
//  Created by Sai Pasumarthy on 12/10/22.
//

import UIKit

class UIKitButtonView: UIView {
    @IBOutlet var contentView: UIView!
    @IBOutlet var uikitButton: UIButton!
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func setup() {
        Bundle.main.loadNibNamed("UIKitButtonView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        contentView.frame = self.bounds
        contentView.becomeFirstResponder()
        uikitButton.becomeFirstResponder()
        
    }
    @IBAction func buttonAction(_ sender: Any) {
        debugPrint("UIKit button clicked")
    }
}
