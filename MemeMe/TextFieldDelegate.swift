//
//  TextFieldDelegate.swift
//  MemeMe
//
//  Created by omoon on 2016/07/27.
//  Copyright © 2016年 lamolabo. All rights reserved.
//

import Foundation
import UIKit

class TextFieldDelegate: NSObject, UITextFieldDelegate {
    
    var tag: Int!
    var isChanged = [1: false, 2: false]
    
    func textFieldDidBeginEditing(textField: UITextField) {
        tag = textField.tag
        if isChanged[tag] == false {
            textField.clearsOnBeginEditing = true
        }
        isChanged[tag] = true
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.endEditing(true)
        return true
    }
    
    func resetStatus() {
        isChanged = [1: false, 2: false]
    }
    
}
