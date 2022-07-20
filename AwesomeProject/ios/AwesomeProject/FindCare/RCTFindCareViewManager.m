//
//  RCTFindCareViewManager.m
//  SwiftApp
//
//  Created by Shruthi Salian on 02/12/21.
//  Copyright © 2021 Shruthi Salian. All rights reserved.
//


#import <React/RCTViewManager.h>
#import "SwiftApp-Swift.h"

@interface RCTFindCareViewManager : RCTViewManager
@end

@implementation RCTFindCareViewManager

RCT_EXPORT_MODULE(RNTFindCare)

- (UIView *)view
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    FindCareViewController* pnViewController = [storyboard instantiateViewControllerWithIdentifier:@"FindCareViewController"];
    return pnViewController.view;
}


@end
