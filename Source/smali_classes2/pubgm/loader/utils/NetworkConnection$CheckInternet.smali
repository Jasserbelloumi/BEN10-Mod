.class public Lpubgm/loader/utils/NetworkConnection$CheckInternet;
.super Ljava/lang/Object;
.source "NetworkConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpubgm/loader/utils/NetworkConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckInternet"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field isShow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lpubgm/loader/utils/NetworkConnection$CheckInternet;->isShow:Z

    .line 21
    iput-object p1, p0, Lpubgm/loader/utils/NetworkConnection$CheckInternet;->context:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method public registerNetworkCallback()V
    .locals 5

    .line 26
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->make()Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    move-result-object v0

    .line 27
    .local v0, "toast":Lcom/blankj/molihuan/utilcode/util/ToastUtils;
    invoke-virtual {v0}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->setNotUseSystemToast()Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    .line 30
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lpubgm/loader/utils/NetworkConnection$CheckInternet;->context:Landroid/content/Context;

    const-wide v3, -0x693d8c1d73e5L

    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 31
    .local v2, "connectivityManager":Landroid/net/ConnectivityManager;
    new-instance v3, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v3}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 32
    .local v3, "builder":Landroid/net/NetworkRequest$Builder;
    new-instance v4, Lpubgm/loader/utils/NetworkConnection$CheckInternet$1;

    invoke-direct {v4, p0, v0}, Lpubgm/loader/utils/NetworkConnection$CheckInternet$1;-><init>(Lpubgm/loader/utils/NetworkConnection$CheckInternet;Lcom/blankj/molihuan/utilcode/util/ToastUtils;)V

    invoke-virtual {v2, v4}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 50
    invoke-static {}, Lpubgm/loader/BoxApplication;->get()Lpubgm/loader/BoxApplication;

    move-result-object v4

    invoke-virtual {v4, v1}, Lpubgm/loader/BoxApplication;->setInternetAvailable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v2    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v3    # "builder":Landroid/net/NetworkRequest$Builder;
    goto :goto_0

    .line 51
    :catch_0
    move-exception v2

    .line 52
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lpubgm/loader/BoxApplication;->get()Lpubgm/loader/BoxApplication;

    move-result-object v3

    invoke-virtual {v3, v1}, Lpubgm/loader/BoxApplication;->setInternetAvailable(Z)V

    .line 54
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
