//
//  ViewController.swift
//  CardView
//
//  Created by df on 2018/8/17.
//  Copyright © 2018年 df. All rights reserved.
//

import UIKit
import SnapKit

//frame
let kScreenHeight = UIScreen.main.bounds.size.height
let kScreenWidth = UIScreen.main.bounds.size.width
let kScreenBounds = UIScreen.main.bounds

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // MARK: init ShadowModel
        let shadowM = ShadowModel()
        shadowM.shadowRadius = 10
        shadowM.shadowColor = UIColor.black
        shadowM.shadowOpacity = 0.4
        shadowM.side = .allSide
        // MARK: init CornerModel
        let cornerM = CornerModel()
        cornerM.cornerRadius = 10
        cornerM.rectCorner = .bothTop
        let cardView = getCardView(shadowModel: shadowM, cornerModel: cornerM)
        view.addSubview(cardView)
        
        cardView.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(10)
            make.left.right.equalToSuperview()
            make.height.equalTo(kScreenWidth*0.34)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func getCardView(shadowModel:ShadowModel? = nil,cornerModel:CornerModel? = nil) -> ShadowCardView{
        let cardView = ShadowCardView(horizontal: 20, vertical: 10)
        cardView.setCornerModel(model: cornerModel)
        cardView.setShadowModel(model: shadowModel)
        let title = UILabel.init()
        title.text = "qwe"
        cardView.infoView.addSubview(title)
        title.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(10)
            make.left.equalToSuperview().offset(10)
        }
        
        return cardView
    }

}

