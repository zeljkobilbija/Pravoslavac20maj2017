//
//  BZPravoslavniKalendar.h
//  Command Line Kalendar
//
//  Created by Zeljko Bilbija on 21/12/12.
//  Copyright (c) 2012 Zeljko Bilbija. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BZPravoslavniKalendar : NSObject
//@property(strong)NSString *stringa;
//@property(strong)NSCalendar *gregorijan;
//@property(strong)NSDate *noviDate;
//@property(strong)NSDate *stariDate;
//@property(strong)NSDateFormatter *dateFormater;
//@property(strong)NSDateComponents *comps;
//@property NSInteger redniBrojDanaUNedelji;
//@property(strong)NSDictionary *daniVaskrsauGodini;

-(NSString *)gregorijanskaGodina;
-(NSString *)julijanskaGodina;

-(BOOL)prestupnaGodinaYesNo;

-(NSString *)redniBrojDanaUGodiniNoviKalendar;
-(NSString *)redniBrojDanaUGodiniStariKalendar;

-(NSString *)redniBrojDanaUMesecuNoviKalendar;
-(NSString *)redniBrojDanaUMesecuStariKalendar;

-(NSString *)gregorijanskiShortDatum;

-(NSInteger)gregorijanskiBrojNedeljeUGodini;
-(NSInteger)julijanskiBrojNedeljeUGodini;

-(NSInteger)redniBrojNedeljeUMesecuNoviKalendar;
-(NSInteger)redniBrojNedeljeUMesecuStariKalendar;

-(NSString *)nazivMesecaNoviKalendar;
-(NSString *)nazivMesecaStariKalendar;

-(NSString *)nazivDana;
-(NSInteger)redniBrojDanaUNedeljiMethod;

-(NSDictionary *)uskrs:(NSInteger)godina;
-(BOOL)vaskrsJeNaDan;


-(BOOL)sredaPetakYesNo;

-(BOOL)bozicniPostJe;

-(BOOL)vaskrsniPostJe;

-(BOOL)petrovskiPostJe;

-(BOOL)gospojinskiPostJe;

-(NSString *)postString;

-(NSString *)meseciZaCell:(NSInteger)row;


-(NSString *)kolikoJeSati;
-(NSString *)kolikoJeMinuta;


@end
