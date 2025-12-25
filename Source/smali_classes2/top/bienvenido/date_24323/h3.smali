.class public final Ltop/bienvenido/date_24323/h3;
.super Ltop/bienvenido/date_24323/u8;
.source "r8-map-id-f931b081dc47fffbacb9b225b872bf9fbf452f68adc05d0e92c5bfbb559823b2"


# instance fields
.field public final synthetic 我空降你爹葬礼用你妈子宫弹奏一曲dj版求佛为你爹亡灵超度:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/IAccountManagerResponse;)V
    .locals 8

    iput-object p2, p0, Ltop/bienvenido/date_24323/h3;->我空降你爹葬礼用你妈子宫弹奏一曲dj版求佛为你爹亡灵超度:Ljava/lang/String;

    .line 1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Ltop/bienvenido/date_24323/u8;-><init>(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    const-string v0, "authTokenLabelKey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-super {p0, v1}, Ltop/bienvenido/date_24323/u8;->onResult(Landroid/os/Bundle;)V

    return-void

    .line 7
    :cond_0
    invoke-super {p0, p1}, Ltop/bienvenido/date_24323/u8;->onResult(Landroid/os/Bundle;)V

    return-void
.end method

.method public final 我空降你爹葬礼用你妈子宫弹奏一曲dj版求佛为你爹亡灵超度()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltop/bienvenido/date_24323/u8;->虽然不是同一时间但是是同一个你妈你爹我再次挑战一把吃阴第:Landroid/accounts/IAccountAuthenticator;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Ltop/bienvenido/date_24323/h3;->我空降你爹葬礼用你妈子宫弹奏一曲dj版求佛为你爹亡灵超度:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Landroid/accounts/IAccountAuthenticator;->getAuthTokenLabel(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
