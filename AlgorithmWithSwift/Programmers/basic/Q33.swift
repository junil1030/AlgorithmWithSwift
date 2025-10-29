//
//  Q33.swift
//  AlgorithmWithSwift
//
//  Created by 서준일 on 10/29/25.
//

import Foundation

func solution(_ chicken:Int) -> Int {
    var coupon = 0
    var total = 0
    
    coupon = chicken / 10 + chicken % 10 // coupon: 108 + 1
    total = chicken / 10 // 108
    while coupon >= 10 {
        let chickenForCoupon = coupon / 10
        total += chickenForCoupon // total: 108 + 10
        coupon %= 10 // coupon: 9
        if chickenForCoupon >= 1 { // 쿠폰으로 먹은 치킨이 1개가 넘을 경우
            coupon += chickenForCoupon // coupon: 10
        }
    }
    
    return total
}
