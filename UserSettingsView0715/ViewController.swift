//
//  ViewController.swift
//  UserSettingsView0715
//
//  Created by leslie on 7/15/20.
//  Copyright © 2020 leslie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textEditor: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    //TODO: - Configuring the Text View according to the values set by the user
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let defaultValues = UserDefaults.standard
        
        ///Reading values with generic method
//        if let color = defaultValues.object(forKey: "color") as? Int {
//            let colorList = [UIColor.black, UIColor.gray, UIColor.lightGray]
//            textEditor.textColor = colorList[color]
//        }
//
//        if let editable = defaultValues.object(forKey: "editable") as? Bool {
//            textEditor.isEditable = editable
//        }
//
//        if let correction = defaultValues.object(forKey: "correction") as? Bool {
//            if correction {
//                textEditor.spellCheckingType = .yes
//            } else {
//                textEditor.spellCheckingType = .no
//            }
//        }
        
        ///Reading values with specific methods
        let color = defaultValues.integer(forKey: "color")
        let colorList = [UIColor.darkGray, UIColor.gray, UIColor.lightGray]
        textEditor.textColor = colorList[color]
        
        let editable = defaultValues.bool(forKey: "editable")
        textEditor.isEditable = editable
        
        let correction = defaultValues.bool(forKey: "correction")
        if correction {
            textEditor.spellCheckingType = .yes
        } else {
            textEditor.spellCheckingType = .no
        }
    }
}

