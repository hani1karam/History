//
//  ViewController.swift
//  History
//
//  Created by hany karam on 5/15/21.
//

import UIKit
import FSCalendar

class ViewController: UIViewController,FSCalendarDelegate {
    @IBOutlet weak var calender: FSCalendar!
    var history:String?
    var calendar = FSCalendar()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        calender.delegate = self
    }
    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
        let foramtter = DateFormatter()
        foramtter.dateFormat = "YYYY-MM-dd"
        let string = foramtter.string(from:date)
        print("\(string)")
        history = string
        print("history",history ?? "")

    }


}

