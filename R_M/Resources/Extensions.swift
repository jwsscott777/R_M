//
//  Extensions.swift
//  R_M
//
//  Created by JWSScott777 on 12/28/22.
//

import UIKit

extension UIView {
    func addSubViews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
