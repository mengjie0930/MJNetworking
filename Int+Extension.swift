//
//  Extension+Int.swift
//  HCGongShe
//
//  Created by yue on 2018/11/20.
//  Copyright © 2018年 yue. All rights reserved.
//

import Foundation

extension Int {
    /// 将整型数值转为字符串 非四舍五入 而是截断
    func toString() -> String {
        return Double(self).toString()
    }

}


extension Double{
 
    /// 将整型数值转为字符串 四舍五入
    func toRoundedString() -> String {
        var result = Double(self)
        if self >= 10000 {
            result = Double(self) / 10000.0
        }
        let valueDecimalNumber = NSDecimalNumber(value: result)
        let decimalFormatter = NumberFormatter()
        if self > 10000 {
            decimalFormatter.maximumFractionDigits = 1
            decimalFormatter.minimumFractionDigits = 1
        } else {
            decimalFormatter.maximumFractionDigits = 0
        }
        decimalFormatter.minimumIntegerDigits = 1 //最小整数位
        return decimalFormatter.string(from: valueDecimalNumber)! + (self > 10000 ? "万" : "")
    }
}
