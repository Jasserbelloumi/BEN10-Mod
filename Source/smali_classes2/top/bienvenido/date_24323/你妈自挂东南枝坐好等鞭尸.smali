.class public abstract Ltop/bienvenido/date_24323/你妈自挂东南枝坐好等鞭尸;
.super Ljava/lang/Object;
.source "r8-map-id-f931b081dc47fffbacb9b225b872bf9fbf452f68adc05d0e92c5bfbb559823b2"


# direct methods
.method public static 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰()Ljava/util/ArrayList;
    .locals 7

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    sget-object v1, Ltop/bienvenido/date_24323/n5;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/n5;

    invoke-virtual {v1}, Ltop/bienvenido/date_24323/n5;->要不要把你妈卵子扣出来给你做寿司吃()Ljava/util/ArrayList;

    move-result-object v1

    .line 77
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.accounts.AccountAuthenticator"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 80
    sget-object v4, Ltop/bienvenido/date_24323/n5;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/n5;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    sget-object v5, Ltop/bienvenido/date_24323/n5;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:Ltop/bienvenido/date_24323/你脖子上顶的是肿瘤你一日三餐是犬类排泄物你的长相就是撒旦的吊宁说的每一句话都是母狗发情宁的存在简直就是麦克斯韦方程组的瑕疵宁的母亲就是一只鸡宁的生殖器堪比阿米巴原虫宁的一举一动都像个王八;

    invoke-virtual {v5, v3}, Ltop/bienvenido/date_24323/你脖子上顶的是肿瘤你一日三餐是犬类排泄物你的长相就是撒旦的吊宁说的每一句话都是母狗发情宁的存在简直就是麦克斯韦方程组的瑕疵宁的母亲就是一只鸡宁的生殖器堪比阿米巴原虫宁的一举一动都像个王八;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const/16 v6, 0x80

    if-eqz v5, :cond_1

    .line 82
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/4 v5, 0x0

    .line 83
    invoke-virtual {v4, v3, v5, v6}, Ltop/bienvenido/date_24323/n5;->要不要把你妈卵子扣出来给你做寿司吃(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 87
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 91
    :cond_1
    sget-object v4, Ltop/bienvenido/date_24323/z2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Landroid/content/Context;

    new-instance v4, Ltop/bienvenido/date_24323/你妈自挂东南枝坐好等鞭尸$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, v3, v6}, Ltop/bienvenido/date_24323/你妈自挂东南枝坐好等鞭尸$$ExternalSyntheticLambda0;-><init>(Landroid/content/Intent;Ljava/lang/String;I)V

    invoke-static {v4}, Ltop/bienvenido/date_24323/z2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_0

    .line 96
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/pm/PackageManager;)Ljava/util/List;
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 98
    invoke-virtual {p3, p0, p2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/content/pm/ResolveInfo;)Ltop/bienvenido/date_24323/j1;
    .locals 6

    .line 45
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 46
    sget-object v0, Ltop/bienvenido/date_24323/z2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 47
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.accounts.AccountAuthenticator"

    .line 48
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageItemInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    return-object v1

    .line 53
    :cond_0
    :try_start_1
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    .line 55
    :cond_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 58
    :cond_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 59
    const-string v5, "account-authenticator"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_3

    .line 60
    :try_start_2
    invoke-static {v2, v1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    .line 71
    :cond_3
    :try_start_3
    iget-object v4, p0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    .line 72
    iget-object v4, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 73
    invoke-static {v0, v4, v3, p0}, Ltop/bienvenido/date_24323/你妈自挂东南枝坐好等鞭尸;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;Landroid/content/pm/ServiceInfo;)Ltop/bienvenido/date_24323/j1;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 74
    :try_start_4
    invoke-static {v2, v1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-static {v2, p0}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 60
    :catch_0
    move-exception p0

    .line 74
    return-object v1
.end method

.method public static 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;Landroid/content/pm/ServiceInfo;)Ltop/bienvenido/date_24323/j1;
    .locals 10

    .line 1
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/android/internal/R$styleable;->AccountAuthenticator:[I

    .line 2
    invoke-virtual {p0, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    sget p2, Lcom/android/internal/R$styleable;->AccountAuthenticator_accountType:I

    .line 9
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 12
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    sget p2, Lcom/android/internal/R$styleable;->AccountAuthenticator_label:I

    .line 15
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 19
    sget p2, Lcom/android/internal/R$styleable;->AccountAuthenticator_icon:I

    .line 20
    invoke-virtual {p0, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 24
    sget p2, Lcom/android/internal/R$styleable;->AccountAuthenticator_smallIcon:I

    .line 25
    invoke-virtual {p0, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 29
    sget p2, Lcom/android/internal/R$styleable;->AccountAuthenticator_accountPreferences:I

    .line 30
    invoke-virtual {p0, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 34
    sget p2, Lcom/android/internal/R$styleable;->AccountAuthenticator_customTokens:I

    .line 35
    invoke-virtual {p0, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 38
    new-instance p2, Ltop/bienvenido/date_24323/j1;

    move-object v1, p2

    move-object v3, p1

    move-object v9, p3

    invoke-direct/range {v1 .. v9}, Ltop/bienvenido/date_24323/j1;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIZLandroid/content/pm/ServiceInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :try_start_2
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p2

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    return-object v0
.end method
