.class public final Lcom/xuexiang/xtask/thread/utils/ExecutorUtils;
.super Ljava/lang/Object;
.source "ExecutorUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isMainThread()Z
    .locals 2

    .line 68
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static shutdown(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/ExecutorService;",
            ">;)V"
        }
    .end annotation

    .line 54
    .local p0, "executors":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/ExecutorService;>;"
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 57
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ExecutorService;

    .line 58
    .local v1, "executor":Ljava/util/concurrent/ExecutorService;
    invoke-static {v1}, Lcom/xuexiang/xtask/thread/utils/ExecutorUtils;->shutdown(Ljava/util/concurrent/ExecutorService;)V

    .line 59
    .end local v1    # "executor":Ljava/util/concurrent/ExecutorService;
    goto :goto_0

    .line 60
    :cond_1
    return-void

    .line 55
    :cond_2
    :goto_1
    return-void
.end method

.method public static shutdown(Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .param p0, "executor"    # Ljava/util/concurrent/ExecutorService;

    .line 43
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 46
    :cond_0
    return-void
.end method
