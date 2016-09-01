//
//  AddViewController.h
//  ObjcCrud
//
//  Created by DetroitLabs on 9/1/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddViewController : UIViewController <UITextFieldDelegate>
@property (nonatomic, copy) void (^somethingHappenedInModalVC)(NSString *response);

@end
