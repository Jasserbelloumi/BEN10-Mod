.class public abstract Ltop/bienvenido/date_24323/w5;
.super Ljava/lang/Object;
.source "r8-map-id-f931b081dc47fffbacb9b225b872bf9fbf452f68adc05d0e92c5bfbb559823b2"


# static fields
.field public static 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/g9;

.field public static final 要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/s2;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ltop/bienvenido/date_24323/g9;

    .line 2
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltop/bienvenido/date_24323/g9;-><init>(I)V

    .line 3
    sput-object v0, Ltop/bienvenido/date_24323/w5;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/g9;

    .line 111
    const-class v0, Landroid/content/Context;

    .line 112
    const-string v2, "createApplicationContext"

    .line 113
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/content/pm/ApplicationInfo;

    aput-object v4, v3, v1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v1, v3, v4

    .line 114
    :try_start_0
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 115
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 116
    new-instance v1, Ltop/bienvenido/date_24323/o2;

    invoke-direct {v1, v0}, Ltop/bienvenido/date_24323/o2;-><init>(Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 127
    sget-object v1, Ltop/bienvenido/date_24323/s2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/s2;

    .line 128
    :goto_0
    sput-object v1, Ltop/bienvenido/date_24323/w5;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/s2;

    return-void
.end method

.method public static 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/content/Context;)Ltop/bienvenido/date_24323/v5;
    .locals 5

    .line 42
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-static {v1}, Ltop/bienvenido/date_24323/t4;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/String;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 46
    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v1

    if-eqz v1, :cond_3

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    .line 50
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 55
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    const v3, 0x1010054

    .line 56
    invoke-virtual {p0, v3, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 63
    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_2

    .line 64
    iget v3, v1, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_1

    const/16 v4, 0x1f

    if-le v3, v4, :cond_2

    .line 66
    :cond_1
    invoke-virtual {p0, v2}, Landroid/content/res/Resources$Theme;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 67
    new-instance p0, Ltop/bienvenido/date_24323/v5;

    invoke-direct {p0, v2, v0}, Ltop/bienvenido/date_24323/v5;-><init>(Landroid/graphics/drawable/Drawable;Lkotlin/Triple;)V

    return-object p0

    .line 68
    :cond_2
    sget-boolean v2, Ltop/bienvenido/date_24323/父母们悬挂树木从尸体中养猪让灵车漂浮跳过坟墓螺旋爆炸砂纸打磨棺材冲浪火烧用尸体泡茶将米与骨灰混合在祖坟前唱歌以及埋葬聚会葬礼庆典骨髓汤浇脑花棺材开花;->老子实在看不过你妈的脑残狗逼样子直接把你妈用5毛钱卖到埃塞俄比亚国家大妓院请那些非洲部落小喽啰来享受你妈逼的黑阴逼:Z

    if-eqz v2, :cond_3

    .line 69
    invoke-static {p0, v1}, Ltop/bienvenido/date_24323/w5;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/content/res/Resources$Theme;Landroid/util/TypedValue;)Ltop/bienvenido/date_24323/v5;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 67
    :catch_0
    move-exception p0

    .line 69
    :cond_3
    return-object v0
.end method

.method public static 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/content/res/Resources$Theme;Landroid/util/TypedValue;)Ltop/bienvenido/date_24323/v5;
    .locals 6

    const v0, 0x101062d

    .line 1
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 7
    iget v0, p1, Landroid/util/TypedValue;->resourceId:I

    if-nez v0, :cond_0

    return-object v2

    .line 8
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/res/Resources$Theme;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    const v3, 0x101062f

    .line 11
    invoke-virtual {p0, v3, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 17
    iget v3, p1, Landroid/util/TypedValue;->resourceId:I

    if-nez v3, :cond_2

    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {p0, v3}, Landroid/content/res/Resources$Theme;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1

    .line 17
    :cond_3
    :goto_0
    move-object v3, v2

    .line 18
    :goto_1
    const v4, 0x101062c

    .line 21
    invoke-virtual {p0, v4, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 27
    iget v4, p1, Landroid/util/TypedValue;->data:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_2

    :cond_4
    move-object v4, v2

    .line 28
    :goto_2
    sget-boolean v5, Ltop/bienvenido/date_24323/父母们悬挂树木从尸体中养猪让灵车漂浮跳过坟墓螺旋爆炸砂纸打磨棺材冲浪火烧用尸体泡茶将米与骨灰混合在祖坟前唱歌以及埋葬聚会葬礼庆典骨髓汤浇脑花棺材开花;->你妈今晚去偷电线杆子你爸去找电箱之后结合疯狂爆电让后在拿电线杆子ziwei完事还要去加油站在自己piyan和逼里灌油拿着打火机狂撩自己把自己变成内燃机:Z

    if-eqz v5, :cond_5

    .line 29
    instance-of v5, v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    const v5, 0x1010630

    .line 30
    invoke-virtual {p0, v5, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 36
    iget p0, p1, Landroid/util/TypedValue;->data:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_4

    .line 29
    :cond_6
    :goto_3
    move-object p0, v2

    .line 38
    :goto_4
    new-instance p1, Ltop/bienvenido/date_24323/v5;

    .line 40
    new-instance v1, Lkotlin/Triple;

    invoke-direct {v1, v3, v4, p0}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    invoke-direct {p1, v0, v1}, Ltop/bienvenido/date_24323/v5;-><init>(Landroid/graphics/drawable/Drawable;Lkotlin/Triple;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_7
    return-object v2

    .line 18
    :catch_0
    move-exception p0

    .line 41
    return-object v2
.end method

.method public static 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰()V
    .locals 2

    .line 70
    sget-object v0, Ltop/bienvenido/date_24323/你真是弱智得恰到好处正如你黑人野爹操你妈的时候你妈高潮叫得音律十足;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ltop/bienvenido/date_24323/w5$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ltop/bienvenido/date_24323/w5$$ExternalSyntheticLambda1;-><init>()V

    .line 71
    sget-object v1, Ltop/bienvenido/date_24323/你真是弱智得恰到好处正如你黑人野爹操你妈的时候你妈高潮叫得音律十足;->要不要把你妈卵子扣出来给你做寿司吃:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(ZLandroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ltop/bienvenido/date_24323/g9;)V
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x3

    .line 72
    :try_start_0
    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    .line 75
    :cond_0
    sget-object p0, Ltop/bienvenido/date_24323/w5;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/s2;

    .line 78
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v0

    const/4 p3, 0x1

    aput-object v1, v2, p3

    .line 79
    invoke-virtual {p0, p1, v2}, Ltop/bienvenido/date_24323/s2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    .line 72
    :goto_0
    nop

    .line 84
    invoke-static {p0}, Ltop/bienvenido/date_24323/w5;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/content/Context;)Ltop/bienvenido/date_24323/v5;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    .line 87
    :cond_1
    monitor-enter p4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    .line 90
    invoke-virtual {p4, p1, p0}, Ltop/bienvenido/date_24323/g9;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(ILjava/lang/Object;)Z

    .line 91
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :try_start_2
    monitor-exit p4

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p4

    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 72
    :catch_0
    move-exception p0

    .line 92
    :goto_1
    return-void
.end method

.method public static final 要不要把你妈卵子扣出来给你做寿司吃()V
    .locals 11

    .line 1
    :try_start_0
    new-instance v6, Ltop/bienvenido/date_24323/g9;

    .line 2
    const/4 v7, 0x0

    invoke-direct {v6, v7}, Ltop/bienvenido/date_24323/g9;-><init>(I)V

    .line 3
    sput-object v6, Ltop/bienvenido/date_24323/w5;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/g9;

    .line 4
    sget-object v8, Ltop/bienvenido/date_24323/z2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Landroid/content/Context;

    .line 5
    sget-object v0, Ltop/bienvenido/date_24323/n5;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/n5;

    invoke-virtual {v0}, Ltop/bienvenido/date_24323/n5;->要不要把你妈卵子扣出来给你做寿司吃()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 7
    sget-object v0, Ltop/bienvenido/date_24323/n5;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/n5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    sget-object v1, Ltop/bienvenido/date_24323/n5;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:Ltop/bienvenido/date_24323/你脖子上顶的是肿瘤你一日三餐是犬类排泄物你的长相就是撒旦的吊宁说的每一句话都是母狗发情宁的存在简直就是麦克斯韦方程组的瑕疵宁的母亲就是一只鸡宁的生殖器堪比阿米巴原虫宁的一举一动都像个王八;

    invoke-virtual {v1, v3}, Ltop/bienvenido/date_24323/你脖子上顶的是肿瘤你一日三餐是犬类排泄物你的长相就是撒旦的吊宁说的每一句话都是母狗发情宁的存在简直就是麦克斯韦方程组的瑕疵宁的母亲就是一只鸡宁的生殖器堪比阿米巴原虫宁的一举一动都像个王八;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v0, v3, v7}, Ltop/bienvenido/date_24323/n5;->要不要把你妈卵子扣出来给你做寿司吃(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    move-object v4, v0

    .line 11
    sget-object v0, Ltop/bienvenido/date_24323/你真是弱智得恰到好处正如你黑人野爹操你妈的时候你妈高潮叫得音律十足;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ljava/util/concurrent/ExecutorService;

    new-instance v10, Ltop/bienvenido/date_24323/w5$$ExternalSyntheticLambda0;

    move-object v0, v10

    move-object v2, v8

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Ltop/bienvenido/date_24323/w5$$ExternalSyntheticLambda0;-><init>(ZLandroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ltop/bienvenido/date_24323/g9;)V

    .line 12
    sget-object v0, Ltop/bienvenido/date_24323/你真是弱智得恰到好处正如你黑人野爹操你妈的时候你妈高潮叫得音律十足;->要不要把你妈卵子扣出来给你做寿司吃:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 12
    :cond_1
    return-void
.end method
