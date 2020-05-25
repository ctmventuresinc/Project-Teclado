//
//  KeyboardViewController.m
//  MyKeyboard
//
//  Created by Carlos Mayers on 5/16/20.
//  Copyright © 2020 CTM Ventures Inc. All rights reserved.
//

#import "KeyboardViewController.h"
#import "Keyboard.h"

@interface KeyboardViewController ()
@property (strong,nonatomic) Keyboard *keyboard;
@end

@implementation KeyboardViewController

- (void)updateViewConstraints {
    [super updateViewConstraints];
    
    // Add custom view sizing constraints here
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Perform custom UI setup here
    self.keyboard = [[[NSBundle mainBundle] loadNibNamed:@"Keyboard" owner:nil options:nil] objectAtIndex:0 ];
    [self addGesturesToKeyboard];
    self.inputView = self.keyboard;
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
}

- (void)textWillChange:(id<UITextInput>)textInput {
    // The app is about to change the document's contents. Perform any preparation here.
}

- (void)textDidChange:(id<UITextInput>)textInput {
    // The app has just changed the document's contents, the document context has been updated.
    
    UIColor *textColor = nil;
    if (self.textDocumentProxy.keyboardAppearance == UIKeyboardAppearanceDark) {
        textColor = [UIColor whiteColor];
    } else {
        textColor = [UIColor blackColor];
    }
    
}

#pragma mark Keyboards
- (void)addGesturesToKeyboard{
    [self.keyboard.deleteKey addTarget:self action:@selector(pressDeleteKey) forControlEvents:UIControlEventTouchUpInside];
    
    [self.keyboard.shiftKey addTarget:self action:@selector(pressShiftKey) forControlEvents:UIControlEventTouchUpInside];
    
    [self.keyboard.spaceKey addTarget:self action:@selector(pressSpaceKey) forControlEvents:UIControlEventTouchUpInside];
    
    [self.keyboard.qKey addTarget:self action:@selector(pressqKey) forControlEvents:UIControlEventTouchUpInside];
    
    [self.keyboard.returnKey addTarget:self action:@selector(pressReturnKey) forControlEvents:UIControlEventTouchUpInside];
    //Change to next keyboard
    [self.keyboard.globeKey addTarget:self action:@selector(advanceToNextInputMode) forControlEvents:UIControlEventTouchUpInside];
    
    for(UIButton *key in self.keyboard.keysArray){
        [key addTarget:self action:@selector(pressKey:) forControlEvents:UIControlEventTouchUpInside];
    }
}
-(void)pressDeleteKey{
    [self.textDocumentProxy deleteBackward];
}

-(void)pressShiftKey{
    [self.textDocumentProxy autocapitalizationType];
}

-(void)pressSpaceKey{
    [self.textDocumentProxy insertText:@" "];
}

-(void)pressReturnKey{
    [self.textDocumentProxy insertText:@"\n"];
}

-(void)pressKey:(UIButton *)key{
    [self.textDocumentProxy insertText:[key currentTitle]];
}

-(void)pressqKey{
    [self.textDocumentProxy insertText:@"q"];
}



@end
