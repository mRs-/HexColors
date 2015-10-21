//
//  HexColorExampleViewController.m
//  HexColor Examples
//
//  Created by Marius Landwehr on 21.05.13.
//  Copyright (c) 2013 Marius Landwehr. All rights reserved.
//

#import "HexColorExampleViewController.h"
#import "HexColors.h"

@interface HexColorExampleViewController ()

@end

@implementation HexColorExampleViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)colorOne:(id)sender {
    [UIView animateWithDuration:0.3 animations:^{
        self.backgroundView.backgroundColor = [UIColor hex_colorWithHexString:@"#999999"];
    }];
}

- (IBAction)colorTwo:(id)sender {
    [UIView animateWithDuration:0.3 animations:^{
        self.backgroundView.backgroundColor = [UIColor hex_colorWithHexString:@"#334455"];
    }];
}

- (IBAction)colorThree:(id)sender {
    [UIView animateWithDuration:0.3 animations:^{
        self.backgroundView.backgroundColor = [UIColor hex_colorWithHexString:@"#ff0099"];
    }];
}

- (IBAction)color333:(id)sender {
    [UIView animateWithDuration:0.3 animations:^{
        self.backgroundView.backgroundColor = [UIColor hex_colorWithHexString:@"333"];
    }];
}

- (IBAction)color656:(id)sender {
    [UIView animateWithDuration:0.3 animations:^{
        self.backgroundView.backgroundColor = [UIColor hex_colorWithHexString:@"656"];
    }];
}

- (IBAction)color295:(id)sender {
    [UIView animateWithDuration:0.3 animations:^{
        self.backgroundView.backgroundColor = [UIColor hex_colorWithHexString:@"295"];
    }];
}
@end
