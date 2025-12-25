.class public final Lnet_62v/external/MetaCore;
.super Ljava/lang/Object;
.source "r8-map-id-f931b081dc47fffbacb9b225b872bf9fbf452f68adc05d0e92c5bfbb559823b2"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addServiceInterpreter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/reflect/InvocationHandler;
    .locals 2

    .line 1
    sget-object v0, Ltop/bienvenido/date_24323/t8;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/g9;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ltop/bienvenido/date_24323/g9;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Pair;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltop/bienvenido/date_24323/a1;

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_1

    return-object v0

    .line 2
    :cond_1
    iget-object v0, p0, Ltop/bienvenido/date_24323/a1;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/g9;

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 4
    invoke-virtual {v0, v1}, Ltop/bienvenido/date_24323/g9;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/bienvenido/date_24323/a2;

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Ltop/bienvenido/date_24323/a1;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:Ltop/bienvenido/date_24323/a2;

    .line 7
    :cond_2
    new-instance v1, Lnet_62v/external/要不要把你妈卵子扣出来给你做寿司吃;

    invoke-direct {v1, p2}, Lnet_62v/external/要不要把你妈卵子扣出来给你做寿司吃;-><init>(Ljava/lang/reflect/InvocationHandler;)V

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    .line 9
    iget-object p0, p0, Ltop/bienvenido/date_24323/a1;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/g9;

    .line 10
    invoke-virtual {p0, p1, v1}, Ltop/bienvenido/date_24323/g9;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(ILjava/lang/Object;)Z

    .line 11
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lnet_62v/external/MetaCore$$ExternalSyntheticLambda1;

    invoke-direct {p0, v0}, Lnet_62v/external/MetaCore$$ExternalSyntheticLambda1;-><init>(Ltop/bienvenido/date_24323/a2;)V

    return-object p0
.end method

.method public static attachMetaBase(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lnet_62v/external/MetaActivityManager;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public static getHostContext()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Ltop/bienvenido/date_24323/z2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Landroid/content/Context;

    .line 2
    sget-object v0, Ltop/bienvenido/date_24323/z2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Landroid/content/Context;

    return-object v0
.end method

.method public static registerCoreCallback(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnet_62v/external/MetaCore$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lnet_62v/external/MetaCore$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 9
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static setProcessLifecycleCallback(Lnet_62v/external/IMundoProcessCallback;)V
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Lnet_62v/external/狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰;

    invoke-direct {v0, p0}, Lnet_62v/external/狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰;-><init>(Lnet_62v/external/IMundoProcessCallback;)V

    move-object p0, v0

    .line 2
    :goto_0
    sput-object p0, Ltop/bienvenido/date_24323/q0;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Lnet_62v/external/狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰;

    return-void
.end method

.method public static synthetic 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {}, Lnet_62v/external/MetaPackageManager;->waitForBackgroundScanner()V

    .line 2
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    return-void
.end method
