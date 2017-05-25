# startMovie
APP启动视屏  APP第一次启动播放视屏欢迎

# PhotoShoot
![image](https://github.com/Zws-China/startMovie/blob/master/StartMovie/StartMovie/111.gif)



# How To Use

```ruby

在AppDelegate.h中#import "WSMovieController.h"

NSString *versionCache = [[NSUserDefaults standardUserDefaults] objectForKey:@"VersionCache"];//本地缓存的版本号  第一次启动的时候本地是没有缓存版本号的。
NSString *version = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];//当前应用版本号

if (![versionCache isEqualToString:version]) //如果本地缓存的版本号和当前应用版本号不一样，则是第一次启动（更新版本也算第一次启动）
{
    WSMovieController *wsCtrl = [[WSMovieController alloc]init];
    wsCtrl.movieURL = [NSURL fileURLWithPath:[[NSBundle mainBundle]pathForResource:@"qidong"ofType:@"mp4"]];//选择本地的视屏
    self.window.rootViewController = wsCtrl;

    //设置上下面这句话，将当前版本缓存到本地，下次对比一样，就不走启动视屏了。
    //为了让每次都可以看到启动视屏，这句话先注释掉
    //[[NSUserDefaults standardUserDefaults] setObject:version forKey:@"VersionCache"];

}else{
    //不是首次启动
    RootTabBarController *rootTabCtrl = [[RootTabBarController alloc]init];
    self.window.rootViewController = rootTabCtrl;
}



```




