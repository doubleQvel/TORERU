//
//  UIColorExtension.swift
//  TORERU
//
//  Created by 小嶺愛紀菜 on 2018/02/15.
//  Copyright © 2018年 Matsumoto Kazuki. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    class func rgb(r: Int, g: Int, b: Int, alpha: CGFloat) -> UIColor{
        return UIColor(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: alpha)
    }
    class func MainColor() -> UIColor {
        return UIColor.rgb(r: 24, g: 135, b: 208, alpha: 1.0)
    }
}
