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

@property (weak, nonatomic) IBOutlet UIButton *deleteKey;

@property (weak, nonatomic) IBOutlet UIButton *globeKey;

@property (weak, nonatomic) IBOutlet UIButton *spaceKey;

@property (weak, nonatomic) IBOutlet UIButton *returnKey;

@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *keysArray;


@end

NS_ASSUME_NONNULL_END
