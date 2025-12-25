.class public final Ltop/bienvenido/mundo/common/ext/ExtQueryHandler;
.super Landroid/os/IpcDataCache$QueryHandler;
.source "r8-map-id-f931b081dc47fffbacb9b225b872bf9fbf452f68adc05d0e92c5bfbb559823b2"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/IpcDataCache$QueryHandler<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001B\u001b\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001b\u0010\u0008\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Ltop/bienvenido/mundo/common/ext/ExtQueryHandler;",
        "Landroid/os/IpcDataCache$QueryHandler;",
        "",
        "",
        "origin",
        "<init>",
        "(Landroid/os/IpcDataCache$QueryHandler;)V",
        "serviceQuery",
        "apply",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "mundo_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Landroid/os/IpcDataCache$QueryHandler;


# direct methods
.method public constructor <init>(Landroid/os/IpcDataCache$QueryHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$QueryHandler<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/os/IpcDataCache$QueryHandler;-><init>()V

    .line 2
    iput-object p1, p0, Ltop/bienvenido/mundo/common/ext/ExtQueryHandler;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Landroid/os/IpcDataCache$QueryHandler;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Ltop/bienvenido/mundo/common/ext/ExtQueryHandler;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Landroid/os/IpcDataCache$QueryHandler;

    invoke-virtual {v0, p1}, Landroid/os/IpcDataCache$QueryHandler;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const/4 p1, 0x0

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
