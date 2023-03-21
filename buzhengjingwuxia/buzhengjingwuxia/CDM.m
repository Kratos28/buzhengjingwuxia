//

#import "CDM.h"

@implementation CDM


static id _instance;
- (NSURL *)applicationDocumentsDirectory {

    return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
}

- (NSManagedObjectModel *)managedObjectModel {

    if (_managedObjectModel != nil) {
        return _managedObjectModel;
    }
    NSURL *modelURL = [[NSBundle mainBundle] URLForResource:@"buzhengjingwuxia" withExtension:@"momd"];
    _managedObjectModel = [[NSManagedObjectModel alloc] initWithContentsOfURL:modelURL];
    return _managedObjectModel;
}

- (NSPersistentStoreCoordinator *)persistentStoreCoordinator {

    if (_persistentStoreCoordinator != nil) {
        return _persistentStoreCoordinator;
    }
    
    
    _persistentStoreCoordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:[self managedObjectModel]];
    NSURL *storeURL = [[self applicationDocumentsDirectory] URLByAppendingPathComponent:@"buzhengjingwuxia.sqlite"];
    NSError *error = nil;
    NSString *failureReason = @"There was an error creating or loading the application's saved data.";
    if (![_persistentStoreCoordinator addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:storeURL options:nil error:&error]) {
        // Report any error we got.
        NSMutableDictionary *dict = [NSMutableDictionary dictionary];
        dict[NSLocalizedDescriptionKey] = @"Failed to initialize the application's saved data";
        dict[NSLocalizedFailureReasonErrorKey] = failureReason;
        dict[NSUnderlyingErrorKey] = error;
        error = [NSError errorWithDomain:@"YOUR_ERROR_DOMAIN" code:9999 userInfo:dict];
        NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
        abort();
    }
    
    return _persistentStoreCoordinator;
}


- (NSManagedObjectContext *)managedObjectContext
{

    if (_managedObjectContext != nil) {
        return _managedObjectContext;
    }
    
    NSPersistentStoreCoordinator *coordinator = [self persistentStoreCoordinator];
    if (!coordinator) {
        return nil;
    }
    _managedObjectContext = [[NSManagedObjectContext alloc] initWithConcurrencyType:NSPrivateQueueConcurrencyType];
    [_managedObjectContext setPersistentStoreCoordinator:coordinator];
    return _managedObjectContext;
}
+ (instancetype)allocWithZone:(struct _NSZone *)zone
{
    @synchronized(self) {
        if (_instance == nil) {
            _instance = [super allocWithZone:zone];
        }
    }
    return _instance;
}

- (void)saveContext {
    NSManagedObjectContext *managedObjectContext = self.managedObjectContext;
    if (managedObjectContext != nil) {
        NSError *error = nil;
        if ([managedObjectContext hasChanges] && ![managedObjectContext save:&error]) {
            NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
            abort();
        }
    }
}


+ (instancetype)sharedInstance
{
    @synchronized(self) {
        if (_instance == nil) {
            _instance = [[self alloc] init];
        }
    }
    return _instance;
}
- (id)copyWithZone:(NSZone *)zone
{
    return _instance;
}


@synthesize managedObjectContext = _managedObjectContext;
@synthesize managedObjectModel = _managedObjectModel;
@synthesize persistentStoreCoordinator = _persistentStoreCoordinator;


- (void)deleteAll
{
    
    {
        
        NSFetchRequest *req = [NSFetchRequest fetchRequestWithEntityName:@"P"];
        NSArray *array =  [CoreDatacontext executeFetchRequest:req error:nil];
        [array enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            [CoreDatacontext deleteObject:obj];
        }];
        saveCoreDataContext;
        
        
    }
    
    
    
    {
        
        
        NSFetchRequest *req = [NSFetchRequest fetchRequestWithEntityName:@"Shop"];
        if (req.predicate)
        {
            NSArray *array =  [CoreDatacontext executeFetchRequest:req error:nil];
            [array enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                [CoreDatacontext deleteObject:obj];
            }];
            saveCoreDataContext;
        }
    
        
    }
    
    
    {
        
        
        NSFetchRequest *req = [NSFetchRequest fetchRequestWithEntityName:@"Zhuangbei"];
        if (req.predicate)
        {
            NSArray *array =  [CoreDatacontext executeFetchRequest:req error:nil];
            [array enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                [CoreDatacontext deleteObject:obj];
            }];
            saveCoreDataContext;
        }
        
    }
    
    {
        
        
        NSFetchRequest *req = [NSFetchRequest fetchRequestWithEntityName:@"SignIn"];
        if (req.predicate)
        {
            
            NSArray *array =  [CoreDatacontext executeFetchRequest:req error:nil];
            [array enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                [CoreDatacontext deleteObject:obj];
            }];
            saveCoreDataContext;
        }
        
    }
    
    {
        
        NSFetchRequest *req = [NSFetchRequest fetchRequestWithEntityName:@"Zhuanbeijinjienengliang"];
        if (req.predicate)
        {
            NSArray *array =  [CoreDatacontext executeFetchRequest:req error:nil];
            [array enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                [CoreDatacontext deleteObject:obj];
            }];
            saveCoreDataContext;
        }
        
    }
    
    
  

}

- (NSArray *)setupP
{
       
       NSMutableArray *pp = [NSMutableArray array];
       [self deleteAll];
       {
           P *p0 = [NSEntityDescription insertNewObjectForEntityForName:NSStringFromClass(P.class) inManagedObjectContext:CoreDatacontext];
           p0.lv = 1;
           p0.index = 0;
           p0.dec = @"Aisha,Elite ninja. Good with a sword. Good with a sword";
           p0.mingzi = @"1";
           p0.zhucheng_headImageView = @"Home_top_player_3";
           p0.coin = 0;;
           p0.gongji = 100;
           p0.shengming = 100;
           p0.fangyu = 100;
           p0.zr_noimage =  @"tx_2";
           p0.zr_selImage = @"tx_2_2";
           p0.zr_kaipai = @"icon_3034";
           p0.zhucheng_bgImageView = @"icon_3038";
           p0.isZR = false;
           p0.isBoss = false;
           p0.stats = 1;
           p0.zuidashengming = p0.shengming;
           saveCoreDataContext;
           [pp addObject:p0];
       }
       
       {
           P *p0 = [NSEntityDescription insertNewObjectForEntityForName:NSStringFromClass(P.class) inManagedObjectContext:CoreDatacontext];
           p0.lv = 1;
           p0.index = 0;
           p0.mingzi = @"2";
           p0.zhucheng_headImageView = @"Home_top_player_2";
           p0.coin = 0;;
           p0.gongji = 100;
           p0.dec =  @"Snake, Elite ninja, good at body art, can lift big rocks in one hand.";
           p0.shengming = 100;
           p0.fangyu = 100;
           p0.zr_noimage =  @"tx_2";
           p0.zr_selImage = @"tx_2_2";
           p0.zr_kaipai = @"icon_3035";
           p0.zhucheng_bgImageView = @"icon_3038";
           p0.isZR = false;
           p0.isBoss = false;
           p0.stats = 1;
           p0.zuidashengming = p0.shengming;
           saveCoreDataContext;
           [pp addObject:p0];
       }
       
  
//       [self setupZhuangbeinengliangqiu];
//       [self setupShop];
//       [self setupZhuangbei];
//       [self setupSign];
//       [self setupZR];
//       [self setupBossZR];

      
   return  pp;
}

@end
