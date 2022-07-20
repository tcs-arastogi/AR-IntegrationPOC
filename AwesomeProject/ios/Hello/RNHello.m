//
//  RNHello.m
//  AwesomeProject
//
//  Created by Aishwarya Rastogi on 15/07/22.
//

#import "RNHello.h"
#import <React/RCTLog.h>
@implementation RNHello

// To export a module named RCTCalendarModule
RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(createCalendarEvent:(NSString *)name location:(NSString *)location)
{
 RCTLogInfo(@"Pretending to create an event %@ at %@", name, location);
}

//RCT_EXPORT_BLOCKING_SYNCHRONOUS_METHOD(getName)
//{
//return [[UIDevice currentDevice] name];
//}
@end
