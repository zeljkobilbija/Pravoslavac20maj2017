//
//  JanuarCell.m
//  Pravoslavac
//
//  Created by Bilbija Zeljko on 25/12/11.
//  Copyright (c) 2011 Bilbija. All rights reserved.
//

#import "JanuarCell.h"

@implementation JanuarCell
@synthesize ikona;
@synthesize svetac;
@synthesize stariDatum;
@synthesize noviDatum;
@synthesize danUNedelji;

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)dealloc {
    [ikona release];
    [svetac release];
    [stariDatum release];
    [noviDatum release];
    [danUNedelji release];
    [super dealloc];
}
@end
