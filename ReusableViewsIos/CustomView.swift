//
//  CustomView.swift
//  ReusableViewsIos
//
//  Created by Subrat Gyawali on 12/10/18.
//  Copyright © 2018 Subrat Gyawali. All rights reserved.
//

import UIKit
import Charts

class CustomView: UIView , ChartViewDelegate{

    @IBOutlet var contentView: UIView!
    @IBOutlet weak var pieChart: PieChartView!
    
    @IBOutlet weak var successfulValue: UILabel!
    @IBOutlet weak var unSuccessfulValue: UILabel!
    @IBOutlet weak var percentValue: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    
        pieChart.delegate = self
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    private func commonInit(){
        Bundle.main.loadNibNamed("CustomView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = bounds
        contentView.autoresizingMask = [.flexibleHeight,.flexibleWidth]
        setupPieChart(percent : 0.0)
        
    }
    
    
    func setupPieChart(percent: Float) {
        percentValue.text = "\(percent)%"
        
        pieChart.chartDescription?.enabled = false
        pieChart.drawHoleEnabled = true
        pieChart.rotationAngle = 270
        pieChart.rotationEnabled = false
        pieChart.isUserInteractionEnabled = false
        
        pieChart.legend.enabled = false
        
        var entries: [PieChartDataEntry] = Array()
        entries.append(PieChartDataEntry(value: Double(percent)))
        entries.append(PieChartDataEntry(value: Double(100.0 - percent)))
        
        
        let dataSet = PieChartDataSet(values: entries, label: "")
        
        let c1 = NSUIColor(hex: 0xFF23AD)
        let c2 = NSUIColor(hex: 0xFAFAFA)
        
        dataSet.colors = [c1,c2]
        dataSet.drawValuesEnabled = false
        pieChart.data = PieChartData(dataSet: dataSet)
        }
    
}
