//
//  DnevniKalendar.h
//  Pravoslavac
//
//  Created by Zeljko Bilbija on 08/12/11.
//  Copyright (c) 2011 Bilbija. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DnevniKalendar : UIViewController
@property (nonatomic, strong) IBOutlet UILabel *imeSceca;
@property (copy) NSString *svetac;
@property (nonatomic, strong) IBOutlet UITextView *zitijeSveca;
@property (copy)NSString *zitijeSvecaStringa;
@property (retain, nonatomic) IBOutlet UIImageView *ikonaSveca;
@property (retain, nonatomic) UIImage *ikonaa;
@property (retain, nonatomic) UIColor *bojaTextaSveca;

@end
