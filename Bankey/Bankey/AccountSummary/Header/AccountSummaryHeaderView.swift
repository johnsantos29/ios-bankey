//
//  AccountSummaryHeaderView.swift
//  Bankey
//
//  Created by John Erick Santos on 4/5/2023.
//

import UIKit

class AccountSummaryHeaderView: UIView {
    @IBOutlet var contentView: UIView!
    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    
    let shakeBellView = ShakeyBellView()
    
    struct ViewModel {
        let welcomeMessage: String
        let name: String
        let date: Date
        
        var dateFormatted: String {
            return date.monthDayYearString
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: UIView.noIntrinsicMetric, height: 144)
    }
    
    private func commonInit() {
        let bundle = Bundle(for: AccountSummaryHeaderView.self)
        bundle.loadNibNamed("AccountSummaryHeaderView", owner: self)
        addSubview(contentView)
        contentView.backgroundColor = appColor
        
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: topAnchor),
            contentView.bottomAnchor.constraint(equalTo: bottomAnchor),
            contentView.leadingAnchor.constraint(equalTo: leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: trailingAnchor),
        ])
        
        setupShakeyBell()
    }
    
    private func setupShakeyBell() {
        shakeBellView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(shakeBellView)
        
        NSLayoutConstraint.activate([
            shakeBellView.trailingAnchor.constraint(equalTo: trailingAnchor),
            shakeBellView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
    
    func configure(viewModel: ViewModel) {
        welcomeLabel.text = viewModel.welcomeMessage
        nameLabel.text = viewModel.name
        dateLabel.text = viewModel.dateFormatted
    }
}
