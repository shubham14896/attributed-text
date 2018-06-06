//
//  ViewController.swift
//  Attributed Text Example 2
//
//  Created by Shubham Gupta on 6/6/18.
//  Copyright © 2018 Shubham Gupta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHeader()
        setupViewLabels()
    }
    
    fileprivate func setupHeader(){
        
        let labelView = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 0.0))
        
        labelView.font = UIFont.boldSystemFont(ofSize: 32)
        
        let attrText = customizeColor(string: "C", color: UIColor.red)
        attrText.append(customizeColor(string: "o", color: UIColor.orange))
        attrText.append(customizeColor(string: "l", color: UIColor.brown))
        attrText.append(customizeColor(string: "o", color: UIColor.green))
        attrText.append(customizeColor(string: "r", color: UIColor.blue))
        attrText.append(customizeColor(string: "s", color: UIColor.purple))
        labelView.attributedText = attrText
        
        self.navigationItem.titleView = labelView
    }
    
    fileprivate func setupViewLabels(){
        
        let l1AttrString = strikeThrough(string: "Strike Through")
        l1AttrString.append(customizeColor(string: "!", color: UIColor.red))
        
        let l2AttrString = shadowText(string: "Text with shadow")
        l2AttrString.append(customizeColor(string: " , Done", color: UIColor.brown))
        
        let l3AttrString = underline(string: "Text with underline")
        l3AttrString.append(customizeColor(string: " ,_____", color: UIColor.green))
        
        let l4AttrString = background(string: "Stroke + ")
        l4AttrString.append(strokeWidth(string: " Background"))
        l4AttrString.append(customizeColor(string: " !", color: UIColor.purple))
        
        label1.attributedText = l1AttrString
        label2.attributedText = l2AttrString
        label3.attributedText = l3AttrString
        label4.attributedText = l4AttrString
    }
    
    func  customizeColor(string: String, color: UIColor) -> NSMutableAttributedString {
        return NSMutableAttributedString(string: string, attributes:
            [NSAttributedStringKey.foregroundColor : color ])
    }
    
    func strikeThrough(string: String) -> NSMutableAttributedString {
        return NSMutableAttributedString(string: string, attributes:
            [NSAttributedStringKey.strikethroughStyle : 2 ])
    }
    
    func shadowText(string: String) -> NSMutableAttributedString {
        
        let shadow = NSShadow()
        shadow.shadowBlurRadius = 3
        shadow.shadowOffset = CGSize(width: 3, height: 3)
        shadow.shadowColor = UIColor.gray
        
        return NSMutableAttributedString(string: string, attributes:
            [NSAttributedStringKey.shadow : shadow ])
    }
    
    func strokeWidth(string: String) -> NSMutableAttributedString{
        return NSMutableAttributedString(string: string, attributes: [NSAttributedStringKey.strokeWidth: 2])
    }
    
    func background(string: String)-> NSMutableAttributedString {
        return NSMutableAttributedString(string: string, attributes:
            [NSAttributedStringKey.backgroundColor : UIColor.lightGray ])
    }
    
    func underline(string: String) -> NSMutableAttributedString{
        return NSMutableAttributedString(string: string, attributes:
            [NSAttributedStringKey.underlineStyle : NSUnderlineStyle.styleThick.rawValue ])
    }
    
}
