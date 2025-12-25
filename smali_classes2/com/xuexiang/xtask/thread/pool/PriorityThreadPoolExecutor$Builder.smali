.class public final Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$Builder;
.super Ljava/lang/Object;
.source "PriorityThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final DEFAULT_CORE_POOL_SIZE:I

.field private static final DEFAULT_FACTORY_NAME:Ljava/lang/String; = "Priority"

.field private static final DEFAULT_KEEP_ALIVE_TIME:J = 0x1eL


# instance fields
.field corePoolSize:I

.field handler:Ljava/util/concurrent/RejectedExecutionHandler;

.field keepAliveTime:J

.field threadFactory:Ljava/util/concurrent/ThreadFactory;

.field unit:Ljava/util/concurrent/TimeUnit;

.field workQueue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 265
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$Builder;->DEFAULT_CORE_POOL_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 303
    sget v0, Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$Builder;->DEFAULT_CORE_POOL_SIZE:I

    invoke-direct {p0, v0}, Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$Builder;-><init>(I)V

    .line 304
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "corePoolSize"    # I

    .line 312
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$Builder;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    .line 313
    return-void
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;)V
    .locals 0
    .param p1, "corePoolSize"    # I
    .param p2, "keepAliveTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    iput p1, p0, Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$Builder;->corePoolSize:I

    .line 324
    iput-wide p2, p0, Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$Builder;->keepAliveTime:J

    .line 325
    iput-object p4, p0, Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$Builder;->unit:Ljava/util/concurrent/TimeUnit;

    .line 326
    return-void
.end method


# virtual methods
.method public build()Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor;
    .locals 11

    .line 364
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$Builder;->workQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    if-nez v0, :cond_0

    .line 365
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$Builder;->workQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$Builder;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    if-nez v0, :cond_1

    .line 368
    const-string v0, "Priority"

    invoke-static {v0}, Lcom/xuexiang/xtask/thread/pool/TaskThreadFactory;->getFactory(Ljava/lang/String;)Lcom/xuexiang/xtask/thread/pool/TaskThreadFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$Builder;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$Builder;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    if-nez v0, :cond_2

    .line 371
    new-instance v0, Lcom/xuexiang/xtask/thread/pool/TaskRecordPolicy;

    invoke-direct {v0}, Lcom/xuexiang/xtask/thread/pool/TaskRecordPolicy;-><init>()V

    iput-object v0, p0, Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$Builder;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 373
    :cond_2
    new-instance v0, Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor;

    iget v3, p0, Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$Builder;->corePoolSize:I

    iget-wide v4, p0, Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$Builder;->keepAliveTime:J

    iget-object v6, p0, Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$Builder;->unit:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$Builder;->workQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v8, p0, Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$Builder;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    iget-object v9, p0, Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$Builder;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    const/4 v10, 0x0

    move-object v1, v0

    move v2, v3

    invoke-direct/range {v1 .. v10}, Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/PriorityBlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$1;)V

    return-object v0
.end method

.method public setCorePoolSize(I)Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$Builder;
    .locals 0
    .param p1, "corePoolSize"    # I

    .line 329
    iput p1, p0, Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$Builder;->corePoolSize:I

    .line 330
    return-object p0
.end method

.method public setHandler(Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$Builder;
    .locals 0
    .param p1, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;

    .line 354
    iput-object p1, p0, Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$Builder;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 355
    return-object p0
.end method

.method public setKeepAliveTime(J)Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$Builder;
    .locals 0
    .param p1, "keepAliveTime"    # J

    .line 334
    iput-wide p1, p0, Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$Builder;->keepAliveTime:J

    .line 335
    return-object p0
.end method

.method public setThreadFactory(Ljava/util/concurrent/ThreadFactory;)Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$Builder;
    .locals 0
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 349
    iput-object p1, p0, Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$Builder;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 350
    return-object p0
.end method

.method public setUnit(Ljava/util/concurrent/TimeUnit;)Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$Builder;
    .locals 0
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 339
    iput-object p1, p0, Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$Builder;->unit:Ljava/util/concurrent/TimeUnit;

    .line 340
    return-object p0
.end method

.method public setWorkQueue(Ljava/util/concurrent/PriorityBlockingQueue;)Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;)",
            "Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$Builder;"
        }
    .end annotation

    .line 344
    .local p1, "workQueue":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<Ljava/lang/Runnable;>;"
    iput-object p1, p0, Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$Builder;->workQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 345
    return-object p0
.end method
