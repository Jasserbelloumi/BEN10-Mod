.class public final Lcom/xuexiang/xtask/thread/pool/cancel/TaskCancellerPool;
.super Ljava/lang/Object;
.source "TaskCancellerPool.java"

# interfaces
.implements Lcom/xuexiang/xtask/thread/pool/cancel/ICancellerPool;


# instance fields
.field private mPool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xuexiang/xtask/thread/pool/cancel/TaskCancellerPool;->mPool:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cancelable"    # Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;

    .line 38
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/xuexiang/xtask/thread/pool/cancel/TaskCancellerPool;->mPool:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 39
    :cond_2
    :goto_0
    return v0
.end method

.method public cancel(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 72
    .local p1, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 73
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/xuexiang/xtask/thread/pool/cancel/TaskCancellerPool;->cancel(Ljava/lang/String;)Z

    .line 74
    .end local v1    # "name":Ljava/lang/String;
    goto :goto_0

    .line 75
    :cond_0
    return-void
.end method

.method public varargs cancel([Ljava/lang/String;)V
    .locals 3
    .param p1, "names"    # [Ljava/lang/String;

    .line 65
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 66
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/xuexiang/xtask/thread/pool/cancel/TaskCancellerPool;->cancel(Ljava/lang/String;)Z

    .line 65
    .end local v2    # "name":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    :cond_0
    return-void
.end method

.method public cancel(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 54
    if-nez p1, :cond_0

    .line 55
    const/4 v0, 0x0

    return v0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/pool/cancel/TaskCancellerPool;->mPool:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;

    .line 58
    .local v0, "cancelable":Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    invoke-static {v0}, Lcom/xuexiang/xtask/thread/utils/CancelUtils;->cancel(Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;)Z

    move-result v1

    .line 59
    .local v1, "result":Z
    iget-object v2, p0, Lcom/xuexiang/xtask/thread/pool/cancel/TaskCancellerPool;->mPool:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return v1
.end method

.method public cancelAll()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/pool/cancel/TaskCancellerPool;->mPool:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/pool/cancel/TaskCancellerPool;->mPool:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/xuexiang/xtask/thread/utils/CancelUtils;->cancel(Ljava/util/Collection;)V

    .line 83
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/pool/cancel/TaskCancellerPool;->mPool:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 84
    return-void
.end method

.method public clear(Z)V
    .locals 1
    .param p1, "ifNeedCancel"    # Z

    .line 88
    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/xuexiang/xtask/thread/pool/cancel/TaskCancellerPool;->cancelAll()V

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/pool/cancel/TaskCancellerPool;->mPool:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 93
    :goto_0
    return-void
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 47
    return v0

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/xuexiang/xtask/thread/pool/cancel/TaskCancellerPool;->mPool:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
