

#import <React/RCTViewManager.h>
#import <React/RCTBridgeModule.h>
#import "AwesomeProject-Swift.h"

@interface RCTFindCareViewManager : RCTViewManager
@end

@implementation RCTFindCareViewManager

RCT_EXPORT_MODULE()

- (UIView *)view
{
  UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
  FindCareViewController *pnViewController = [storyboard instantiateViewControllerWithIdentifier:@"FindCareViewController"];
  
    return pnViewController.view;
}


@end
