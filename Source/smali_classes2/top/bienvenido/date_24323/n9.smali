.class public final Ltop/bienvenido/date_24323/n9;
.super Ltop/bienvenido/date_24323/u8;
.source "r8-map-id-f931b081dc47fffbacb9b225b872bf9fbf452f68adc05d0e92c5bfbb559823b2"


# instance fields
.field public final 我空降你爹葬礼用你妈子宫弹奏一曲dj版求佛为你爹亡灵超度:Landroid/accounts/Account;

.field public final 老子可是出了名的中国好舌头当年老子一舌头舔你妈的俩奶子舔完奶子再舔阴蒂把你妈调教像条母狗一样的乖你妈还自愿让老子每天肏哥的鸡巴肏的让你妈每天都跟活在天堂一样:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 2
    iget-object v5, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 3
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Ltop/bienvenido/date_24323/u8;-><init>(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V

    .line 4
    iput-object p2, p0, Ltop/bienvenido/date_24323/n9;->我空降你爹葬礼用你妈子宫弹奏一曲dj版求佛为你爹亡灵超度:Landroid/accounts/Account;

    iput-object p3, p0, Ltop/bienvenido/date_24323/n9;->老子可是出了名的中国好舌头当年老子一舌头舔你妈的俩奶子舔完奶子再舔阴蒂把你妈调教像条母狗一样的乖你妈还自愿让老子每天肏哥的鸡巴肏的让你妈每天都跟活在天堂一样:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    const-string v0, "booleanResult"

    invoke-virtual {p0}, Ltop/bienvenido/date_24323/u8;->用搅拌机把你妈的阴扩一下()Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x5

    .line 5
    :try_start_0
    const-string v0, "null bundle"

    invoke-interface {v1, p1, v0}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V

    return-void

    .line 8
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 10
    nop

    .line 11
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 12
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 16
    invoke-interface {v1, v2}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 5
    :catch_0
    move-exception p1

    .line 16
    :cond_1
    return-void
.end method

.method public final 我空降你爹葬礼用你妈子宫弹奏一曲dj版求佛为你爹亡灵超度()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Ltop/bienvenido/date_24323/u8;->虽然不是同一时间但是是同一个你妈你爹我再次挑战一把吃阴第:Landroid/accounts/IAccountAuthenticator;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Ltop/bienvenido/date_24323/n9;->我空降你爹葬礼用你妈子宫弹奏一曲dj版求佛为你爹亡灵超度:Landroid/accounts/Account;

    iget-object v2, p0, Ltop/bienvenido/date_24323/n9;->老子可是出了名的中国好舌头当年老子一舌头舔你妈的俩奶子舔完奶子再舔阴蒂把你妈调教像条母狗一样的乖你妈还自愿让老子每天肏哥的鸡巴肏的让你妈每天都跟活在天堂一样:[Ljava/lang/String;

    invoke-interface {v0, p0, v1, v2}, Landroid/accounts/IAccountAuthenticator;->hasFeatures(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    .line 5
    const-string v1, "remote exception"

    invoke-virtual {p0, v0, v1}, Ltop/bienvenido/date_24323/u8;->onError(ILjava/lang/String;)V

    return-void
.end method
