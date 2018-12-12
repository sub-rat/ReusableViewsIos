//
//  TestView.swift
//  ReusableViewsIos
//
//  Created by Subrat Gyawali on 12/10/18.
//  Copyright © 2018 Subrat Gyawali. All rights reserved.
//

import UIKit

class TestView: UIView {

    @IBOutlet var contentView: UIView!
    @IBOutlet weak var labelValue: UILabel!
    @IBOutlet weak var labelText: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit(){
        Bundle.main.loadNibNamed("TestView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = bounds
        contentView.autoresizingMask = [.flexibleHeight,.flexibleWidth]
    }
    
    

}
