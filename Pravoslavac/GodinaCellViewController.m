//
//  GodinaCellViewController.m
//  Pravoslavac
//
//  Created by Bilbija Zeljko on 23/12/11.
//  Copyright (c) 2011 Bilbija. All rights reserved.
//

#import "GodinaCellViewController.h"

@implementation GodinaCellViewController


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

-(void)dealloc{
    
    [_ikona release];
    [_mesec release];
    [super dealloc];
}

@end
