//
//  decambarController.h
//  Pravoslavac
//
//  Created by Zeljko Bilbija on 09/12/11.
//  Copyright (c) 2011 Bilbija. All rights reserved.
//

#import <UIKit/UIKit.h>
@class StariNoviKalendar;
@class JanuarCell;
@interface DecembarController : UITableViewController


@property (nonatomic, strong)NSArray *spisakSvetacaZadecembar;
@property (nonatomic, strong)NSArray *spisakZitijaZaDecembar;
@property (nonatomic, retain) NSDictionary *dict;

@property (nonatomic, retain)IBOutlet JanuarCell *januarskiCell;

@end
