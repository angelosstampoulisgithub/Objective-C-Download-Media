//
//  ViewController.m
//  Objective-C-DownloadMedia
//
//  Created by Angelos Staboulis on 19/10/24.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
  
}
- (void)viewDidAppear{
    [super viewDidAppear];
    
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (IBAction)btnDownloadFile:(id)sender {
    NSTask *task = [[NSTask alloc] init];
    
    [task setLaunchPath:@"/bin/sh"];

    NSMutableString *path = [NSMutableString stringWithString:@" /opt/homebrew/bin/youtube-dl -o"];
    [path appendFormat:@" %@  %@",_txtDownloadURL.stringValue,_txtMediaURL.stringValue];

   
    NSArray *arguments = @[@"-c",path];

    
    [task setArguments:arguments];
    [task launch];
    
}
@end
