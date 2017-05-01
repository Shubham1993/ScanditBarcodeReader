//
//  ViewController.h
//  ScanditBarcodeReader
//
//  Created by Shubham on 01/05/17.
//  Copyright © 2017 Shubham. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <ScanditBarcodeScanner/ScanditBarcodeScanner.h>

@interface ViewController : UIViewController<SBSScanDelegate, SBSOverlayControllerDidCancelDelegate>


@end

