//
//  NativeOpenPageModule.m
//  AwesomeProject
//
//  Created by Aishwarya Rastogi on 20/07/22.
//

#import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
#import "React/RCTBridgeModule.h"
#import "React/RCTEventEmitter.h"

@interface RCT_EXTERN_MODULE(NativeOpenPageModule, RCTEventEmitter)
    RCT_EXTERN_METHOD(navigateToLandingPage:(NSString)value)
@end

