.class public final Ltop/bienvenido/date_24323/o8;
.super Ltop/bienvenido/date_24323/u8;
.source "r8-map-id-f931b081dc47fffbacb9b225b872bf9fbf452f68adc05d0e92c5bfbb559823b2"


# instance fields
.field public final 我空降你爹葬礼用你妈子宫弹奏一曲dj版求佛为你爹亡灵超度:Landroid/accounts/Account;


# direct methods
.method public constructor <init>(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Z)V
    .locals 8

    .line 1
    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 2
    iget-object v5, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 3
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    invoke-direct/range {v0 .. v7}, Ltop/bienvenido/date_24323/u8;-><init>(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V

    .line 4
    iput-object p2, p0, Ltop/bienvenido/date_24323/o8;->我空降你爹葬礼用你妈子宫弹奏一曲dj版求佛为你爹亡灵超度:Landroid/accounts/Account;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    const-string v0, "booleanResult"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    const-string v1, "intent"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    sget-object v0, Ltop/bienvenido/date_24323/k3;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/k3;

    iget-object v1, p0, Ltop/bienvenido/date_24323/o8;->我空降你爹葬礼用你妈子宫弹奏一曲dj版求佛为你爹亡灵超度:Landroid/accounts/Account;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Ltop/bienvenido/date_24323/k3;->你爹我一顿暴打揍的你瞎妈的子宫打成稀巴烂浆糊然后把你蠢妈的肠子都拉出来做成美味可口的香肠大发慈悲喂给路边的那些流浪汉吃(Landroid/accounts/Account;)Z

    .line 8
    :cond_0
    invoke-virtual {p0}, Ltop/bienvenido/date_24323/u8;->用搅拌机把你妈的阴扩一下()Landroid/accounts/IAccountManagerResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11
    :try_start_0
    invoke-interface {v0, p1}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 17
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Ltop/bienvenido/date_24323/u8;->onResult(Landroid/os/Bundle;)V

    return-void
.end method

.method public final 我空降你爹葬礼用你妈子宫弹奏一曲dj版求佛为你爹亡灵超度()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltop/bienvenido/date_24323/u8;->虽然不是同一时间但是是同一个你妈你爹我再次挑战一把吃阴第:Landroid/accounts/IAccountAuthenticator;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Ltop/bienvenido/date_24323/o8;->我空降你爹葬礼用你妈子宫弹奏一曲dj版求佛为你爹亡灵超度:Landroid/accounts/Account;

    invoke-interface {v0, p0, v1}, Landroid/accounts/IAccountAuthenticator;->getAccountRemovalAllowed(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;)V

    :cond_0
    return-void
.end method
