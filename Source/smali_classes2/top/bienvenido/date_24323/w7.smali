.class public final Ltop/bienvenido/date_24323/w7;
.super Ltop/bienvenido/date_24323/a2;
.source "r8-map-id-f931b081dc47fffbacb9b225b872bf9fbf452f68adc05d0e92c5bfbb559823b2"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ltop/bienvenido/date_24323/a2;-><init>()V

    return-void
.end method

.method public static final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰([Ljava/lang/Object;Ltop/bienvenido/date_24323/m0;)Landroid/content/pm/ProviderInfo;
    .locals 1

    .line 15
    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 16
    invoke-interface {p1, p0}, Ltop/bienvenido/date_24323/m0;->虽然不是同一时间但是是同一个你妈你爹我再次挑战一把吃阴第(Ljava/lang/String;)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Ltop/bienvenido/date_24323/a5;->你妈今晚去偷电线杆子你爸去找电箱之后结合疯狂爆电让后在拿电线杆子ziwei完事还要去加油站在自己piyan和逼里灌油拿着打火机狂撩自己把自己变成内燃机:Ltop/bienvenido/date_24323/a5;

    new-instance v2, Ltop/bienvenido/date_24323/w7$$ExternalSyntheticLambda0;

    invoke-direct {v2, p3}, Ltop/bienvenido/date_24323/w7$$ExternalSyntheticLambda0;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ltop/bienvenido/date_24323/g4;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ProviderInfo;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 10
    invoke-static {p3, v1}, Ltop/bienvenido/date_24323/a2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰([Ljava/lang/Object;I)V

    .line 11
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 13
    move-object v1, p1

    check-cast v1, Landroid/content/pm/ProviderInfo;

    :cond_0
    if-eqz v1, :cond_1

    .line 14
    iget-object p1, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1}, Ltop/bienvenido/date_24323/我他妈把你塞进你婊子妈的子宫里再找几根机吧给你搅合搅合让你这个杂种涅槃重生;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/content/pm/ApplicationInfo;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_1
    return-object v0

    .line 13
    :catch_0
    move-exception p1

    .line 14
    return-object v0
.end method
