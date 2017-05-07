//
//  FebruarController.h
//  Pravoslavac
//
//  Created by Zeljko Bilbija on 10/12/11.
//  Copyright (c) 2011 Bilbija. All rights reserved.
//

#import <UIKit/UIKit.h>
@class DnevniKalendar;
@class FebruarCell;
@class JanuarCell;

@interface FebruarController : UITableViewController
@property (nonatomic, strong)NSArray *spisakSvetacaZaFebruar;
@property (nonatomic, strong)NSArray *spisakZitijaZaFebruar;
@property (nonatomic, retain) NSDictionary *dict;
@property (nonatomic, retain)IBOutlet FebruarCell *februarskiCell;
@property (nonatomic, retain) NSDictionary *spisakSvetacaDict;
@property (nonatomic, retain) NSDictionary *spisakZitijaDict;
@property (nonatomic, retain) NSDictionary *spisakIkonaMalihDict;
@property (nonatomic, retain) NSDictionary *spisakIkonaVelikihDict;
@property (nonatomic, retain)IBOutlet JanuarCell *januarskiCell;

@end
