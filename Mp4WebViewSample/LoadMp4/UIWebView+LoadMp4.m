//
//  UIWebView+LoadMp4.m
//  Mp4WebViewSample
//
//  Created by ctitv on 2016/10/27.
//  Copyright © 2016年 test. All rights reserved.
//

#import "UIWebView+LoadMp4.h"

@implementation UIWebView (LoadMp4)

- (void)loadMp4FromURLString:(NSString*)urlString {
    
    [self layoutIfNeeded];
    
    NSString *videoHTML = @"<html><head></head><body style=\"margin:0\"><video width=\"%0.0f\" height=\"%0.0f\" controls><source src=\"%@\" type=\"video/mp4\"></video></body></html>";

    // Populate HTML with the URL and requested frame size
    NSString *html = [NSString stringWithFormat:videoHTML, self.frame.size.width, self.frame.size.height, urlString];
    
    // Load the html into the webview
    [self loadHTMLString:html baseURL:nil];
    
    self.backgroundColor = [UIColor blackColor];
    self.scrollView.bounces = NO;
    [self setOpaque:NO];
}

@end
