//
//  ViewController.h
//  test
//
//  Created by 蒋海阳 on 2023/8/2.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController
- (IBAction)upper:(id)sender;
- (IBAction)lower:(id)sender;
@property (weak) IBOutlet NSTextField *resultField;

@property (weak,readwrite) IBOutlet NSTextField *textField;

@end

