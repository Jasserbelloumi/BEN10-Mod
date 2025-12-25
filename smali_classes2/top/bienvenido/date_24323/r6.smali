.class public final Ltop/bienvenido/date_24323/r6;
.super Ljava/lang/Object;
.source "r8-map-id-f931b081dc47fffbacb9b225b872bf9fbf452f68adc05d0e92c5bfbb559823b2"


# instance fields
.field public final 我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:Ljava/util/ArrayList;

.field public final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ljava/lang/String;

.field public final 要不要把你妈卵子扣出来给你做寿司吃:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltop/bienvenido/date_24323/r6;->要不要把你妈卵子扣出来给你做寿司吃:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltop/bienvenido/date_24323/r6;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:Ljava/util/ArrayList;

    .line 6
    iput-object p1, p0, Ltop/bienvenido/date_24323/r6;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/net/Uri;ILandroid/os/IBinder;Z)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    :goto_0
    if-ne p2, v1, :cond_1

    .line 2
    iget-object p1, p0, Ltop/bienvenido/date_24323/r6;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:Ljava/util/ArrayList;

    new-instance p2, Ltop/bienvenido/date_24323/q6;

    invoke-direct {p2, p0, p3, p4}, Ltop/bienvenido/date_24323/q6;-><init>(Ltop/bienvenido/date_24323/r6;Landroid/os/IBinder;Z)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    if-eqz p1, :cond_3

    if-nez p2, :cond_2

    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    add-int/lit8 v2, p2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 6
    :goto_1
    iget-object v2, p0, Ltop/bienvenido/date_24323/r6;->要不要把你妈卵子扣出来给你做寿司吃:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_2
    if-ge v0, v2, :cond_5

    .line 8
    iget-object v3, p0, Ltop/bienvenido/date_24323/r6;->要不要把你妈卵子扣出来给你做寿司吃:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltop/bienvenido/date_24323/r6;

    .line 9
    iget-object v4, v3, Ltop/bienvenido/date_24323/r6;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 p2, p2, 0x1

    .line 10
    invoke-virtual {v3, p1, p2, p3, p4}, Ltop/bienvenido/date_24323/r6;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/net/Uri;ILandroid/os/IBinder;Z)V

    return-void

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 16
    :cond_5
    new-instance v0, Ltop/bienvenido/date_24323/r6;

    invoke-direct {v0, v1}, Ltop/bienvenido/date_24323/r6;-><init>(Ljava/lang/String;)V

    .line 17
    iget-object v1, p0, Ltop/bienvenido/date_24323/r6;->要不要把你妈卵子扣出来给你做寿司吃:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    .line 18
    invoke-virtual {v0, p1, p2, p3, p4}, Ltop/bienvenido/date_24323/r6;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/net/Uri;ILandroid/os/IBinder;Z)V

    return-void
.end method

.method public final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/net/Uri;ILandroid/os/IBinder;ZLjava/util/ArrayList;)V
    .locals 15

    move-object v0, p0

    move/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    const/4 v1, 0x0

    const/4 v11, 0x1

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v11

    :goto_0
    const/4 v3, 0x0

    if-lt v7, v2, :cond_1

    .line 20
    invoke-virtual {p0, v11, v8, v9, v10}, Ltop/bienvenido/date_24323/r6;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(ZLandroid/os/IBinder;ZLjava/util/ArrayList;)V

    move-object v12, v3

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_3

    if-nez v7, :cond_2

    .line 21
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto :goto_1

    .line 23
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    add-int/lit8 v3, v7, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v3, v2

    goto :goto_1

    :cond_3
    nop

    :goto_1
    nop

    .line 24
    invoke-virtual {p0, v1, v8, v9, v10}, Ltop/bienvenido/date_24323/r6;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(ZLandroid/os/IBinder;ZLjava/util/ArrayList;)V

    move-object v12, v3

    .line 27
    :goto_2
    iget-object v2, v0, Ltop/bienvenido/date_24323/r6;->要不要把你妈卵子扣出来给你做寿司吃:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    move v14, v1

    :goto_3
    if-ge v14, v13, :cond_6

    .line 29
    iget-object v1, v0, Ltop/bienvenido/date_24323/r6;->要不要把你妈卵子扣出来给你做寿司吃:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/bienvenido/date_24323/r6;

    if-eqz v12, :cond_4

    .line 30
    iget-object v2, v1, Ltop/bienvenido/date_24323/r6;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    add-int/lit8 v3, v7, 0x1

    .line 32
    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Ltop/bienvenido/date_24323/r6;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/net/Uri;ILandroid/os/IBinder;ZLjava/util/ArrayList;)V

    if-eqz v12, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    return-void
.end method

.method public final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(ZLandroid/os/IBinder;ZLjava/util/ArrayList;)V
    .locals 4

    .line 55
    iget-object v0, p0, Ltop/bienvenido/date_24323/r6;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 57
    iget-object v2, p0, Ltop/bienvenido/date_24323/r6;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/bienvenido/date_24323/q6;

    .line 61
    iget-object v3, v2, Ltop/bienvenido/date_24323/q6;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Landroid/os/IBinder;

    if-ne v3, p2, :cond_0

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    .line 66
    iget-boolean v2, v2, Ltop/bienvenido/date_24323/q6;->要不要把你妈卵子扣出来给你做寿司吃:Z

    if-eqz v2, :cond_2

    .line 67
    :cond_1
    new-instance v2, Ltop/bienvenido/date_24323/p6;

    invoke-direct {v2, p0, v3, p3}, Ltop/bienvenido/date_24323/p6;-><init>(Ltop/bienvenido/date_24323/r6;Landroid/os/IBinder;Z)V

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/os/IBinder;)Z
    .locals 6

    .line 33
    iget-object v0, p0, Ltop/bienvenido/date_24323/r6;->要不要把你妈卵子扣出来给你做寿司吃:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    .line 35
    iget-object v4, p0, Ltop/bienvenido/date_24323/r6;->要不要把你妈卵子扣出来给你做寿司吃:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltop/bienvenido/date_24323/r6;

    invoke-virtual {v4, p1}, Ltop/bienvenido/date_24323/r6;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/os/IBinder;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 37
    iget-object v4, p0, Ltop/bienvenido/date_24323/r6;->要不要把你妈卵子扣出来给你做寿司吃:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/2addr v2, v3

    goto :goto_0

    .line 43
    :cond_1
    iget-object v0, p0, Ltop/bienvenido/date_24323/r6;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_3

    .line 45
    iget-object v4, p0, Ltop/bienvenido/date_24323/r6;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltop/bienvenido/date_24323/q6;

    .line 46
    iget-object v5, v4, Ltop/bienvenido/date_24323/q6;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Landroid/os/IBinder;

    if-ne v5, p1, :cond_2

    .line 47
    iget-object v0, p0, Ltop/bienvenido/date_24323/r6;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 49
    invoke-interface {p1, v4, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 54
    :cond_3
    :goto_2
    iget-object p1, p0, Ltop/bienvenido/date_24323/r6;->要不要把你妈卵子扣出来给你做寿司吃:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Ltop/bienvenido/date_24323/r6;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    return v3

    :cond_4
    return v1
.end method
