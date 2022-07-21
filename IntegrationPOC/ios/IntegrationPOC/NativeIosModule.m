//
//  NativeIosModule.m
//  IntegrationPOC
//
//  Created by Aishwarya Rastogi on 21/07/22.
//


#import <Foundation/Foundation.h>
#import "React/RCTBridgeModule.h"
#import "React/RCTEventEmitter.h"

@interface RCT_EXTERN_MODULE(NativeIosModule, RCTEventEmitter)
    RCT_EXTERN_METHOD(navigateToNativePage:(NSString)value)
@end

