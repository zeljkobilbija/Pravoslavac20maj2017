//
//  Molitvenik.m
//  Pravoslavac
//
//  Created by Zeljko Bilbija on 15/12/11.
//  Copyright (c) 2011 Bilbija. All rights reserved.
//

#import "Molitvenik.h"
#import "DnevniKalendar.h"


@interface Molitvenik()

@property (nonatomic, strong) NSArray *vrsteMolitvi;
@property (nonatomic, strong) NSArray *tekstMolitvi;


@end







@implementation Molitvenik

//@synthesize vrsteMolitvi = _vrsteMolitvi;
//@synthesize tekstMolitvi = _tekstMolitvi;


-(void)setUp{
    self.title = @"Молитве";
    UITabBarItem *item = [[UITabBarItem alloc] initWithTitle:@"Молитве" image:[UIImage imageNamed:@"person.png"] tag:0];
    self.tabBarItem = item;
    
    [item release];
    
}


- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [self setUp];
        
        
    }
    return self;
}






- (instancetype)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
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
    
    self.tableView.rowHeight = 115.0;
    self.view.backgroundColor =  [UIColor blackColor];
    
    
    
    self.vrsteMolitvi = @[@"Оче наш",@"Символ Вере",@"Псалам 50",@"Јутарња молитва",@"Свакодневна Молитва",@"Молитва Пресветој Богородици у невољи и потиштености",@"Молитва Анђелу Чувару",@"Вечерња Молитва",@"Молитва Мајци Божијој",@"Молитва пред Свето Причешће",@"Молитва после Светог Причешћа",@"Молитва за болесне",@"Десет Божијих Заповести",@"Две највеће Христове Заповести"];
    
    self.tekstMolitvi = @[@"ОЧЕ НАШ, који си на Небесима\nДа се свети име Твоје\nДа дође Царство Твоје\nДа буде Воља Твоја\nИ на земљи као што је на Небесима\nХлеб наш насушни дај нам данас\nИ опрости нам дугове наше\nКао што и ми опраштамо дужницима својим\nИ не уведи нас у искушења\nНо избави нас од злога\nЈер је Твоје Царство и Сила и Слава\nСада и увек и у векове векова.",@"Верујем у једнога Бога Оца, Сведржитеља, Творца неба и земље и свега видљивог и невидљивог.\n\nИ у једнога Господа Исуса Христа, Сина Божијег, Јединородног, рођеног од Оца пре свих векова, Светлост од Светлости, Бога истинитог од Бога истинитог, рођеног не створеног, једносуштног Оцу, кроз кога је све постало;\n\nКоји је ради нас људи и ради нашега спасења сишао с небеса и оваплотио се од Духа Светог и Марије Дјеве и постао човек;\n\nИ Који је распет за нас у време Понтија Пилата, и страдао и погребен;\n\nИ Који је васкрсао у трећи дан по Писму;\n\nИ Који се узнео на небеса и седи с десне стране Оца;\n\nИ Који ће опет доћи са славом да суди живима и мртвима, и Његовом Царству неће бити краја.\n\nИ у Духа Светог, Господа, Животворног, Који од Оца исходи, Који се заједно са Оцем и Сином обожава и слави, Који је говорио кроз пророке.\n\nУ једну, свету, саборну и апостолску Цркву.\n\nИсповедам једно крштење за отпуштење грехова.\n\nЧекам васкрсење мртвих.\n\nИ живот будућег века. Амин.",@"Помилуј ме, Боже, по великој милости Својој и по обиљу милосрђа Свога очисти безакоње моје. Опери ме добро од безакоња мога и од греха мога очисти ме. Јер безакоње своје ја знам и грех је мој стално преда мном. Теби јединоме сагреших, и зло пред Тобом учиних, а Ти си праведан у речима Својим и чист у суду Своме. Гле, у безакоњима се зачех и у гресима роди ме мати моја. Гле, истину љубиш, и јављаш ми непознатости и тајности премудрости Своје. Покропи ме исопом и очистићу се; умиј ме и бићу бељи од снега. Дај ми да слушам радост и весеље, да се прену кости потрвене. Одврати Лице Своје од грехова мојих, и сва безакоња моја очисти. Срце чисто сагради у мени, Боже, и дух бодар обнови у утроби мојој. Не одгурни ме од Лица Твога, и Духа Твога Светог не одузми од мене. Дај ми радост спасења Твога, и духом владалачким утврди ме. Научићу безаконике путевима Твојим, и безбожници ће се обратити Теби. Избави ме од крви, Боже, Боже спасења мога; обрадоваће се језик мој правди Твојој. Господе, отвори уста моја и она ће казивати славу Твоју. Јер да си хтео жртве, ја бих Ти принео; за жртве паљенице не мариш. Жртва је Богу дух скрушен; срце скрушено и смерно Бог неће одбацити. По доброти Својој, Господе, чини добро Сиону, и нека се подигну зидови јерусалимски. Тада ће ти бити миле жртве правде, приноси и жртве паљенице. Тада ће метати на жртвеник Твој теоце.",@"Уставши од сна, благодарим Ти, Света Тројице, што се због своје велике доброте и дуготрпељивости ниси разљутила на мене ленога и грешнога, нити ме погубила због безакоња мојих, него си показала Своје уобичајено човекољубље и подигла мене који сам лежао несвесно, да Ти јутрењујем и славим моћ Твоју. И сада просвети моје духовне очи, отвори моја уста да се поучавам речима твојим и разумем заповести Твоје и творим вољу Твоју и певам Теби у срдачном исповедању и славим пресвето име Твоје, Оца и Сина и Светога Духа, сада и увек и у векове векова. Амин.",@"Господе дај ми да мирно примим све што ми донесе данашњи дан, и да се потпуно предам Твојој светој вољи. Упућуј ме и помажи свакога часа у току овога дана. Било какве вести да добијем, научи ме да их примим мирно и с чврстим уверењем да све бива по Твојој светој вољи. Управљај мојим мислима и осећањима и у свим делима и речима. Не допусти да у непредвиђеним случајевима заборавим да све долази од Тебе. Научи ме да се правилно односим према својим родитељима и својим ближњима, да никог не разгњевим и ожалостим. Господе дај ми снаге да поднесем замор данашњег дана и све што се у току дана догоди. Управљај мојом вољом и научи ме да се молим, да верујем, да се надам, да трпим, да праштам и волим. Амин.",@"Преподобна Царице моја, Пресвета надо моја, уточиште сиротих, заштитнице путника, помоћнице онима који су у беди и заштито оних које злостављају. Види моју невољу, види моју муку. Са свих страна сам опкољен искушењем, а нема никог да ме брани, Ти ми сама помогни јер сам немоћан. Нахрани ме као странца, упута ме као заблуделог, излечи ме и спаси као безнадежног. Немам друге помоћи ни друге заштите, ни утехе осим Тебе, о, Мајко свих невољних и оптерећених. Стога, погледај на мене грешног и потиштеног, закрили ме Пресветим покровом својим да бих се избавио од зала која су ме опколила и ја ћу увек славити преславно име Твоје. Амин!",@"Анђеле Христов, чувару мој свети, и заштитниче душе и тела мога, опрости ми све што сагреших у данашњи дан, и избави ме од свакога непријатељског ми противника да не бих никаквим грехом разгњевио Бога мог, но моли се за мене грешног и недостојног слугу да ме покажеш достојна доброте и милости Свесвете Тројице, и матере Господа мога Исуса Христа, и свих Светих. Амин.",@"Боже вечни и Царе сваког створења који си ме удостојио да доживим до овога часа, опрости ми грехе које учиних овога дана делом, речју и мислима. И очисти Господе, смирену душу моју од сваке прљавштине тела и духа. И дај ми, Господе, да ми сан ове ноћи прође у миру да бих уставши са скромне постеље, угађао пресветом имену Твом, у све дане живота мога, и победио све телесне и бестелесне непријатеље који војују на мене. И избави ме, Господе, од сујетних помисли и рђавих жеља које ме прљају. Јер је Твоје царство, и сила, и слава Оца и Сина и Светога Духа, сада и увек у векове векова. Амин.",@"Прими свеблагомоћна, Пречиста Владичице Богородитељко, часне дарове. И теби јединој прикладне, од нас недостојних слугу Твојих; од свих покољења изабрана, која си се од свих створења небеских и земаљских узвишенија јавила, светија од херувима, и од серафима славнија, од памтивијека скривена тајна, и анђелима непозната, која си од анђела радост примила!\n\nКоју похвалу да ти принесемо, Пречиста? Како да те назовемо, Богородице?\n\nЈер Пророчких ријечи сагласје слушали смо ми о Теби, анђелско стајање пред Тобом [гледали] са страхом и трепетом, чедно [родивши (зачелом)], јер носиш тијело човјечје [примившега] и оног који носи све и сва, и који је проповиједи свих светих о теби испунио. Владичице, не презри мало мољење моје, сагријешисмо, да не погинемо.\n\nТи си заступница роду човјечијем, јер си родом милостива и која си милостивога родила. Пречисте усне отвори и милостивом молитвом умоли Га за нас.\n\nТи која си чистија од сунца и која си засијала да нас огријеш, нас који сједимо у тами, Твоје најмилостивије заступништво пред Њега стављамо, да нас пречистим Твојим молитвама избави оне грозне и страшне муке у Дан његовог [другог] Доласка.",@"Верујем, Господе, и исповедам да си Ти заиста Христос, Син Бога живога, Који си дошао у свет да грешнике спасеш, од којих сам први ја. Још вјерујем да је ово само пречисто Тело Твоје, и ова сама пречасна Крв Твоја. Стога Ти се молим: помилуј ме, и опрости ми сагрешења моја хотимична и нехотимична, учињена речју и делом, свесно и несвесно, и удостој ме да се неосуђено причестим пречистим тајнама Твојим на отпуштање грехова и на живот вечни. Прими ме данас, Сине Божији, за причасника Тајне Вечере Твоје, јер нећу казати Тајну непријатељима Твојим, нити ћу Ти дати целив као Јуда, већ као покајани разбојник исповедам Те: сети ме се Господе, у Царству Твоме. Да ми причешћивање Твојим Светим Тајнама, Господе, не буде на суд или осуду, него на исцељење душе и тела. Амин.",@"Твоје свето Тело, Господе Исусе Христе Боже наш, нека ми буде на живот вечни, и пречасна крв Твоја на отпуштење грехова. Нека ми ово причешће буде на радост, здравље и весеље; и на Твом страшном другом доласку удостоји ме грешника да станем с десне стране славе Твоје, заступништвом пречисте Матере Твоје и свих светих твојих.",@"Владико Сведржитељу, Свети Царе, Који уразумљујеш и не усмрћујеш, Који клецајуће утврђујеш и оборене усправљаш и телесне муке човекове отклањаш, молимо се Теби, Боже наш, слугу Свога (име болесника) који болује, посети милошћу Својом. опрости му свако сагрешење вољно и невољно. О, Господе, излечујући силу Своју са Небеса пошаљи, прикосни се тела његова, угаси грозницу, укроти страст и сваку болест која се крије у њему, буди Лекар слуге Свога (име болесника) подигни га са постеље болесничке и са одра страдања његовог и даруј га исцељеног Цркви Својој, да благоугађа Теби и твори вољу Твоју. Јер Твоје је да нас милујеш и спашаваш, Боже наш, и Теби славу узносимо Оцу и Сину и Светоме Духу, сада и свагда и у векове векова. Амин.",@"1. Ја сам Господ Бог Твој, немој имати других богова осим мене,\n\n2. Не прави себи идола нити каква лика, немој им се клањати нити им служити.\n\n3. Не узимај узалуд имена Господа Бога свога.\n\n4. Сећај се дана одмора да га светкујеш; шест дана ради и сврши све своје послове, а седми дан је одмор Господу Богу твоме.\n\n5. Поштуј оца свога и матер своју, да ти добро буде и да дуго поживиш на земљи.\n\n6. Не убиј.\n\n7. Не чини прељубе.\n\n8. Не кради.\n\n9 Не сведочи лажно на ближњега свога.\n\n10. Не пожели ништа што је туђе.",@"1. Љуби Господа Бога свога свим срцем својим, свом душом својом, свим умом својим и свом снагом својом.\n\n2. Љуби ближњега свога као самога себе."];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    self.vrsteMolitvi = nil;
    self.tekstMolitvi = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return (self.vrsteMolitvi).count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
    // Configure the cell...
    cell.backgroundColor = [UIColor blackColor];
    cell.selectionStyle = UITableViewCellSelectionStyleGray;
    cell.textLabel.font = [UIFont systemFontOfSize:18.0f];
    cell.textLabel.text = (self.vrsteMolitvi)[indexPath.row];
    cell.textLabel.textColor = [UIColor colorWithRed:1.000 green:0.800 blue:0.400 alpha:1.000];
    cell.imageView.image = [UIImage imageNamed:@"nikaBeli.png"];
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     [detailViewController release];
    
     */
    
    DnevniKalendar *dnevniKalendar = [[DnevniKalendar alloc] initWithNibName:@"DnevniKalendar" bundle:nil];
    dnevniKalendar.title = @"Молитва";
        // dnevniKalendar.imeSceca.text = [self.spisakSvetacaZaJanuar objectAtIndex:indexPath.row];
    dnevniKalendar.svetac = (self.vrsteMolitvi)[indexPath.row];
    
    
    dnevniKalendar.bojaTextaSveca = [UIColor colorWithRed:1.000 green:0.800 blue:0.400 alpha:1.000];
    
    dnevniKalendar.title = (self.vrsteMolitvi)[indexPath.row];
    dnevniKalendar.zitijeSvecaStringa = (self.tekstMolitvi)[indexPath.row];
    dnevniKalendar.ikonaa = [UIImage imageNamed:@"copia.png"];
    [self.navigationController pushViewController:dnevniKalendar animated:YES];
    [dnevniKalendar release];

}


- (void)dealloc {
    [_vrsteMolitvi release];
    [_tekstMolitvi release];
    [super dealloc];
}

@end
