//
//  ViewController.swift
//  HelloWorld
//
//  Created by Yi-Sheng Hsu on 2020/6/11.
//  Copyright © 2020 Eason Hsu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    
    let emojiName = ["有著愛心的微笑表情", "喜極而泣的表情", "眨眼伸舌頭的表情", "冷笑的表情", "有著星星眼睛的表情"]
    
    // MARK: - IBOutlet
    
    @IBOutlet var emojiButton: [UIButton]!
    
    // MARK: - IBAction
    
    @IBAction func emojiPressed(_ sender: UIButton) {
                
        showAlertView(by: sender.titleLabel!.text!, with: emojiName[sender.tag])
    }
    
    
    // MARK: - View Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        for index in 0..<emojiButton.count {
            emojiButton[index].layer.cornerRadius = 10.0
        }
    }
    
    // MARK: - Custom Function
    
    func showAlertView(by title: String, with description: String) {
        
        let alertControlller = UIAlertController(title: " \(title) 表示\(description)", message: nil, preferredStyle: .alert)
        alertControlller.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alertControlller, animated: true, completion: nil)
    }
}

