//
//  UITextField+Ext.swift
//  Instakilogram
//
//  Created by 김호성 on 2024.05.24.
//

import Foundation
import UIKit
import SnapKit

class CustomTextField: UITextField {

    var lbPlaceHolder: UILabel!

    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func initialize(placeHolder: UILabel) {
        lbPlaceHolder = placeHolder
        addSubview(lbPlaceHolder)
        lbPlaceHolder.snp.makeConstraints {
            $0.leading.equalTo(self.snp.leading).offset(8)
            $0.centerY.equalTo(self.snp.centerY)
            $0.trailing.equalTo(self.snp.trailing)
        }
    }
    
    func setPlaceHolderBig() {
        lbPlaceHolder.font = UIFont.systemFont(ofSize: 14)
        lbPlaceHolder.snp.removeConstraints()
        lbPlaceHolder.snp.makeConstraints {
            $0.leading.equalTo(self.snp.leading).offset(8)
            $0.centerY.equalTo(self.snp.centerY)
            $0.trailing.equalTo(self.snp.trailing)
        }
        lbPlaceHolder.superview?.layoutIfNeeded()
    }
    func setPlaceHolderSmall() {
        lbPlaceHolder.font = UIFont.systemFont(ofSize: 8)
        lbPlaceHolder.snp.removeConstraints()
        lbPlaceHolder.snp.makeConstraints {
            $0.leading.equalTo(self.snp.leading).offset(8)
            $0.top.equalTo(self.snp.top).offset(1)
            $0.trailing.equalTo(self.snp.trailing)
        }
        lbPlaceHolder.superview?.layoutIfNeeded()
    }
}
