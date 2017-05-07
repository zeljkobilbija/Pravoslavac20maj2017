//
//  StariNoviKalendar.h
//  ClassMaker
//
//  Created by Zeljko Bilbija on 01/12/11.
//  Copyright (c) 2011 Bilbija. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StariNoviKalendar : NSObject

-(NSString *)danUNedeljiPoStaromKalendaru:(NSTimer *)aTimer;
-(NSString *)mesecPoStaromKalendaru:(NSTimer *)aTimer;
-(NSString *)mesecPoNovomKalendaru:(NSTimer *)aTimer;
@property (NS_NONATOMIC_IOSONLY, readonly, copy) NSString *sekundara;
@property (NS_NONATOMIC_IOSONLY, readonly, copy) NSString *sati;
@property (NS_NONATOMIC_IOSONLY, readonly, copy) NSString *minuti;
-(NSString *)datumPoNovom:(NSTimer *)aTimer;
-(NSString *)datumPoStarom:(NSTimer *)aTimer;
-(NSString *)staraGodina:(NSTimer *)aTimer;
-(NSString *)novaGodina:(NSTimer *)aTimer;
@property (NS_NONATOMIC_IOSONLY, readonly, copy) NSString *danUnedeljiPoNovom;//ovo rado OK
@property (NS_NONATOMIC_IOSONLY, readonly, copy) NSString *redniBrojDanaUGodiniNoviKalendar;
@property (NS_NONATOMIC_IOSONLY, readonly, copy) NSString *datumPoStaromNoTimer;
@property (NS_NONATOMIC_IOSONLY, readonly, copy) NSString *mesecPoStaromKalendaruNoTimer;
-(NSString *)kratakMesecPoStaromKalendaru:(NSTimer *)aTimer;
-(NSString *)redniBrojDanaUGodiniInteger:aTimer;

@end
