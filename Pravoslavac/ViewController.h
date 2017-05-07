//
//  ViewController.h
//  oooooooooo
//
//  Created by Zeljko Bilbija on 01/12/11.
//  Copyright (c) 2011 Bilbija. All rights reserved.
//

#import <UIKit/UIKit.h>



@class StariNoviKalendar;

@interface ViewController : UIViewController

@property (retain, nonatomic) IBOutlet UILabel *satLabel;

@property(nonatomic,retain)StariNoviKalendar *kalendar;//
@property (retain, nonatomic) IBOutlet UILabel *dan;//
@property (retain, nonatomic) NSTimer *aTimer;//
@property (retain, nonatomic) IBOutlet UILabel *mesecStari;//
@property (retain, nonatomic) IBOutlet UILabel *datumNovi;//
@property (retain, nonatomic) IBOutlet UILabel *stariDatum;//
@property (retain, nonatomic) IBOutlet UILabel *mesecNovi;//
@property (retain, nonatomic) IBOutlet UILabel *godinaNova;//
@property (retain, nonatomic) IBOutlet UILabel *godinaStara;//
@property (retain, nonatomic) IBOutlet UILabel *redniBrojDanaUGodini;//
@property (retain, nonatomic) NSArray *januarskiSveci;//
@property (retain, nonatomic) IBOutlet UILabel *danasnjiSvetac;//
@property (retain, nonatomic) NSArray *decembarskiSvetci;//
@property (retain, nonatomic)NSArray *februarskiSvetci;//
@property (retain, nonatomic)NSArray *martovskiSvetci;//
@property (retain, nonatomic)NSArray *aprilskiSvetci;//
@property (retain, nonatomic)NSArray *majskiSvetci;//
@property (retain, nonatomic)NSArray *junskiSvetci;//
@property (retain, nonatomic)NSArray *julskiSvetci;//
@property (retain, nonatomic)NSArray *avgustovskiSvetci;//
@property (retain, nonatomic)NSArray *septembarskiSvetci;//
@property (retain, nonatomic)NSArray *oktobarskiSvetci;//
@property (retain, nonatomic)NSArray *novembarskiSvetci;//
@property (retain, nonatomic) IBOutlet UILabel *postLabel;
@property (retain,nonatomic) NSArray *svetciCrvenaSlova;
@property (retain, nonatomic) IBOutlet UIImageView *ikonaSvetca;
@property (retain, nonatomic)NSDictionary *svetciJanuar;
@property (retain, nonatomic)NSDictionary *svetciFebruar;
@property (retain, nonatomic)NSDictionary *svetciMart;
@property (retain, nonatomic)NSDictionary *svetciApril;
@property (retain, nonatomic)NSDictionary *svetciMaj;
@property (retain, nonatomic)NSDictionary *svetciJun;
@property (retain, nonatomic)NSDictionary *svetciJul;
@property (retain, nonatomic)NSDictionary *svetciAvgust;
@property (retain, nonatomic)NSDictionary *svetciSeptembar;
@property (retain, nonatomic)NSDictionary *svetciOktobar;
@property (retain, nonatomic)NSDictionary *svetciNovembar;
@property (retain, nonatomic)NSDictionary *svetciDecembar;
@property (retain, nonatomic)NSDate *sada;

@end
