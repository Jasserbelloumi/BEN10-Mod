.class public final Ltop/bienvenido/date_24323/n4;
.super Ltop/bienvenido/date_24323/e0;
.source "r8-map-id-f931b081dc47fffbacb9b225b872bf9fbf452f68adc05d0e92c5bfbb559823b2"


# static fields
.field public static final 我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:Ltop/bienvenido/date_24323/r6;

.field public static final 要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/n4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltop/bienvenido/date_24323/n4;

    invoke-direct {v0}, Ltop/bienvenido/date_24323/n4;-><init>()V

    sput-object v0, Ltop/bienvenido/date_24323/n4;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/n4;

    .line 1
    new-instance v0, Ltop/bienvenido/date_24323/r6;

    const-string v1, ""

    invoke-direct {v0, v1}, Ltop/bienvenido/date_24323/r6;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltop/bienvenido/date_24323/n4;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:Ltop/bienvenido/date_24323/r6;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ltop/bienvenido/date_24323/e0;-><init>()V

    return-void
.end method


# virtual methods
.method public final 你妈今晚去偷电线杆子你爸去找电箱之后结合疯狂爆电让后在拿电线杆子ziwei完事还要去加油站在自己piyan和逼里灌油拿着打火机狂撩自己把自己变成内燃机(Landroid/os/IBinder;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    sget-object v0, Ltop/bienvenido/date_24323/n4;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:Ltop/bienvenido/date_24323/r6;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    invoke-virtual {v0, p1}, Ltop/bienvenido/date_24323/r6;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/os/IBinder;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    return-void
.end method

.method public final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/net/Uri;Landroid/os/IBinder;Z)V
    .locals 8

    .line 1
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v7, Ltop/bienvenido/date_24323/n4;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:Ltop/bienvenido/date_24323/r6;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    .line 3
    move-object v0, v7

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, v6

    :try_start_1
    invoke-virtual/range {v0 .. v5}, Ltop/bienvenido/date_24323/r6;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/net/Uri;ILandroid/os/IBinder;ZLjava/util/ArrayList;)V

    .line 7
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8
    :try_start_2
    monitor-exit v7

    .line 14
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ltop/bienvenido/date_24323/p6;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 16
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p3, Ltop/bienvenido/date_24323/p6;->要不要把你妈卵子扣出来给你做寿司吃:Landroid/os/IBinder;

    .line 17
    invoke-static {v2}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v2

    .line 20
    sget-boolean v3, Ltop/bienvenido/date_24323/父母们悬挂树木从尸体中养猪让灵车漂浮跳过坟墓螺旋爆炸砂纸打磨棺材冲浪火烧用尸体泡茶将米与骨灰混合在祖坟前唱歌以及埋葬聚会葬礼庆典骨髓汤浇脑花棺材开花;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Z

    .line 21
    sget-boolean v3, Ltop/bienvenido/date_24323/父母们悬挂树木从尸体中养猪让灵车漂浮跳过坟墓螺旋爆炸砂纸打磨棺材冲浪火烧用尸体泡茶将米与骨灰混合在祖坟前唱歌以及埋葬聚会葬礼庆典骨髓汤浇脑花棺材开花;->虽然不是同一时间但是是同一个你妈你爹我再次挑战一把吃阴第:Z

    if-eqz v3, :cond_0

    .line 22
    iget-boolean v3, p3, Ltop/bienvenido/date_24323/p6;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:Z

    .line 23
    new-array v4, v0, [Landroid/net/Uri;

    aput-object p1, v4, v1

    .line 25
    sget-object v5, Ltop/bienvenido/date_24323/z2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Landroid/content/Context;

    .line 26
    sget v5, Ltop/bienvenido/date_24323/z2;->你爹我一顿暴打揍的你瞎妈的子宫打成稀巴烂浆糊然后把你蠢妈的肠子都拉出来做成美味可口的香肠大发慈悲喂给路边的那些流浪汉吃:I

    .line 27
    invoke-interface {v2, v3, v4, v1, v5}, Landroid/database/IContentObserver;->onChangeEtc(Z[Landroid/net/Uri;II)V

    goto :goto_0

    .line 37
    :cond_0
    iget-boolean v3, p3, Ltop/bienvenido/date_24323/p6;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:Z

    .line 39
    sget-object v4, Ltop/bienvenido/date_24323/z2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Landroid/content/Context;

    .line 40
    sget v4, Ltop/bienvenido/date_24323/z2;->你爹我一顿暴打揍的你瞎妈的子宫打成稀巴烂浆糊然后把你蠢妈的肠子都拉出来做成美味可口的香肠大发慈悲喂给路边的那些流浪汉吃:I

    .line 41
    invoke-interface {v2, v3, p1, v4}, Landroid/database/IContentObserver;->onChange(ZLandroid/net/Uri;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    .line 27
    :catch_0
    move-exception v2

    .line 50
    :try_start_4
    sget-object v2, Ltop/bienvenido/date_24323/n4;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:Ltop/bienvenido/date_24323/r6;

    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 51
    :try_start_5
    iget-object v3, p3, Ltop/bienvenido/date_24323/p6;->要不要把你妈卵子扣出来给你做寿司吃:Landroid/os/IBinder;

    .line 52
    iget-object p3, p3, Ltop/bienvenido/date_24323/p6;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/r6;

    iget-object p3, p3, Ltop/bienvenido/date_24323/r6;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:Ljava/util/ArrayList;

    .line 53
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_1
    if-ge v1, v4, :cond_2

    .line 56
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ltop/bienvenido/date_24323/q6;

    .line 57
    iget-object v5, v5, Ltop/bienvenido/date_24323/q6;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Landroid/os/IBinder;

    if-ne v5, v3, :cond_1

    .line 58
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v4, v4, -0x1

    :cond_1
    add-int/2addr v1, v0

    goto :goto_1

    .line 64
    :cond_2
    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 65
    :try_start_6
    monitor-exit v2

    goto :goto_0

    .line 58
    :catchall_0
    move-exception p1

    .line 65
    monitor-exit v2

    throw p1

    :catchall_1
    move-exception p1

    .line 66
    monitor-exit v7

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 27
    :catchall_2
    move-exception p1

    .line 66
    :cond_3
    return-void
.end method

.method public final 要不要把你妈卵子扣出来给你做寿司吃(Landroid/net/Uri;Landroid/os/IBinder;Z)V
    .locals 2

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    :try_start_0
    sget-object v0, Ltop/bienvenido/date_24323/n4;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:Ltop/bienvenido/date_24323/r6;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    .line 2
    :try_start_1
    invoke-virtual {v0, p1, v1, p2, p3}, Ltop/bienvenido/date_24323/r6;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/net/Uri;ILandroid/os/IBinder;Z)V

    .line 3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    :cond_1
    :goto_0
    return-void
.end method
