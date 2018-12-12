//
//  ViewController.swift
//  ReusableViewsIos
//
//  Created by Subrat Gyawali on 12/10/18.
//  Copyright © 2018 Subrat Gyawali. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // First row
    @IBOutlet weak var total: TestView!
    @IBOutlet weak var active: TestView!
    @IBOutlet weak var inactive: TestView!
    @IBOutlet weak var onLeave: TestView!
    
    //Second row
    @IBOutlet weak var orderSynced: TestView!
    @IBOutlet weak var timeSpendOnRoute: TestView!
    @IBOutlet weak var timeSpendOnCall: TestView!
    
    //Third row
    @IBOutlet weak var scheduledCall: TestView!
    @IBOutlet weak var remainingCall: TestView!
    @IBOutlet weak var offRouteCall: TestView!
    
    //productivity
    @IBOutlet weak var productivity: CustomView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        populateRecords()
    }


    func populateRecords() {
        populateFirstRow()
        populateSecondRow()
        populateProductivity()
    }
    
    func populateFirstRow() {
        total.labelText.text = "Total"
        total.labelValue.text = "7"
        active.labelText.text = "Active"
        active.labelValue.text = "5"
        inactive.labelText.text = "Inactive"
        inactive.labelValue.text = "1"
        onLeave.labelText.text = "OnLeave"
        onLeave.labelValue.text = "1"
    }
    
    func populateSecondRow() {
        orderSynced.labelText.text = "Orders Synced"
        orderSynced.labelValue.text = "15"
        timeSpendOnRoute.labelText.text = "Time spend on route"
        timeSpendOnRoute.labelValue.text = "15"
        timeSpendOnCall.labelText.text = "Time spend on calls"
        timeSpendOnCall.labelValue.text = "15"
    }
    
    func populateProductivity() {
        productivity.successfulValue.text = "11"
        productivity.unSuccessfulValue.text = "4"
        productivity.setupPieChart(percent: 80.0)
    }
}

