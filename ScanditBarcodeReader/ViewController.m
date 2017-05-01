//
//  ViewController.m
//  ScanditBarcodeReader
//
//  Created by Shubham on 01/05/17.
//  Copyright © 2017 Shubham. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)barcodePicker:(SBSBarcodePicker *)picker didScan:(SBSScanSession *)session {
    NSArray *recognized = session.newlyRecognizedCodes;
    SBSCode *code = [recognized firstObject];
    // Add your own code to handle the barcode result e.g.
    NSLog(@"scanned %@ barcode: %@", code.symbologyName, code.data);
}

- (void)overlayController:(SBSOverlayController *)overlayController
      didCancelWithStatus:(NSDictionary *)status {
    // Add your own code to handle the user canceling the barcode scan process
}


- (IBAction)startScan:(id)sender {
    
    // Configure the barcode picker through a scan settings instance by defining which
    // symbologies should be enabled.
    SBSScanSettings *scanSettings = [SBSScanSettings defaultSettings];
    // prefer backward facing camera over front-facing cameras.
    scanSettings.cameraFacingPreference = SBSCameraFacingDirectionBack;
    // Enable symbologies that you want to scan
    [scanSettings setSymbology:SBSSymbologyEAN13 enabled:YES];
    [scanSettings setSymbology:SBSSymbologyUPC12 enabled:YES];
    [scanSettings setSymbology:SBSSymbologyQR enabled:YES];
    SBSBarcodePicker *picker = [[SBSBarcodePicker alloc] initWithSettings:scanSettings];
    // Set the delegate to receive scan events.
    picker.scanDelegate = self;
    // Start the scanning process.
    [picker startScanning];
    // Show the scanner. The easiest way to do so is by presenting it modally.
    [self presentViewController:picker animated:YES completion:nil];
}
@end
