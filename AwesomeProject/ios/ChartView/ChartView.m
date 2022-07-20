//
//  ChartView.m
//  AwesomeProject
//
//  Created by Aishwarya Rastogi on 18/07/22.
//

#import <Foundation/Foundation.h>
#import <React/RCTBridgeModule.h>
#import <React/RCTViewManager.h>

@interface RCT_EXTERN_MODULE(RCTChartViewManager, RCTViewManager)
RCT_EXPORT_VIEW_PROPERTY(status, BOOL)
RCT_EXPORT_VIEW_PROPERTY(onClick, RCTBubblingEventBlock)
 
@end
