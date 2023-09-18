//
//  ViewController.m
//  test
//
//  Created by 蒋海阳 on 2023/8/2.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (IBAction)lower:(id)sender {
    NSString *origin =  [_textField stringValue];
    NSString *lower = [origin lowercaseString];
    [_resultField setStringValue:lower];
}

- (IBAction)upper:(id)sender {
    NSString *origin =  [_textField stringValue];
    NSString *upper = [origin uppercaseString];
    [_resultField setStringValue:upper];
}
@end
