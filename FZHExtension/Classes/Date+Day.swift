//
//  Date+Day.swift
//  FZHExtension
//
//  Created by 冯志浩 on 2018/8/30.
//  处理以天的单位

import Foundation

extension Date {
    public var fzh_yesterday: Date {
        return Calendar.current.date(byAdding: .day, value: -1, to: noon)!
    }
    
    public var fzh_tomorrow: Date {
        return Calendar.current.date(byAdding: .day, value: 1, to: noon)!
    }
    
    public var noon: Date {
        return Calendar.current.date(bySettingHour: 12, minute: 0, second: 0, of: self)!
    }
    
    public var fzh_isWeekend: Bool {
        let cal = Calendar.current
        let compon = cal.dateComponents([.day,.weekday], from: self)
        if compon.weekday! == 1 || compon.weekday == 6 {
            return true
        }
        return false
    }
    
    public func fzh_dayIsWeekend(byDate dateStr: String, dateFormat: String) -> Bool {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = dateFormat
        dateFormatter.locale = Locale(identifier: "zh_CN")
        let date = dateFormatter.date(from: dateStr)
        
        let cal = Calendar.current
        let compon = cal.dateComponents([.day,.weekday], from: date!)
        if compon.weekday == 1 || compon.weekday == 7 {
            return true
        }
        return false
    }
    
    public func fzh_string(byFormatter formatter: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = formatter
        return dateFormatter.string(from: self)
    }
}
