.class public final Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;
.super Ljava/lang/Object;
.source "DefaultThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final DEFAULT_BLOCKING_QUEUE_SIZE:I = 0x80

.field private static final DEFAULT_CORE_POOL_SIZE:I

.field private static final DEFAULT_FACTORY_NAME:Ljava/lang/String; = "Default"

.field private static final DEFAULT_KEEP_ALIVE_TIME:J = 0x1eL


# instance fields
.field corePoolSize:I

.field handler:Ljava/util/concurrent/RejectedExecutionHandler;

.field keepAliveTime:J

.field maximumPoolSize:I

.field threadFactory:Ljava/util/concurrent/ThreadFactory;

.field unit:Ljava/util/concurrent/TimeUnit;

.field workQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 145
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;->DEFAULT_CORE_POOL_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 191
    sget v0, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;->DEFAULT_CORE_POOL_SIZE:I

    invoke-direct {p0, v0}, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;-><init>(I)V

    .line 192
    return-void
.end method

.method public constructor <init>(I)V
    .locals 6
    .param p1, "corePoolSize"    # I

    .line 200
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1e

    move-object v0, p0

    move v1, p1

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;-><init>(IIJLjava/util/concurrent/TimeUnit;)V

    .line 201
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;)V
    .locals 0
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput p1, p0, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;->corePoolSize:I

    .line 213
    iput p2, p0, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;->maximumPoolSize:I

    .line 214
    iput-wide p3, p0, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;->keepAliveTime:J

    .line 215
    iput-object p5, p0, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;->unit:Ljava/util/concurrent/TimeUnit;

    .line 216
    return-void
.end method


# virtual methods
.method public build()Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;
    .locals 11

    .line 259
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;->workQueue:Ljava/util/concurrent/BlockingQueue;

    if-nez v0, :cond_0

    .line 260
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;->workQueue:Ljava/util/concurrent/BlockingQueue;

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    if-nez v0, :cond_1

    .line 263
    const-string v0, "Default"

    invoke-static {v0}, Lcom/xuexiang/xtask/thread/pool/TaskThreadFactory;->getFactory(Ljava/lang/String;)Lcom/xuexiang/xtask/thread/pool/TaskThreadFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    if-nez v0, :cond_2

    .line 266
    new-instance v0, Lcom/xuexiang/xtask/thread/pool/TaskRecordPolicy;

    invoke-direct {v0}, Lcom/xuexiang/xtask/thread/pool/TaskRecordPolicy;-><init>()V

    iput-object v0, p0, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 268
    :cond_2
    new-instance v0, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;

    iget v2, p0, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;->corePoolSize:I

    iget v3, p0, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;->maximumPoolSize:I

    iget-wide v4, p0, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;->keepAliveTime:J

    iget-object v6, p0, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;->unit:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;->workQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v8, p0, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    iget-object v9, p0, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    const/4 v10, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$1;)V

    return-object v0
.end method

.method public setCorePoolSize(I)Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;
    .locals 0
    .param p1, "corePoolSize"    # I

    .line 219
    iput p1, p0, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;->corePoolSize:I

    .line 220
    return-object p0
.end method

.method public setHandler(Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;
    .locals 0
    .param p1, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;

    .line 249
    iput-object p1, p0, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 250
    return-object p0
.end method

.method public setKeepAliveTime(J)Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;
    .locals 0
    .param p1, "keepAliveTime"    # J

    .line 229
    iput-wide p1, p0, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;->keepAliveTime:J

    .line 230
    return-object p0
.end method

.method public setMaximumPoolSize(I)Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;
    .locals 0
    .param p1, "maximumPoolSize"    # I

    .line 224
    iput p1, p0, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;->maximumPoolSize:I

    .line 225
    return-object p0
.end method

.method public setThreadFactory(Ljava/util/concurrent/ThreadFactory;)Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;
    .locals 0
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 244
    iput-object p1, p0, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 245
    return-object p0
.end method

.method public setUnit(Ljava/util/concurrent/TimeUnit;)Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;
    .locals 0
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 234
    iput-object p1, p0, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;->unit:Ljava/util/concurrent/TimeUnit;

    .line 235
    return-object p0
.end method

.method public setWorkQueue(Ljava/util/concurrent/BlockingQueue;)Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;)",
            "Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;"
        }
    .end annotation

    .line 239
    .local p1, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    iput-object p1, p0, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;->workQueue:Ljava/util/concurrent/BlockingQueue;

    .line 240
    return-object p0
.end method
