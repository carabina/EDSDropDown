//
//  ViewController.swift
//  Demo
//
//  Created by Agarwal, JitendraKumar(AWF) on 5/24/18.
//  Copyright © 2018 Agarwal, JitendraKumar(AWF). All rights reserved.
//

import UIKit
import EDSDropDown
class ViewController: UIViewController,EDSDropDownDelegate {

    var arraryItems =  [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        arraryItems = ["scrollview", "tabbar","tableview","webview","list view","page view"]
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func actionButtonSelection(_ sender: UIButton) {
        if sender.tag == 101 {
            self.noSelectionPopup(sender: sender)
            
        }else if sender.tag == 102 {
            self.singleSelectionPopup(sender: sender)
        }else {
            self.multipleSelectionPopup(sender: sender)
        }
        
        
    }
    
    // MARK:- Selection Type
    
    func noSelectionPopup(sender:UIButton) {
        //    let dropDownView =    EDSDropDown.init(frame: sender.frame, xPosition: 0, yPosition:  (sender.frame.origin.y - sender.frame.size.height) - 8, inView: self.view, data:DataItems(pdata: self.arraryItems as [AnyObject]), selectionType: .noSelection, delegate: self)
        //       self.view.addSubview(dropDownView)
        print("sender.frame \(sender.frame)")
        
        let dropDownView =  EDSDropDown.init(frame: sender.frame, xPosition: 0, yPosition: 0, inView: self.view, data: DataItems(pdata: self.arraryItems as [AnyObject]), selectionType: .noSelection, imagePosition: .noPosition, delegate: self)
        self.view.addSubview(dropDownView)
        
        
    }
    func singleSelectionPopup(sender:UIButton) {
        let dropDownView =    EDSDropDown.init(frame: sender.frame, xPosition: 0, yPosition:  (sender.frame.origin.y - sender.frame.size.height), inView: self.view, data:DataItems(pdata: self.arraryItems as [AnyObject]), selectionType: .singleSelection,imagePosition:.left, delegate: self)
        
        dropDownView.setImage(imgeType: #imageLiteral(resourceName: "tick"))
        self.view.addSubview(dropDownView)
    }
    func multipleSelectionPopup(sender:UIButton) {
        let dropDownView =    EDSDropDown.init(frame: sender.frame, xPosition: 0, yPosition:  (sender.frame.origin.y - sender.frame.size.height), inView: self.view, data:DataItems(pdata: self.arraryItems as [AnyObject]), selectionType: .multipleSelection,imagePosition:.right, delegate: self)
        dropDownView.setImage(imgeType: #imageLiteral(resourceName: "tick"))
        dropDownView.setSelectionBold(isBold: true, size: 14) //
        self.view.addSubview(dropDownView)
    }
    
    
}
// MARK:- EDSDropDownDelegate Delegate
extension ViewController {
    
    func didReceivedEDSDropDownSeletedItems(items: [AnyObject], index: Int) {
        print("Index =\(index)" +  "Items Are \(items)")
    }
    
    func didReceivedEDSDropDownSingleSeletedtems(items: [String : AnyObject], index: Int) {
        print("Index =\(index)" +  "Items Are \(items)")
    }
    
}
