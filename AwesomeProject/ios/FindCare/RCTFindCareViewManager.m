

#import <React/RCTViewManager.h>
#import <React/RCTBridgeModule.h>
#import "FindCareViewController.swift"

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
