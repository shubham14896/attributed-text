//
//  ViewController.swift
//  Attributed Label
//
//  Created by Shubham Gupta on 6/6/18.
//  Copyright © 2018 Shubham Gupta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabels()
    }

    fileprivate func setupLabels(){
        
        label1.text = "Hi, I am normal label text."
        
        let attributedText = NSMutableAttributedString(string: "Hello, I am", attributes: [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 17)])
        attributedText.append(NSAttributedString(string: " Attributed Text,", attributes: [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 17), NSAttributedStringKey.foregroundColor: UIColor.blue]))
        attributedText.append(NSMutableAttributedString(string: " assigned to label.", attributes: [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 17)]))
        
        label2.attributedText = attributedText
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

