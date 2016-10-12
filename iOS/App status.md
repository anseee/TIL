#App status
//최초 호출 메소드로 앱이 최초로 실행될 때 호출 (Launch mode)
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions

// Background 전환, 앱이 완전 종료될 때, 화면 잠김 시, 홈버튼 더블탭 동작 때 호출
- (void)applicationWillResignActive:(UIApplication *)application

// Background 전환
- (void)applicationDidEnterBackground:(UIApplication *)application

// Foreground 전환
- (void)applicationWillEnterForeground:(UIApplication *)application

// 프로그램이 다시 실행될 때 호출 (Foreground 전환, 프로그램 실행, 화면 다시 켤 때 등)
- (void)applicationDidBecomeActive:(UIApplication *)application

// 프로그램이 suspend 될 때 호출 (Background 전환, 프로그램 종료, 화면 잠김 등)
- (void)applicationWillTerminate:(UIApplication *)application

// 앱이 실행중일때 푸시가 오면 받아주는 부분
- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo

// APNS 등록이 성공하고 DeviceToken을 전달받으면 이 메서드가 실행
- (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken

// APNS 등록이 실패하면 이 메서드가 실행
- (void)application:(UIApplication *)application didFailToRegisterForRemoteNotificationsWithError:(NSError *)error

// Custom URL로 App을 호출할 때 openURL을 통해 데이터를 전송
- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation

