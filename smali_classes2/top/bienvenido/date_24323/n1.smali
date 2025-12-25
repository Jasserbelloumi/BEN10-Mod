.class public abstract Ltop/bienvenido/date_24323/n1;
.super Ljava/lang/Object;
.source "r8-map-id-f931b081dc47fffbacb9b225b872bf9fbf452f68adc05d0e92c5bfbb559823b2"


# direct methods
.method public static final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 4

    .line 8
    iget v0, p0, Landroid/content/pm/ResolveInfo;->priority:I

    .line 9
    iget v1, p1, Landroid/content/pm/ResolveInfo;->priority:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    return v3

    .line 14
    :cond_1
    iget-boolean p0, p0, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean p1, p1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq p0, p1, :cond_3

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v3

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 7
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public static final varargs 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    aget-object v2, p1, v1

    .line 5
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    move-object p0, v3

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/util/List;)Ljava/util/List;
    .locals 2

    .line 6
    new-instance v0, Ltop/bienvenido/date_24323/n1$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ltop/bienvenido/date_24323/n1$$ExternalSyntheticLambda0;-><init>()V

    new-instance v1, Ltop/bienvenido/date_24323/n1$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Ltop/bienvenido/date_24323/n1$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p0
.end method

.method public static final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(II)Z
    .locals 0

    .line 1
    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
