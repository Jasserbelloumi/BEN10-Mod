.class public abstract Ltop/bienvenido/date_24323/w4;
.super Ljava/lang/Object;
.source "r8-map-id-f931b081dc47fffbacb9b225b872bf9fbf452f68adc05d0e92c5bfbb559823b2"


# static fields
.field public static final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/s2;

.field public static final 要不要把你妈卵子扣出来给你做寿司吃:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Landroid/content/BroadcastReceiver;

    .line 2
    const-string v1, "mPendingResult"

    .line 3
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 7
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    :goto_0
    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 10
    :goto_1
    new-instance v1, Ltop/bienvenido/date_24323/p2;

    invoke-direct {v1, v0}, Ltop/bienvenido/date_24323/p2;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_2

    .line 11
    :cond_1
    sget-object v1, Ltop/bienvenido/date_24323/t9;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Lsun/misc/Unsafe;

    .line 12
    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    .line 15
    new-instance v2, Ltop/bienvenido/date_24323/q2;

    invoke-direct {v2, v0, v1}, Ltop/bienvenido/date_24323/q2;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_2

    :catch_0
    move-exception v0

    .line 16
    sget-object v1, Ltop/bienvenido/date_24323/s2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/s2;

    .line 17
    :goto_2
    sput-object v1, Ltop/bienvenido/date_24323/w4;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/s2;

    .line 18
    :try_start_1
    sget-object v0, Ltop/bienvenido/date_24323/t9;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Lsun/misc/Unsafe;

    .line 19
    const-class v1, Landroid/content/BroadcastReceiver$PendingResult;

    .line 20
    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 25
    const-string v1, "mInitialStickyHint"

    .line 26
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 27
    new-instance v3, Ltop/bienvenido/date_24323/n2;

    invoke-direct {v3, v1}, Ltop/bienvenido/date_24323/n2;-><init>(Ljava/lang/String;)V

    .line 28
    iget-object v1, v3, Ltop/bienvenido/date_24323/n2;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/s2;

    invoke-virtual {v1, v0, v2}, Ltop/bienvenido/date_24323/s2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    .line 29
    :goto_3
    sput-object v0, Ltop/bienvenido/date_24323/w4;->要不要把你妈卵子扣出来给你做寿司吃:Ljava/lang/Object;

    return-void
.end method

.method public static final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/app/LoadedApk;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 5

    .line 5
    :try_start_0
    sget-object v0, Ltop/bienvenido/date_24323/b6;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/b6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget-object v0, Ltop/bienvenido/date_24323/b6;->我空降你爹葬礼用你妈子宫弹奏一曲dj版求佛为你爹亡灵超度:Ltop/bienvenido/date_24323/s2;

    .line 7
    sget-object v1, Ltop/bienvenido/date_24323/b6;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:Landroid/app/ActivityThread;

    .line 8
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 9
    invoke-virtual {v0, p0, v2}, Ltop/bienvenido/date_24323/s2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 14
    invoke-virtual {p0}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 15
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 16
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 17
    sget-boolean v2, Ltop/bienvenido/date_24323/父母们悬挂树木从尸体中养猪让灵车漂浮跳过坟墓螺旋爆炸砂纸打磨棺材冲浪火烧用尸体泡茶将米与骨灰混合在祖坟前唱歌以及埋葬聚会葬礼庆典骨髓汤浇脑花棺材开花;->你不知道你妈张个大嘴劈个小腿下面还流着咸盐水吗弟弟:Z

    if-eqz v2, :cond_0

    .line 18
    invoke-virtual {p0}, Landroid/app/LoadedApk;->getAppFactory()Landroid/app/AppComponentFactory;

    move-result-object p0

    invoke-virtual {p0, v1, p2, p1}, Landroid/app/AppComponentFactory;->instantiateReceiver(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/BroadcastReceiver;

    move-result-object p0

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 27
    sget-object p2, Ltop/bienvenido/date_24323/g;->要不要把你妈卵子扣出来给你做寿司吃:[Ljava/lang/Class;

    .line 28
    invoke-virtual {p0, p2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 31
    invoke-virtual {p0, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 32
    sget-object p2, Ltop/bienvenido/date_24323/g;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:[Ljava/lang/Object;

    .line 33
    invoke-virtual {p0, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 34
    check-cast p0, Landroid/content/BroadcastReceiver;

    .line 18
    :goto_0
    nop

    .line 43
    sget-object p2, Ltop/bienvenido/date_24323/w4;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/s2;

    sget-object v1, Ltop/bienvenido/date_24323/w4;->要不要把你妈卵子扣出来给你做寿司吃:Ljava/lang/Object;

    invoke-virtual {p2, p0, v1}, Ltop/bienvenido/date_24323/s2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p0, v0, p1}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 44
    return-void
.end method

.method public static 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    .line 3
    sget-object v0, Ltop/bienvenido/date_24323/你真是弱智得恰到好处正如你黑人野爹操你妈的时候你妈高潮叫得音律十足;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ltop/bienvenido/date_24323/w4$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Ltop/bienvenido/date_24323/w4$$ExternalSyntheticLambda2;-><init>(Landroid/content/Intent;Ljava/lang/String;)V

    .line 4
    sget-object p0, Ltop/bienvenido/date_24323/你真是弱智得恰到好处正如你黑人野爹操你妈的时候你妈高潮叫得音律十足;->要不要把你妈卵子扣出来给你做寿司吃:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/os/IBinder;Landroid/content/Intent;)V
    .locals 1

    .line 1
    sget-object v0, Ltop/bienvenido/date_24323/你真是弱智得恰到好处正如你黑人野爹操你妈的时候你妈高潮叫得音律十足;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ltop/bienvenido/date_24323/w4$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Ltop/bienvenido/date_24323/w4$$ExternalSyntheticLambda1;-><init>(Landroid/os/IBinder;Landroid/content/Intent;)V

    .line 2
    sget-object p0, Ltop/bienvenido/date_24323/你真是弱智得恰到好处正如你黑人野爹操你妈的时候你妈高潮叫得音律十足;->要不要把你妈卵子扣出来给你做寿司吃:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final 要不要把你妈卵子扣出来给你做寿司吃(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    sget-boolean v0, Ltop/bienvenido/date_24323/c4;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Landroid/content/ComponentName;

    .line 5
    sget-object v1, Ltop/bienvenido/date_24323/c4;->要不要把你妈卵子扣出来给你做寿司吃:Ljava/lang/String;

    .line 6
    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 11
    :cond_1
    sget-object v0, Ltop/bienvenido/date_24323/b6;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/b6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    sget-object v0, Ltop/bienvenido/date_24323/b6;->爷半夜挖开你妈的棺材拿出手机扫描二维码扫你妈身上的尸斑成功解锁一辆共享单车证明你妈在阴间也还是万人骑:Lkotlin/jvm/functions/Function0;

    .line 13
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoadedApk;

    .line 14
    sget-object v1, Ltop/bienvenido/date_24323/b6;->你爹我一顿暴打揍的你瞎妈的子宫打成稀巴烂浆糊然后把你蠢妈的肠子都拉出来做成美味可口的香肠大发慈悲喂给路边的那些流浪汉吃:Landroid/os/Handler;

    .line 15
    new-instance v2, Ltop/bienvenido/date_24323/w4$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p0, p1}, Ltop/bienvenido/date_24323/w4$$ExternalSyntheticLambda0;-><init>(Landroid/app/LoadedApk;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 6
    :catch_0
    move-exception p0

    .line 15
    :goto_0
    return-void
.end method

.method public static final 要不要把你妈卵子扣出来给你做寿司吃(Landroid/os/IBinder;Landroid/content/Intent;)V
    .locals 14

    .line 16
    :try_start_0
    sget-boolean v0, Ltop/bienvenido/date_24323/父母们悬挂树木从尸体中养猪让灵车漂浮跳过坟墓螺旋爆炸砂纸打磨棺材冲浪火烧用尸体泡茶将米与骨灰混合在祖坟前唱歌以及埋葬聚会葬礼庆典骨髓汤浇脑花棺材开花;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Z

    .line 17
    sget-boolean v0, Ltop/bienvenido/date_24323/父母们悬挂树木从尸体中养猪让灵车漂浮跳过坟墓螺旋爆炸砂纸打磨棺材冲浪火烧用尸体泡茶将米与骨灰混合在祖坟前唱歌以及埋葬聚会葬礼庆典骨髓汤浇脑花棺材开花;->用搅拌机把你妈的阴扩一下:Z

    if-eqz v0, :cond_0

    .line 18
    sget-object v0, Ltop/bienvenido/date_24323/b6;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/b6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    sget-object v0, Ltop/bienvenido/date_24323/b6;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:Landroid/app/ActivityThread;

    .line 20
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    .line 22
    invoke-static {p0}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v2

    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 26
    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 30
    sget-object p0, Ltop/bienvenido/date_24323/z2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Landroid/content/Context;

    .line 31
    sget v10, Ltop/bienvenido/date_24323/z2;->你爹我一顿暴打揍的你瞎妈的子宫打成稀巴烂浆糊然后把你蠢妈的肠子都拉出来做成美味可口的香肠大发慈悲喂给路边的那些流浪汉吃:I

    const/16 v11, 0x14

    const/4 v12, -0x1

    const/4 v13, 0x0

    .line 32
    move-object v3, p1

    invoke-interface/range {v1 .. v13}, Landroid/app/IApplicationThread;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIIILjava/lang/String;)V

    return-void

    .line 49
    :cond_0
    invoke-static {p0}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 55
    sget-object v4, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 58
    sget-object p0, Ltop/bienvenido/date_24323/z2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Landroid/content/Context;

    .line 59
    sget v7, Ltop/bienvenido/date_24323/z2;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:I

    .line 60
    move-object v1, p1

    invoke-interface/range {v0 .. v7}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 60
    return-void
.end method
