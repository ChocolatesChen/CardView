#  ShadowCardView


```
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
        
	let cardView = ShadowCardView(horizontal: 20, vertical: 10)
	// CornerModel and ShadowModel are optional!
	cardView.setCornerModel(model: cornerM)
	cardView.setShadowModel(model: shadowM)
	let title = UILabel.init()
	title.text = "qwe"
	cardView.infoView.addSubview(title)
	title.snp.makeConstraints { (make) in
		make.top.equalToSuperview().offset(10)
		make.left.equalToSuperview().offset(10)
	}
	view.addSubview(cardView)
```

![image](https://github.com/ChocolatesChen/CardView/blob/master/show.png)