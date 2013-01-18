//
//  sampleViewController.m
//  Glyphs
//
//  Created by 今村 泰彦 on 13/01/16.
//  Copyright (c) 2013年 Yasuhiko Imamura. All rights reserved.
//

#import "sampleViewController.h"

@interface sampleViewController ()

@end

@implementation sampleViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSURLRequest* req = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://glyphs.jp"]];
    [webView loadRequest:req];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload { }
// web を解放
- (void)dealloc {
    webView.delegate = nil; }
@end
