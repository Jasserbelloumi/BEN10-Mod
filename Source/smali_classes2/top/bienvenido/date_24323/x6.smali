.class public final Ltop/bienvenido/date_24323/x6;
.super Ltop/bienvenido/date_24323/a2;
.source "r8-map-id-f931b081dc47fffbacb9b225b872bf9fbf452f68adc05d0e92c5bfbb559823b2"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ltop/bienvenido/date_24323/a2;-><init>()V

    return-void
.end method

.method public static final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/String;Ltop/bienvenido/date_24323/m0;)Z
    .locals 0

    .line 8
    invoke-interface {p1, p0}, Ltop/bienvenido/date_24323/m0;->你爹我一顿暴打揍的你瞎妈的子宫打成稀巴烂浆糊然后把你蠢妈的肠子都拉出来做成美味可口的香肠大发慈悲喂给路边的那些流浪汉吃(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    const/4 v0, 0x0

    :try_start_0
    aget-object v1, p3, v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 4
    sget-object v2, Ltop/bienvenido/date_24323/a5;->你妈今晚去偷电线杆子你爸去找电箱之后结合疯狂爆电让后在拿电线杆子ziwei完事还要去加油站在自己piyan和逼里灌油拿着打火机狂撩自己把自己变成内燃机:Ltop/bienvenido/date_24323/a5;

    new-instance v3, Ltop/bienvenido/date_24323/x6$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Ltop/bienvenido/date_24323/x6$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ltop/bienvenido/date_24323/g4;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    if-eqz v1, :cond_2

    .line 5
    sget-object v1, Ltop/bienvenido/date_24323/z2;->要不要把你妈卵子扣出来给你做寿司吃:Ljava/lang/String;

    .line 6
    aput-object v1, p3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1
    :catch_0
    move-exception v0

    .line 7
    :cond_2
    :goto_2
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
