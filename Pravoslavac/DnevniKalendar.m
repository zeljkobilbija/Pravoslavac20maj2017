//
//  DnevniKalendar.m
//  Pravoslavac
//
//  Created by Zeljko Bilbija on 08/12/11.
//  Copyright (c) 2011 Bilbija. All rights reserved.
//

#import "DnevniKalendar.h"

@implementation DnevniKalendar
//@synthesize imeSceca= _imeSceca;
//@synthesize svetac = _svetac;
//@synthesize zitijeSveca = _zitijeSveca;
//@synthesize zitijeSvecaStringa = _zitijeSvecaStringa;
//@synthesize ikonaSveca = _ikonaSveca;
//@synthesize ikonaa = _ikonaa;
//@synthesize bojaTextaSveca = _bojaTextaSveca;

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        //[self.imeSceca setText:self.svetac];
        //[self.zitijeSveca setText:self.zitijeSvecaStringa];
        //[self.ikonaSveca setImage:self.ikonaa];
        //self.bojaTextaSveca = [UIColor  whiteColor];
        self.bojaTextaSveca = [UIColor colorWithRed:1.000 green:0.800 blue:0.400 alpha:1.000];
        self.imeSceca.font = [UIFont boldSystemFontOfSize:18.0f];
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    
     
    
    [super viewDidLoad];
    (self.imeSceca).text = self.svetac;
    (self.zitijeSveca).text = self.zitijeSvecaStringa;
    (self.ikonaSveca).image = self.ikonaa;
        //self.imeSceca.textColor = [UIColor colorWithRed:1.000 green:0.800 blue:0.400 alpha:1.000];
    
    (self.imeSceca).textColor = self.bojaTextaSveca;
  
  
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setIkonaSveca:nil];
    [super viewDidUnload];
    self.imeSceca = nil;
    self.ikonaa = nil;
    self.bojaTextaSveca = nil;
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (void)dealloc {
    [_imeSceca release];
    [_svetac release];
    [_zitijeSveca release];
    [_zitijeSvecaStringa release];
    [_ikonaSveca release];
    [_ikonaa release];
    [_bojaTextaSveca release];
    [super dealloc];
}

@end
