//
//  ViewController.h
//  Objective-C-DownloadMedia
//
//  Created by Angelos Staboulis on 19/10/24.
//

#import <Cocoa/Cocoa.h>
@interface ViewController : NSViewController
@property (weak) IBOutlet NSTextField *txtMediaURL;
@property (weak) IBOutlet NSTextField *txtDownloadURL;
- (IBAction)btnDownloadFile:(id)sender;


@end

