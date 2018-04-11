//
//  ViewController.swift
//  Data Picker Test
//
//  Created by D7702_10 on 2018. 4. 11..
//  Copyright © 2018년 jik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myDatePicker: UIDatePicker!
    @IBOutlet weak var timeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func changeDatePicker(_ sender: Any) {
        print("change Date Picker")
        //        print(myDatePicker.date)
        
        // dateFormat
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss a EE"
        timeLabel.text = formatter.string(from: myDatePicker.date)
        
        //        timeLabel.text = String(describing: myDatePicker.date)    }
    }
    
}

