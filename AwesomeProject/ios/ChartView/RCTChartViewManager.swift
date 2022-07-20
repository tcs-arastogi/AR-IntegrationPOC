//
//  ChartViewManager.swift
//  AwesomeProject
//
//  Created by Aishwarya Rastogi on 18/07/22.
//

import Foundation
import React
@objc (RCTChartViewManager)
class RCTChartViewManager :RCTViewManager{
  override static func requiresMainQueueSetup() -> Bool {
    return true
  }
  
  override func view() -> UIView! {
    return ChartView.self() as UIView?
  }
}
