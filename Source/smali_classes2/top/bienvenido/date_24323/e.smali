.class public final Ltop/bienvenido/date_24323/e;
.super Ljava/lang/Object;
.source "r8-map-id-f931b081dc47fffbacb9b225b872bf9fbf452f68adc05d0e92c5bfbb559823b2"


# static fields
.field public static final 我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:Ljava/util/ArrayList;

.field public static final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ljava/lang/String;

.field public static final 要不要把你妈卵子扣出来给你做寿司吃:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    const-string v0, "blackeji.62v.net"

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/16 v5, 0x10

    if-ge v4, v5, :cond_0

    .line 4
    const/16 v5, 0x24

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    const-string v6, "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    sput-object v1, Ltop/bienvenido/date_24323/e;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ljava/lang/String;

    .line 50
    const-string v4, "35133133"

    const-string v5, "86576905"

    const-string v6, "86811305"

    const-string v7, "86538206"

    const-string v8, "35619596"

    const-string v9, "86415006"

    const-string v10, "86953506"

    const-string v11, "86866106"

    filled-new-array/range {v4 .. v11}, [Ljava/lang/String;

    move-result-object v1

    .line 51
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    const/16 v4, 0x8

    .line 52
    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget-object v1, v1, v4

    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v1, v3

    :goto_1
    const/4 v5, 0x6

    const/16 v6, 0xa

    if-ge v1, v5, :cond_1

    .line 55
    invoke-virtual {v2, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 57
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v2, v3

    move v5, v2

    move v7, v5

    :goto_2
    const/16 v8, 0xe

    const/16 v9, 0x30

    const/4 v10, 0x2

    if-ge v2, v8, :cond_4

    .line 58
    rem-int/lit8 v8, v2, 0x2

    if-nez v8, :cond_2

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/2addr v8, v5

    add-int/lit8 v5, v8, -0x30

    goto :goto_3

    .line 61
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    sub-int/2addr v8, v9

    mul-int/2addr v8, v10

    if-ge v8, v6, :cond_3

    add-int/2addr v7, v8

    goto :goto_3

    :cond_3
    add-int/lit8 v7, v7, 0x1

    add-int/2addr v7, v8

    sub-int/2addr v7, v6

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    add-int/2addr v5, v7

    .line 71
    rem-int/2addr v5, v6

    if-nez v5, :cond_5

    goto :goto_4

    :cond_5
    rsub-int/lit8 v1, v5, 0x3a

    int-to-char v9, v1

    .line 72
    :goto_4
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 74
    sput-object v1, Ltop/bienvenido/date_24323/e;->要不要把你妈卵子扣出来给你做寿司吃:Ljava/lang/String;

    .line 75
    :try_start_0
    sget-boolean v1, Ltop/bienvenido/date_24323/父母们悬挂树木从尸体中养猪让灵车漂浮跳过坟墓螺旋爆炸砂纸打磨棺材冲浪火烧用尸体泡茶将米与骨灰混合在祖坟前唱歌以及埋葬聚会葬礼庆典骨髓汤浇脑花棺材开花;->要不要把你妈卵子扣出来给你做寿司吃:Z

    if-eqz v1, :cond_8

    .line 76
    const/4 v1, 0x1

    new-array v2, v1, [Landroid/telephony/SubscriptionInfo;

    .line 77
    sget-object v4, Ltop/bienvenido/date_24323/t9;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Lsun/misc/Unsafe;

    .line 78
    const-class v5, Landroid/telephony/SubscriptionInfo;

    .line 79
    invoke-virtual {v4, v5}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :try_start_1
    const-string v5, "mDisplayName"

    invoke-static {v5, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    .line 85
    const-string v6, "mIccId"

    sget-object v7, Ltop/bienvenido/date_24323/e;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ljava/lang/String;

    invoke-static {v6, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    .line 86
    const-string v8, "mCarrierName"

    invoke-static {v8, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 87
    const-string v8, "mNumber"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    .line 88
    const-string v9, "mCountryIso"

    const-string v11, "826"

    invoke-static {v9, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/4 v11, 0x5

    new-array v12, v11, [Lkotlin/Pair;

    aput-object v5, v12, v3

    aput-object v6, v12, v1

    aput-object v0, v12, v10

    const/4 v0, 0x3

    aput-object v8, v12, v0

    const/4 v0, 0x4

    aput-object v9, v12, v0

    move v0, v3

    :goto_5
    if-ge v0, v11, :cond_6

    .line 89
    aget-object v5, v12, v0

    .line 92
    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 93
    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v5

    .line 94
    new-instance v8, Ltop/bienvenido/date_24323/n2;

    invoke-direct {v8, v6}, Ltop/bienvenido/date_24323/n2;-><init>(Ljava/lang/String;)V

    .line 95
    iget-object v6, v8, Ltop/bienvenido/date_24323/n2;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/s2;

    invoke-virtual {v6, v4, v5}, Ltop/bienvenido/date_24323/s2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 96
    :cond_6
    sget-boolean v0, Ltop/bienvenido/date_24323/父母们悬挂树木从尸体中养猪让灵车漂浮跳过坟墓螺旋爆炸砂纸打磨棺材冲浪火烧用尸体泡茶将米与骨灰混合在祖坟前唱歌以及埋葬聚会葬礼庆典骨髓汤浇脑花棺材开花;->你妈在万人广场卖逼你废物爹不仅不阻止反而跟你妈一起跟天下人民普天同庆你每晚草你妈生龙活虎你妈疼的呲牙咧嘴你妈逼上的阴齿都满足不了你这杂种的狂野性需求啊草你妈:Z

    if-eqz v0, :cond_7

    .line 97
    const-string v0, "mGroupOwner"

    const-string v5, ""

    invoke-static {v0, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 98
    const-string v5, "mCardString"

    invoke-static {v5, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    new-array v6, v10, [Lkotlin/Pair;

    aput-object v0, v6, v3

    aput-object v5, v6, v1

    move v0, v3

    :goto_6
    if-ge v0, v10, :cond_7

    .line 99
    aget-object v1, v6, v0

    .line 102
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 103
    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    .line 104
    new-instance v7, Ltop/bienvenido/date_24323/n2;

    invoke-direct {v7, v5}, Ltop/bienvenido/date_24323/n2;-><init>(Ljava/lang/String;)V

    .line 105
    iget-object v5, v7, Ltop/bienvenido/date_24323/n2;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/s2;

    invoke-virtual {v5, v4, v1}, Ltop/bienvenido/date_24323/s2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 95
    :catch_0
    move-exception v0

    .line 106
    :cond_7
    :try_start_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 107
    aput-object v4, v2, v3

    .line 108
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    .line 105
    :catchall_0
    move-exception v0

    .line 108
    :cond_8
    const/4 v0, 0x0

    .line 109
    :goto_7
    sput-object v0, Ltop/bienvenido/date_24323/e;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
