.class public final Ltop/bienvenido/date_24323/t8;
.super Ljava/lang/Object;
.source "r8-map-id-f931b081dc47fffbacb9b225b872bf9fbf452f68adc05d0e92c5bfbb559823b2"


# static fields
.field public static final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/g9;

.field public static final 要不要把你妈卵子扣出来给你做寿司吃:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ltop/bienvenido/date_24323/g9;

    .line 2
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltop/bienvenido/date_24323/g9;-><init>(I)V

    .line 3
    sput-object v0, Ltop/bienvenido/date_24323/t8;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/g9;

    .line 7
    :try_start_0
    const-class v0, Landroid/os/ServiceManager;

    .line 8
    const-string v2, "sCache"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 13
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    :goto_0
    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 16
    :goto_1
    new-instance v2, Ltop/bienvenido/date_24323/p2;

    invoke-direct {v2, v0}, Ltop/bienvenido/date_24323/p2;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_2

    .line 17
    :cond_1
    sget-object v2, Ltop/bienvenido/date_24323/t9;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Lsun/misc/Unsafe;

    .line 18
    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    .line 21
    new-instance v0, Ltop/bienvenido/date_24323/q2;

    invoke-direct {v0, v2, v3}, Ltop/bienvenido/date_24323/q2;-><init>(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 22
    :try_start_2
    sget-object v2, Ltop/bienvenido/date_24323/s2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/s2;

    :goto_2
    const/4 v0, 0x0

    .line 23
    invoke-virtual {v2, v0}, Ltop/bienvenido/date_24323/s2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 24
    check-cast v0, Ljava/util/Map;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 31
    new-instance v0, Ltop/bienvenido/date_24323/你脖子上顶的是肿瘤你一日三餐是犬类排泄物你的长相就是撒旦的吊宁说的每一句话都是母狗发情宁的存在简直就是麦克斯韦方程组的瑕疵宁的母亲就是一只鸡宁的生殖器堪比阿米巴原虫宁的一举一动都像个王八;

    invoke-direct {v0, v1}, Ltop/bienvenido/date_24323/你脖子上顶的是肿瘤你一日三餐是犬类排泄物你的长相就是撒旦的吊宁说的每一句话都是母狗发情宁的存在简直就是麦克斯韦方程组的瑕疵宁的母亲就是一只鸡宁的生殖器堪比阿米巴原虫宁的一举一动都像个王八;-><init>(I)V

    .line 32
    :goto_3
    sput-object v0, Ltop/bienvenido/date_24323/t8;->要不要把你妈卵子扣出来给你做寿司吃:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ltop/bienvenido/date_24323/k4;)Landroid/os/Service;
    .locals 1

    .line 61
    new-instance v0, Landroid/os/ServiceWithMetadata;

    invoke-direct {v0}, Landroid/os/ServiceWithMetadata;-><init>()V

    .line 62
    iput-object p0, v0, Landroid/os/ServiceWithMetadata;->service:Landroid/os/IBinder;

    .line 63
    invoke-static {v0}, Landroid/os/Service;->serviceWithMetadata(Landroid/os/ServiceWithMetadata;)Landroid/os/Service;

    move-result-object p0

    return-object p0
.end method

.method public static 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/String;Ltop/bienvenido/date_24323/a2;Landroid/os/IBinder;Ljava/lang/Object;)Ltop/bienvenido/date_24323/a1;
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Working on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with invocation handler..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    new-instance v0, Ltop/bienvenido/date_24323/a1;

    invoke-direct {v0, p3, p1}, Ltop/bienvenido/date_24323/a1;-><init>(Ljava/lang/Object;Ltop/bienvenido/date_24323/a2;)V

    .line 94
    new-instance p1, Ltop/bienvenido/date_24323/k4;

    .line 95
    iget-object p3, v0, Ltop/bienvenido/date_24323/a1;->你爹我一顿暴打揍的你瞎妈的子宫打成稀巴烂浆糊然后把你蠢妈的肠子都拉出来做成美味可口的香肠大发慈悲喂给路边的那些流浪汉吃:Ljava/lang/Object;

    .line 96
    check-cast p3, Landroid/os/IInterface;

    .line 97
    invoke-direct {p1, p2, p3}, Ltop/bienvenido/date_24323/k4;-><init>(Landroid/os/IBinder;Landroid/os/IInterface;)V

    .line 101
    sget-object p2, Ltop/bienvenido/date_24323/t8;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/g9;

    monitor-enter p2

    .line 103
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p3

    invoke-static {p1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 104
    invoke-virtual {p2, p3, v1}, Ltop/bienvenido/date_24323/g9;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(ILjava/lang/Object;)Z

    .line 105
    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 106
    monitor-exit p2

    .line 110
    sget-object p2, Ltop/bienvenido/date_24323/t8;->要不要把你妈卵子扣出来给你做寿司吃:Ljava/util/Map;

    monitor-enter p2

    .line 112
    :try_start_1
    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    monitor-exit p2

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit p2

    throw p0

    :catchall_1
    move-exception p0

    .line 114
    monitor-exit p2

    throw p0
.end method

.method public static 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/String;Ltop/bienvenido/date_24323/a2;Ljava/lang/String;)Ltop/bienvenido/date_24323/a1;
    .locals 7

    .line 115
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Ltop/bienvenido/date_24323/t8;->要不要把你妈卵子扣出来给你做寿司吃:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 117
    :try_start_1
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    .line 118
    :try_start_2
    monitor-exit v1

    return-object v0

    :cond_0
    monitor-exit v1

    if-nez p2, :cond_2

    .line 127
    invoke-interface {v2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "$Stub"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, v0

    :goto_0
    if-nez p2, :cond_2

    return-object v0

    .line 130
    :cond_2
    const-string v1, "asInterface"

    .line 131
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/os/IBinder;

    const/4 v6, 0x0

    aput-object v5, v4, v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 132
    :try_start_3
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 133
    :try_start_4
    invoke-virtual {p2, v1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 134
    invoke-virtual {p2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 135
    new-instance v1, Ltop/bienvenido/date_24323/o2;

    invoke-direct {v1, p2}, Ltop/bienvenido/date_24323/o2;-><init>(Ljava/lang/reflect/Method;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 146
    :try_start_5
    sget-object p2, Ltop/bienvenido/date_24323/s2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/s2;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-object v1, p2

    goto :goto_1

    :catch_1
    move-exception p2

    .line 147
    :try_start_6
    sget-object p2, Ltop/bienvenido/date_24323/s2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/s2;

    move-object v1, p2

    .line 146
    :goto_1
    nop

    .line 147
    :goto_2
    nop

    .line 148
    new-array p2, v3, [Ljava/lang/Object;

    aput-object v2, p2, v6

    .line 149
    invoke-virtual {v1, v0, p2}, Ltop/bienvenido/date_24323/s2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_3

    return-object v0

    .line 150
    :cond_3
    invoke-static {p0, p1, v2, p2}, Ltop/bienvenido/date_24323/t8;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/String;Ltop/bienvenido/date_24323/a2;Landroid/os/IBinder;Ljava/lang/Object;)Ltop/bienvenido/date_24323/a1;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 151
    monitor-exit v1

    throw p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 118
    :catch_2
    move-exception p0

    .line 151
    return-object v0
.end method

.method public static 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰()V
    .locals 9

    .line 1
    :try_start_0
    const-class v0, Landroid/os/ServiceManager;

    .line 2
    const-string v1, "sServiceManager"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

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
    new-instance v3, Ltop/bienvenido/date_24323/q2;

    invoke-direct {v3, v0, v1}, Ltop/bienvenido/date_24323/q2;-><init>(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    goto :goto_2

    :catch_0
    move-exception v0

    .line 16
    :try_start_2
    sget-object v1, Ltop/bienvenido/date_24323/s2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/s2;

    .line 17
    :goto_2
    new-instance v0, Ltop/bienvenido/date_24323/a1;

    .line 18
    sget-object v3, Ltop/bienvenido/date_24323/q4;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/a2;

    .line 19
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ltop/bienvenido/date_24323/s2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_4

    .line 20
    :cond_2
    invoke-direct {v0, v5, v3}, Ltop/bienvenido/date_24323/a1;-><init>(Ljava/lang/Object;Ltop/bienvenido/date_24323/a2;)V

    .line 26
    const/4 v3, 0x2

    new-array v5, v3, [I

    const v6, -0x4beefd81

    const/4 v7, 0x0

    aput v6, v5, v7

    const v6, 0x72a6408d

    aput v6, v5, v2

    .line 27
    new-instance v6, Ltop/bienvenido/date_24323/r8;

    .line 28
    sget-object v8, Ltop/bienvenido/date_24323/s8;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/s8;

    .line 29
    invoke-direct {v6, v8}, Ltop/bienvenido/date_24323/r8;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 30
    invoke-virtual {v0, v5, v6}, Ltop/bienvenido/date_24323/a1;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰([ILtop/bienvenido/date_24323/a2;)V

    .line 31
    sget-boolean v5, Ltop/bienvenido/date_24323/父母们悬挂树木从尸体中养猪让灵车漂浮跳过坟墓螺旋爆炸砂纸打磨棺材冲浪火烧用尸体泡茶将米与骨灰混合在祖坟前唱歌以及埋葬聚会葬礼庆典骨髓汤浇脑花棺材开花;->我空降你爹葬礼用你妈子宫弹奏一曲dj版求佛为你爹亡灵超度:Z

    if-eqz v5, :cond_4

    .line 32
    sget-boolean v5, Ltop/bienvenido/date_24323/父母们悬挂树木从尸体中养猪让灵车漂浮跳过坟墓螺旋爆炸砂纸打磨棺材冲浪火烧用尸体泡茶将米与骨灰混合在祖坟前唱歌以及埋葬聚会葬礼庆典骨髓汤浇脑花棺材开花;->老子可是出了名的中国好舌头当年老子一舌头舔你妈的俩奶子舔完奶子再舔阴蒂把你妈调教像条母狗一样的乖你妈还自愿让老子每天肏哥的鸡巴肏的让你妈每天都跟活在天堂一样:Z

    if-eqz v5, :cond_3

    .line 33
    new-instance v5, Ltop/bienvenido/date_24323/t8$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Ltop/bienvenido/date_24323/t8$$ExternalSyntheticLambda0;-><init>()V

    goto :goto_3

    :cond_3
    new-instance v5, Ltop/bienvenido/date_24323/t8$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Ltop/bienvenido/date_24323/t8$$ExternalSyntheticLambda1;-><init>()V

    .line 56
    :goto_3
    new-array v3, v3, [I

    const v6, -0x31f0b26d

    aput v6, v3, v7

    const v6, -0x1dde2ebb

    aput v6, v3, v2

    .line 57
    new-instance v2, Ltop/bienvenido/date_24323/r8;

    invoke-direct {v2, v5}, Ltop/bienvenido/date_24323/r8;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 58
    invoke-virtual {v0, v3, v2}, Ltop/bienvenido/date_24323/a1;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰([ILtop/bienvenido/date_24323/a2;)V

    :cond_4
    nop

    .line 59
    iget-object v0, v0, Ltop/bienvenido/date_24323/a1;->你爹我一顿暴打揍的你瞎妈的子宫打成稀巴烂浆糊然后把你蠢妈的肠子都拉出来做成美味可口的香肠大发慈悲喂给路边的那些流浪汉吃:Ljava/lang/Object;

    .line 60
    invoke-virtual {v1, v4, v0}, Ltop/bienvenido/date_24323/s2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 33
    :catchall_0
    move-exception v0

    .line 60
    :goto_4
    return-void
.end method

.method public static final 要不要把你妈卵子扣出来给你做寿司吃(Ltop/bienvenido/date_24323/k4;)Landroid/os/Service;
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/os/Service;->binder(Landroid/os/IBinder;)Landroid/os/Service;

    move-result-object p0

    return-object p0
.end method
