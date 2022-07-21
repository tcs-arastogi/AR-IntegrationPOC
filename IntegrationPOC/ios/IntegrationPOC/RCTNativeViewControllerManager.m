//
//  RCTNativeViewControllerManager.m
//  IntegrationPOC
//
//  Created by Aishwarya Rastogi on 21/07/22.
//

#import <Foundation/Foundation.h>
#import <React/RCTViewManager.h>
#import "IntegrationPOC-Swift.h"

@interface RCTNativeViewControllerManager : RCTViewManager
@end

@implementation RCTNativeViewControllerManager

RCT_EXPORT_MODULE(RCTNativeView)

- (UIView *)view
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    NativeViewController* vc = [storyboard instantiateViewControllerWithIdentifier:@"NativeViewController"];
  return vc.view;
}


@end

