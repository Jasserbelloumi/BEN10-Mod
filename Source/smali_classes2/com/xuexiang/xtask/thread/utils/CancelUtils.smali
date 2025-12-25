.class public final Lcom/xuexiang/xtask/thread/utils/CancelUtils;
.super Ljava/lang/Object;
.source "CancelUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancel(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;",
            ">;)V"
        }
    .end annotation

    .line 53
    .local p0, "cancelables":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;>;"
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 56
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;

    .line 57
    .local v1, "cancelable":Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    invoke-static {v1}, Lcom/xuexiang/xtask/thread/utils/CancelUtils;->cancel(Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;)Z

    .line 58
    .end local v1    # "cancelable":Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    goto :goto_0

    .line 59
    :cond_1
    return-void

    .line 54
    :cond_2
    :goto_1
    return-void
.end method

.method public static varargs cancel([Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;)V
    .locals 3
    .param p0, "cancelables"    # [Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;

    .line 67
    if-eqz p0, :cond_2

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 70
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 71
    .local v2, "cancelable":Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    invoke-static {v2}, Lcom/xuexiang/xtask/thread/utils/CancelUtils;->cancel(Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;)Z

    .line 70
    .end local v2    # "cancelable":Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    :cond_1
    return-void

    .line 68
    :cond_2
    :goto_1
    return-void
.end method

.method public static cancel(Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;)Z
    .locals 1
    .param p0, "cancelable"    # Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;

    .line 40
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    invoke-interface {p0}, Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;->cancel()V

    .line 42
    const/4 v0, 0x1

    return v0

    .line 44
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
