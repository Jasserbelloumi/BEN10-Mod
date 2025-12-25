.class public Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor;
.super Lcom/xuexiang/xtask/thread/pool/base/BaseThreadPoolExecutor;
.source "PriorityThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-string v0, "PriorityThreadPoolExecutor"

    invoke-static {v0}, Lcom/xuexiang/xtask/logger/TaskLogger;->getLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/PriorityBlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
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
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    .line 108
    .local p6, "workQueue":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<Ljava/lang/Runnable;>;"
    invoke-direct/range {p0 .. p8}, Lcom/xuexiang/xtask/thread/pool/base/BaseThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 109
    return-void
.end method

.method synthetic constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/PriorityBlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # J
    .param p5, "x3"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "x4"    # Ljava/util/concurrent/PriorityBlockingQueue;
    .param p7, "x5"    # Ljava/util/concurrent/ThreadFactory;
    .param p8, "x6"    # Ljava/util/concurrent/RejectedExecutionHandler;
    .param p9, "x7"    # Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$1;

    .line 52
    invoke-direct/range {p0 .. p8}, Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/PriorityBlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-void
.end method

.method public static getDefault()Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor;
    .locals 1

    .line 62
    new-instance v0, Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$Builder;

    invoke-direct {v0}, Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$Builder;->build()Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$Builder;
    .locals 1

    .line 71
    new-instance v0, Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$Builder;

    invoke-direct {v0}, Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$Builder;-><init>()V

    return-object v0
.end method

.method public static newBuilder(I)Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$Builder;
    .locals 1
    .param p0, "corePoolSize"    # I

    .line 81
    new-instance v0, Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$Builder;

    invoke-direct {v0, p0}, Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$Builder;-><init>(I)V

    return-object v0
.end method

.method public static newBuilder(IJLjava/util/concurrent/TimeUnit;)Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$Builder;
    .locals 1
    .param p0, "corePoolSize"    # I
    .param p1, "keepAliveTime"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 93
    new-instance v0, Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$Builder;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$Builder;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;I)Lcom/xuexiang/xtask/thread/priority/IPriorityRunnable;
    .locals 2
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "priority"    # I

    .line 119
    instance-of v0, p1, Lcom/xuexiang/xtask/thread/priority/IPriorityRunnable;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0, p1}, Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 121
    move-object v0, p1

    check-cast v0, Lcom/xuexiang/xtask/thread/priority/IPriorityRunnable;

    return-object v0

    .line 123
    :cond_0
    new-instance v0, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityRunnable;

    new-instance v1, Lcom/xuexiang/xtask/thread/priority/impl/Priority;

    invoke-direct {v1, p2}, Lcom/xuexiang/xtask/thread/priority/impl/Priority;-><init>(I)V

    invoke-direct {v0, v1, p1}, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityRunnable;-><init>(Lcom/xuexiang/xtask/thread/priority/IPriority;Ljava/lang/Runnable;)V

    .line 124
    .local v0, "runnable":Lcom/xuexiang/xtask/thread/priority/IPriorityRunnable;
    invoke-virtual {p0, v0}, Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 125
    return-object v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 190
    instance-of v0, p1, Lcom/xuexiang/xtask/thread/priority/IPriorityComparable;

    if-eqz v0, :cond_0

    .line 191
    invoke-super {p0, p1}, Lcom/xuexiang/xtask/thread/pool/base/BaseThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 192
    return-void

    .line 194
    :cond_0
    instance-of v0, p1, Lcom/xuexiang/xtask/thread/priority/IPriority;

    if-eqz v0, :cond_1

    .line 195
    new-instance v0, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityRunnable;

    move-object v1, p1

    check-cast v1, Lcom/xuexiang/xtask/thread/priority/IPriority;

    invoke-direct {v0, v1, p1}, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityRunnable;-><init>(Lcom/xuexiang/xtask/thread/priority/IPriority;Ljava/lang/Runnable;)V

    invoke-super {p0, v0}, Lcom/xuexiang/xtask/thread/pool/base/BaseThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 196
    return-void

    .line 198
    :cond_1
    new-instance v0, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityRunnable;

    new-instance v1, Lcom/xuexiang/xtask/thread/priority/impl/Priority;

    invoke-direct {v1}, Lcom/xuexiang/xtask/thread/priority/impl/Priority;-><init>()V

    invoke-direct {v0, v1, p1}, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityRunnable;-><init>(Lcom/xuexiang/xtask/thread/priority/IPriority;Ljava/lang/Runnable;)V

    invoke-super {p0, v0}, Lcom/xuexiang/xtask/thread/pool/base/BaseThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 199
    return-void
.end method

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

    .line 179
    .local p2, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityFuture;

    invoke-direct {v0, p1, p2}, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityFuture;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

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

    .line 174
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v0, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityFuture;

    invoke-direct {v0, p1}, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityFuture;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;I)Lcom/xuexiang/xtask/thread/priority/IPriorityFuture;
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "priority"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "I)",
            "Lcom/xuexiang/xtask/thread/priority/IPriorityFuture<",
            "*>;"
        }
    .end annotation

    .line 136
    instance-of v0, p1, Lcom/xuexiang/xtask/thread/priority/IPriority;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0, p1}, Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    check-cast v0, Lcom/xuexiang/xtask/thread/priority/IPriorityFuture;

    return-object v0

    .line 139
    :cond_0
    new-instance v0, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityRunnable;

    new-instance v1, Lcom/xuexiang/xtask/thread/priority/impl/Priority;

    invoke-direct {v1, p2}, Lcom/xuexiang/xtask/thread/priority/impl/Priority;-><init>(I)V

    invoke-direct {v0, v1, p1}, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityRunnable;-><init>(Lcom/xuexiang/xtask/thread/priority/IPriority;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    check-cast v0, Lcom/xuexiang/xtask/thread/priority/IPriorityFuture;

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;I)Lcom/xuexiang/xtask/thread/priority/IPriorityFuture;
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p3, "priority"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;I)",
            "Lcom/xuexiang/xtask/thread/priority/IPriorityFuture<",
            "TT;>;"
        }
    .end annotation

    .line 151
    .local p2, "result":Ljava/lang/Object;, "TT;"
    instance-of v0, p1, Lcom/xuexiang/xtask/thread/priority/IPriority;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0, p1, p2}, Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object v0

    check-cast v0, Lcom/xuexiang/xtask/thread/priority/IPriorityFuture;

    return-object v0

    .line 154
    :cond_0
    new-instance v0, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityRunnable;

    new-instance v1, Lcom/xuexiang/xtask/thread/priority/impl/Priority;

    invoke-direct {v1, p3}, Lcom/xuexiang/xtask/thread/priority/impl/Priority;-><init>(I)V

    invoke-direct {v0, v1, p1}, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityRunnable;-><init>(Lcom/xuexiang/xtask/thread/priority/IPriority;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0, p2}, Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object v0

    check-cast v0, Lcom/xuexiang/xtask/thread/priority/IPriorityFuture;

    return-object v0
.end method

.method public submit(Ljava/util/concurrent/Callable;I)Lcom/xuexiang/xtask/thread/priority/IPriorityFuture;
    .locals 2
    .param p2, "priority"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;I)",
            "Lcom/xuexiang/xtask/thread/priority/IPriorityFuture<",
            "TT;>;"
        }
    .end annotation

    .line 166
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    instance-of v0, p1, Lcom/xuexiang/xtask/thread/priority/IPriority;

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0, p1}, Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    check-cast v0, Lcom/xuexiang/xtask/thread/priority/IPriorityFuture;

    return-object v0

    .line 169
    :cond_0
    new-instance v0, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityCallable;

    new-instance v1, Lcom/xuexiang/xtask/thread/priority/impl/Priority;

    invoke-direct {v1, p2}, Lcom/xuexiang/xtask/thread/priority/impl/Priority;-><init>(I)V

    invoke-direct {v0, v1, p1}, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityCallable;-><init>(Lcom/xuexiang/xtask/thread/priority/IPriority;Ljava/util/concurrent/Callable;)V

    invoke-virtual {p0, v0}, Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    check-cast v0, Lcom/xuexiang/xtask/thread/priority/IPriorityFuture;

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 210
    instance-of v0, p1, Lcom/xuexiang/xtask/thread/priority/IPriorityComparable;

    if-eqz v0, :cond_0

    .line 211
    invoke-super {p0, p1}, Lcom/xuexiang/xtask/thread/pool/base/BaseThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0

    .line 213
    :cond_0
    instance-of v0, p1, Lcom/xuexiang/xtask/thread/priority/IPriority;

    if-eqz v0, :cond_1

    .line 214
    new-instance v0, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityRunnable;

    move-object v1, p1

    check-cast v1, Lcom/xuexiang/xtask/thread/priority/IPriority;

    invoke-direct {v0, v1, p1}, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityRunnable;-><init>(Lcom/xuexiang/xtask/thread/priority/IPriority;Ljava/lang/Runnable;)V

    invoke-super {p0, v0}, Lcom/xuexiang/xtask/thread/pool/base/BaseThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0

    .line 216
    :cond_1
    new-instance v0, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityRunnable;

    new-instance v1, Lcom/xuexiang/xtask/thread/priority/impl/Priority;

    invoke-direct {v1}, Lcom/xuexiang/xtask/thread/priority/impl/Priority;-><init>()V

    invoke-direct {v0, v1, p1}, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityRunnable;-><init>(Lcom/xuexiang/xtask/thread/priority/IPriority;Ljava/lang/Runnable;)V

    invoke-super {p0, v0}, Lcom/xuexiang/xtask/thread/pool/base/BaseThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 229
    .local p2, "result":Ljava/lang/Object;, "TT;"
    instance-of v0, p1, Lcom/xuexiang/xtask/thread/priority/IPriorityComparable;

    if-eqz v0, :cond_0

    .line 230
    invoke-super {p0, p1, p2}, Lcom/xuexiang/xtask/thread/pool/base/BaseThreadPoolExecutor;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0

    .line 232
    :cond_0
    instance-of v0, p1, Lcom/xuexiang/xtask/thread/priority/IPriority;

    if-eqz v0, :cond_1

    .line 233
    new-instance v0, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityRunnable;

    move-object v1, p1

    check-cast v1, Lcom/xuexiang/xtask/thread/priority/IPriority;

    invoke-direct {v0, v1, p1}, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityRunnable;-><init>(Lcom/xuexiang/xtask/thread/priority/IPriority;Ljava/lang/Runnable;)V

    invoke-super {p0, v0, p2}, Lcom/xuexiang/xtask/thread/pool/base/BaseThreadPoolExecutor;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0

    .line 235
    :cond_1
    new-instance v0, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityRunnable;

    new-instance v1, Lcom/xuexiang/xtask/thread/priority/impl/Priority;

    invoke-direct {v1}, Lcom/xuexiang/xtask/thread/priority/impl/Priority;-><init>()V

    invoke-direct {v0, v1, p1}, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityRunnable;-><init>(Lcom/xuexiang/xtask/thread/priority/IPriority;Ljava/lang/Runnable;)V

    invoke-super {p0, v0, p2}, Lcom/xuexiang/xtask/thread/pool/base/BaseThreadPoolExecutor;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 247
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    instance-of v0, p1, Lcom/xuexiang/xtask/thread/priority/IPriorityComparable;

    if-eqz v0, :cond_0

    .line 248
    invoke-super {p0, p1}, Lcom/xuexiang/xtask/thread/pool/base/BaseThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0

    .line 250
    :cond_0
    instance-of v0, p1, Lcom/xuexiang/xtask/thread/priority/IPriority;

    if-eqz v0, :cond_1

    .line 251
    new-instance v0, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityCallable;

    move-object v1, p1

    check-cast v1, Lcom/xuexiang/xtask/thread/priority/IPriority;

    invoke-direct {v0, v1, p1}, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityCallable;-><init>(Lcom/xuexiang/xtask/thread/priority/IPriority;Ljava/util/concurrent/Callable;)V

    invoke-super {p0, v0}, Lcom/xuexiang/xtask/thread/pool/base/BaseThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0

    .line 253
    :cond_1
    new-instance v0, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityCallable;

    new-instance v1, Lcom/xuexiang/xtask/thread/priority/impl/Priority;

    invoke-direct {v1}, Lcom/xuexiang/xtask/thread/priority/impl/Priority;-><init>()V

    invoke-direct {v0, v1, p1}, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityCallable;-><init>(Lcom/xuexiang/xtask/thread/priority/IPriority;Ljava/util/concurrent/Callable;)V

    invoke-super {p0, v0}, Lcom/xuexiang/xtask/thread/pool/base/BaseThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
