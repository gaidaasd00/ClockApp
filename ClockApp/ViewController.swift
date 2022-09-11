//
//  ViewController.swift
//  ClockApp
//
//  Created by Алексей Гайдуков on 11.09.2022.
//

import UIKit

class ViewController: UIViewController {
    // MARK: IBOutlet
    @IBOutlet weak var timeLable: UILabel!
    @IBOutlet weak var dateLable: UILabel!
    
    private let months:[String] = [
        "January",
        "February",
        "March",
        "April",
        "May",
        "June",
        "July",
        "August",
        "September",
        "October",
        "November",
        "December"
    ]
                                            
                                    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startTime()
    }
    
    
    private func startTime() {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { [unowned self] _ in
            let date = Date()
            let dataFormatter = DateFormatter()
            dataFormatter.dateFormat = "hh:mm:ss a"
            let currentTime = dataFormatter.string(from: date)
            
            //date
            dataFormatter.dateFormat = "dd/MM/yyyy"
            let currentDate = dataFormatter.string(from: date)
         
            dateLable.text = currentDate
            timeLable.text = currentTime
        }
    }
}

