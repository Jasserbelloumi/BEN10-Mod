.class public final Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$Builder;
.super Ljava/lang/Object;
.source "DefaultScheduledThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final DEFAULT_CORE_POOL_SIZE:I

.field private static final DEFAULT_FACTORY_NAME:Ljava/lang/String; = "DefaultScheduled"


# instance fields
.field corePoolSize:I

.field handler:Ljava/util/concurrent/RejectedExecutionHandler;

.field threadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 163
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$Builder;->DEFAULT_CORE_POOL_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 185
    sget v0, Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$Builder;->DEFAULT_CORE_POOL_SIZE:I

    invoke-direct {p0, v0}, Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$Builder;-><init>(I)V

    .line 186
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "corePoolSize"    # I

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput p1, p0, Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$Builder;->corePoolSize:I

    .line 195
    return-void
.end method


# virtual methods
.method public build()Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor;
    .locals 4

    .line 218
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$Builder;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    if-nez v0, :cond_0

    .line 219
    const-string v0, "DefaultScheduled"

    invoke-static {v0}, Lcom/xuexiang/xtask/thread/pool/TaskThreadFactory;->getFactory(Ljava/lang/String;)Lcom/xuexiang/xtask/thread/pool/TaskThreadFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$Builder;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$Builder;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    if-nez v0, :cond_1

    .line 222
    new-instance v0, Lcom/xuexiang/xtask/thread/pool/TaskRecordPolicy;

    invoke-direct {v0}, Lcom/xuexiang/xtask/thread/pool/TaskRecordPolicy;-><init>()V

    iput-object v0, p0, Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$Builder;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 224
    :cond_1
    new-instance v0, Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor;

    iget v1, p0, Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$Builder;->corePoolSize:I

    iget-object v2, p0, Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$Builder;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    iget-object v3, p0, Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$Builder;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    invoke-direct {v0, v1, v2, v3}, Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-object v0
.end method

.method public setCorePoolSize(I)Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$Builder;
    .locals 0
    .param p1, "corePoolSize"    # I

    .line 198
    iput p1, p0, Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$Builder;->corePoolSize:I

    .line 199
    return-object p0
.end method

.method public setHandler(Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$Builder;
    .locals 0
    .param p1, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;

    .line 208
    iput-object p1, p0, Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$Builder;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 209
    return-object p0
.end method

.method public setThreadFactory(Ljava/util/concurrent/ThreadFactory;)Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$Builder;
    .locals 0
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 203
    iput-object p1, p0, Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$Builder;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 204
    return-object p0
.end method
