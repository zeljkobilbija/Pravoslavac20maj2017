//
//  JulController.h
//  Pravoslavac
//
//  Created by Zeljko Bilbija on 10/12/11.
//  Copyright (c) 2011 Bilbija. All rights reserved.
//

#import <UIKit/UIKit.h>
@class JanuarCell;

@interface JulController : UITableViewController
@property (nonatomic, strong)NSArray *spisakSvetacaZaJul;
@property (nonatomic, strong)NSArray *spisakZitijaZaJul;
@property (nonatomic, retain)IBOutlet JanuarCell *januarskiCell;
@end
