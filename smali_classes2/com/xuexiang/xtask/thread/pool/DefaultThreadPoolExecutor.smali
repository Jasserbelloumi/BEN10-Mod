.class public Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;
.super Lcom/xuexiang/xtask/thread/pool/base/BaseThreadPoolExecutor;
.source "DefaultThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;,
        Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$DefaultFuture;
    }
.end annotation


# direct methods
.method private constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 0
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p7, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p8, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    .line 95
    .local p6, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-direct/range {p0 .. p8}, Lcom/xuexiang/xtask/thread/pool/base/BaseThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 96
    return-void
.end method

.method synthetic constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # J
    .param p5, "x3"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "x4"    # Ljava/util/concurrent/BlockingQueue;
    .param p7, "x5"    # Ljava/util/concurrent/ThreadFactory;
    .param p8, "x6"    # Ljava/util/concurrent/RejectedExecutionHandler;
    .param p9, "x7"    # Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$1;

    .line 40
    invoke-direct/range {p0 .. p8}, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-void
.end method

.method public static getDefault()Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;
    .locals 1

    .line 48
    new-instance v0, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;

    invoke-direct {v0}, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;->build()Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;
    .locals 1

    .line 57
    new-instance v0, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;

    invoke-direct {v0}, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;-><init>()V

    return-object v0
.end method

.method public static newBuilder(I)Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;
    .locals 1
    .param p0, "corePoolSize"    # I

    .line 67
    new-instance v0, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;

    invoke-direct {v0, p0}, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;-><init>(I)V

    return-object v0
.end method

.method public static newBuilder(IIJLjava/util/concurrent/TimeUnit;)Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;
    .locals 7
    .param p0, "corePoolSize"    # I
    .param p1, "maximumPoolSize"    # I
    .param p2, "keepAliveTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 80
    new-instance v6, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;

    move-object v0, v6

    move v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;-><init>(IIJLjava/util/concurrent/TimeUnit;)V

    return-object v6
.end method


# virtual methods
.method protected newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/RunnableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 105
    .local p2, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$DefaultFuture;

    invoke-direct {v0, p1, p2}, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$DefaultFuture;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/RunnableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 100
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v0, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$DefaultFuture;

    invoke-direct {v0, p1}, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$DefaultFuture;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;)Lcom/xuexiang/xtask/thread/pool/cancel/IFuture;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/xuexiang/xtask/thread/pool/cancel/IFuture<",
            "*>;"
        }
    .end annotation

    .line 110
    invoke-super {p0, p1}, Lcom/xuexiang/xtask/thread/pool/base/BaseThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    check-cast v0, Lcom/xuexiang/xtask/thread/pool/cancel/IFuture;

    return-object v0
.end method

.method public bridge synthetic submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Lcom/xuexiang/xtask/thread/pool/cancel/IFuture;

    move-result-object p1

    return-object p1
.end method
