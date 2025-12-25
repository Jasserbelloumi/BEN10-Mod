.class public final Lcom/xuexiang/xtask/utils/CancellerPoolUtils;
.super Ljava/lang/Object;
.source "CancellerPoolUtils.java"


# static fields
.field private static sCancellerPool:Lcom/xuexiang/xtask/thread/pool/cancel/ICancellerPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/xuexiang/xtask/thread/pool/cancel/TaskCancellerPool;

    invoke-direct {v0}, Lcom/xuexiang/xtask/thread/pool/cancel/TaskCancellerPool;-><init>()V

    sput-object v0, Lcom/xuexiang/xtask/utils/CancellerPoolUtils;->sCancellerPool:Lcom/xuexiang/xtask/thread/pool/cancel/ICancellerPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static add(Ljava/lang/String;Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "cancelable"    # Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;

    .line 57
    sget-object v0, Lcom/xuexiang/xtask/utils/CancellerPoolUtils;->sCancellerPool:Lcom/xuexiang/xtask/thread/pool/cancel/ICancellerPool;

    invoke-interface {v0, p0, p1}, Lcom/xuexiang/xtask/thread/pool/cancel/ICancellerPool;->add(Ljava/lang/String;Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;)Z

    move-result v0

    return v0
.end method

.method public static cancel(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 96
    .local p0, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    sget-object v0, Lcom/xuexiang/xtask/utils/CancellerPoolUtils;->sCancellerPool:Lcom/xuexiang/xtask/thread/pool/cancel/ICancellerPool;

    invoke-interface {v0, p0}, Lcom/xuexiang/xtask/thread/pool/cancel/ICancellerPool;->cancel(Ljava/util/Collection;)V

    .line 97
    return-void
.end method

.method public static varargs cancel([Ljava/lang/String;)V
    .locals 1
    .param p0, "names"    # [Ljava/lang/String;

    .line 86
    sget-object v0, Lcom/xuexiang/xtask/utils/CancellerPoolUtils;->sCancellerPool:Lcom/xuexiang/xtask/thread/pool/cancel/ICancellerPool;

    invoke-interface {v0, p0}, Lcom/xuexiang/xtask/thread/pool/cancel/ICancellerPool;->cancel([Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public static cancel(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 77
    sget-object v0, Lcom/xuexiang/xtask/utils/CancellerPoolUtils;->sCancellerPool:Lcom/xuexiang/xtask/thread/pool/cancel/ICancellerPool;

    invoke-interface {v0, p0}, Lcom/xuexiang/xtask/thread/pool/cancel/ICancellerPool;->cancel(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static cancelAll()V
    .locals 1

    .line 103
    sget-object v0, Lcom/xuexiang/xtask/utils/CancellerPoolUtils;->sCancellerPool:Lcom/xuexiang/xtask/thread/pool/cancel/ICancellerPool;

    invoke-interface {v0}, Lcom/xuexiang/xtask/thread/pool/cancel/ICancellerPool;->cancelAll()V

    .line 104
    return-void
.end method

.method public static clear(Z)V
    .locals 1
    .param p0, "ifNeedCancel"    # Z

    .line 112
    sget-object v0, Lcom/xuexiang/xtask/utils/CancellerPoolUtils;->sCancellerPool:Lcom/xuexiang/xtask/thread/pool/cancel/ICancellerPool;

    invoke-interface {v0, p0}, Lcom/xuexiang/xtask/thread/pool/cancel/ICancellerPool;->clear(Z)V

    .line 113
    return-void
.end method

.method public static remove(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 67
    sget-object v0, Lcom/xuexiang/xtask/utils/CancellerPoolUtils;->sCancellerPool:Lcom/xuexiang/xtask/thread/pool/cancel/ICancellerPool;

    invoke-interface {v0, p0}, Lcom/xuexiang/xtask/thread/pool/cancel/ICancellerPool;->remove(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setCancellerPool(Lcom/xuexiang/xtask/thread/pool/cancel/ICancellerPool;)V
    .locals 0
    .param p0, "sCancellerPool"    # Lcom/xuexiang/xtask/thread/pool/cancel/ICancellerPool;

    .line 46
    sput-object p0, Lcom/xuexiang/xtask/utils/CancellerPoolUtils;->sCancellerPool:Lcom/xuexiang/xtask/thread/pool/cancel/ICancellerPool;

    .line 47
    return-void
.end method
