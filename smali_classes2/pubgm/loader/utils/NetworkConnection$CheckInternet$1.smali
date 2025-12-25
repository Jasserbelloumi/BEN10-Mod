.class Lpubgm/loader/utils/NetworkConnection$CheckInternet$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpubgm/loader/utils/NetworkConnection$CheckInternet;->registerNetworkCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpubgm/loader/utils/NetworkConnection$CheckInternet;

.field final synthetic val$toast:Lcom/blankj/molihuan/utilcode/util/ToastUtils;


# direct methods
.method constructor <init>(Lpubgm/loader/utils/NetworkConnection$CheckInternet;Lcom/blankj/molihuan/utilcode/util/ToastUtils;)V
    .locals 0
    .param p1, "this$0"    # Lpubgm/loader/utils/NetworkConnection$CheckInternet;

    .line 33
    iput-object p1, p0, Lpubgm/loader/utils/NetworkConnection$CheckInternet$1;->this$0:Lpubgm/loader/utils/NetworkConnection$CheckInternet;

    iput-object p2, p0, Lpubgm/loader/utils/NetworkConnection$CheckInternet$1;->val$toast:Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 36
    iget-object v0, p0, Lpubgm/loader/utils/NetworkConnection$CheckInternet$1;->this$0:Lpubgm/loader/utils/NetworkConnection$CheckInternet;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lpubgm/loader/utils/NetworkConnection$CheckInternet;->isShow:Z

    .line 37
    invoke-static {}, Lpubgm/loader/BoxApplication;->get()Lpubgm/loader/BoxApplication;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lpubgm/loader/BoxApplication;->setInternetAvailable(Z)V

    .line 38
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .line 42
    invoke-static {}, Lpubgm/loader/BoxApplication;->get()Lpubgm/loader/BoxApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lpubgm/loader/BoxApplication;->setInternetAvailable(Z)V

    .line 43
    iget-object v0, p0, Lpubgm/loader/utils/NetworkConnection$CheckInternet$1;->this$0:Lpubgm/loader/utils/NetworkConnection$CheckInternet;

    iget-boolean v0, v0, Lpubgm/loader/utils/NetworkConnection$CheckInternet;->isShow:Z

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lpubgm/loader/utils/NetworkConnection$CheckInternet$1;->val$toast:Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    const v1, 0x7f0800f3

    invoke-virtual {v0, v1}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->setLeftIcon(I)Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    .line 45
    iget-object v0, p0, Lpubgm/loader/utils/NetworkConnection$CheckInternet$1;->val$toast:Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    const-wide v1, -0x69048c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->show(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, p0, Lpubgm/loader/utils/NetworkConnection$CheckInternet$1;->this$0:Lpubgm/loader/utils/NetworkConnection$CheckInternet;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lpubgm/loader/utils/NetworkConnection$CheckInternet;->isShow:Z

    .line 48
    :cond_0
    return-void
.end method
