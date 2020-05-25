//
//  Keyboard.h
//  MyKeyboard
//
//  Created by Carlos Mayers on 5/16/20.
//  Copyright © 2020 CTM Ventures Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Keyboard : UIView


//Delete key
@property (weak, nonatomic) IBOutlet UIButton *deleteKey;

@property (weak, nonatomic) IBOutlet UIButton *shiftKey;

@property (weak, nonatomic) IBOutlet UIButton *globeKey;

@property (weak, nonatomic) IBOutlet UIButton *spaceKey;

@property (weak, nonatomic) IBOutlet UIButton *returnKey;

@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *keysArray;

@property (weak, nonatomic) IBOutlet UIButton *qKey;

@end

NS_ASSUME_NONNULL_END
