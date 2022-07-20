//
//  ChartView.swift
//  AwesomeProject
//
//  Created by Aishwarya Rastogi on 17/07/22.
//


import UIKit
import React

class ChartView: UIView {

  @objc var status = false {
    didSet {
        self.setupView()
    }
}
 
@objc var onClick: RCTBubblingEventBlock?
 

  override init(frame: CGRect) {
    super.init(frame: frame)
    setupView()
  }
 
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    setupView()
  }
  override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    guard let onClick = self.onClick else { return }
 
    let params: [String : Any] = ["value1":"react demo","value2":1]
    onClick(params)
}
private func setupView() {
  self.backgroundColor = self.status ? .green : .red
 
  self.isUserInteractionEnabled = true
 
}
}
//   var barChartView = BarChartView()
//   @objc var xValues: [String] = []
//   @objc var yValues: [Double] = []

//   override public func layoutSubviews() {
//     super.layoutSubviews()
//     let frame = CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height)
//     barChartView.frame = frame

//     self.initChart()
//   }

//   private func initChart() {
//     var dataEntries: [BarChartDataEntry] = []

//     for i in 0..<yValues.count {
//       let dataEntry = BarChartDataEntry(x: Double(i), y: yValues[i])
//       dataEntries.append(dataEntry)
//     }

//     let chartDataSet = BarChartDataSet(entries: dataEntries, label: "Units Sold")
//     let chartData = BarChartData(dataSet: chartDataSet)
//     barChartView.xAxis.valueFormatter = IndexAxisValueFormatter(values: xValues)
//     barChartView.data = chartData
//     barChartView.animate(xAxisDuration: 2.0, yAxisDuration: 2.0)
//     self.addSubview(barChartView)
//   }
// }
