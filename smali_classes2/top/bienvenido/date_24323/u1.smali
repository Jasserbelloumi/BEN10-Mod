.class public final Ltop/bienvenido/date_24323/u1;
.super Ltop/bienvenido/date_24323/v0;
.source "r8-map-id-f931b081dc47fffbacb9b225b872bf9fbf452f68adc05d0e92c5bfbb559823b2"


# instance fields
.field public final synthetic 你妈在万人广场卖逼你废物爹不仅不阻止反而跟你妈一起跟天下人民普天同庆你每晚草你妈生龙活虎你妈疼的呲牙咧嘴你妈逼上的阴齿都满足不了你这杂种的狂野性需求啊草你妈:Ltop/bienvenido/date_24323/y1;


# direct methods
.method public constructor <init>(Ltop/bienvenido/date_24323/y1;Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    iput-object p1, p0, Ltop/bienvenido/date_24323/u1;->你妈在万人广场卖逼你废物爹不仅不阻止反而跟你妈一起跟天下人民普天同庆你每晚草你妈生龙活虎你妈疼的呲牙咧嘴你妈逼上的阴齿都满足不了你这杂种的狂野性需求啊草你妈:Ltop/bienvenido/date_24323/y1;

    invoke-direct {p0}, Ltop/bienvenido/date_24323/v0;-><init>()V

    .line 94
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/PackageParser$Provider;

    .line 95
    iget-object v0, p2, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    if-nez v0, :cond_1

    goto :goto_0

    .line 96
    :cond_1
    iget-object p2, p2, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    .line 180
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    .line 181
    invoke-virtual {p0, v0}, Ltop/bienvenido/date_24323/v0;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/content/IntentFilter;)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/content/IntentFilter;II)Ljava/lang/Object;
    .locals 6

    .line 1
    move-object v3, p1

    check-cast v3, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    .line 2
    iget-object v0, p0, Ltop/bienvenido/date_24323/u1;->你妈在万人广场卖逼你废物爹不仅不阻止反而跟你妈一起跟天下人民普天同庆你每晚草你妈生龙活虎你妈疼的呲牙咧嘴你妈逼上的阴齿都满足不了你这杂种的狂野性需求啊草你妈:Ltop/bienvenido/date_24323/y1;

    .line 3
    iget-object p1, v3, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 4
    new-instance v2, Ltop/bienvenido/date_24323/s1;

    sget-object p1, Ltop/bienvenido/date_24323/t1;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/t1;

    invoke-direct {v2, p1}, Ltop/bienvenido/date_24323/s1;-><init>(Ljava/lang/Object;)V

    .line 5
    move v4, p3

    move v5, p2

    invoke-static/range {v0 .. v5}, Ltop/bienvenido/date_24323/y1;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ltop/bienvenido/date_24323/y1;Landroid/content/pm/ComponentInfo;Lkotlin/jvm/functions/Function2;Landroid/content/pm/PackageParser$IntentInfo;II)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method

.method public final 要不要把你妈卵子扣出来给你做寿司吃(Landroid/content/IntentFilter;)I
    .locals 0

    .line 1
    check-cast p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    .line 2
    iget-object p1, p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    iget-object p1, p1, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    return p1
.end method
