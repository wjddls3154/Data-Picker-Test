//
//  ViewController.swift
//  Data Picker Test
//
//  Created by D7702_10 on 2018. 4. 11..
//  Copyright © 2018년 jik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let timeSelector: Selector = #selector(ViewController.updateTime)
    let interval = 1.0
    var count = 0
    @IBOutlet weak var lblPickerTime: UILabel!
    @IBOutlet weak var lblCurrentTime: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
         Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)    }
    
  
    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        lblPickerTime.text = "선택시간: " + formatter.string(from: datePickerView.date)
      
    }
    @objc func updateTime() {
        //        lblCurrentTime.text = String(count)
        //        count = count + 1
        
        let date = NSDate()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        lblCurrentTime.text = "현재시간: " + formatter.string(from: date as Date)
    }
}

