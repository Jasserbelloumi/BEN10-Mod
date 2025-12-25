.class public final Ltop/bienvenido/date_24323/f3;
.super Ltop/bienvenido/mundo/common/ext/MundoAccountResponse;
.source "r8-map-id-f931b081dc47fffbacb9b225b872bf9fbf452f68adc05d0e92c5bfbb559823b2"


# instance fields
.field public final synthetic 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Ltop/bienvenido/date_24323/f3;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Landroid/os/IBinder;

    .line 1
    invoke-direct {p0}, Ltop/bienvenido/mundo/common/ext/MundoAccountResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onResult(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    const-string v0, "accounts"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 5
    array-length v1, p1

    .line 6
    new-array v2, v1, [Landroid/accounts/Account;

    :goto_0
    if-ge v0, v1, :cond_1

    .line 9
    aget-object v3, p1, v0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11
    :cond_1
    sget-object p1, Ltop/bienvenido/date_24323/k3;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/k3;

    .line 12
    iget-object v0, p0, Ltop/bienvenido/date_24323/f3;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Landroid/os/IBinder;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2}, Ltop/bienvenido/date_24323/k3;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/os/IBinder;[Landroid/accounts/Account;)V

    return-void
.end method
