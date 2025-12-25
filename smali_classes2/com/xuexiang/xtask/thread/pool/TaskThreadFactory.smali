.class public Lcom/xuexiang/xtask/thread/pool/TaskThreadFactory;
.super Ljava/lang/Object;
.source "TaskThreadFactory.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field private static final POOL_NUMBER_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mNamePrefix:Ljava/lang/String;

.field private final mPriority:I

.field private final mThreadGroup:Ljava/lang/ThreadGroup;

.field private final mThreadNumber:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-string v0, "TaskThreadFactory"

    invoke-static {v0}, Lcom/xuexiang/xtask/logger/TaskLogger;->getLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xuexiang/xtask/thread/pool/TaskThreadFactory;->TAG:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/xuexiang/xtask/thread/pool/TaskThreadFactory;->POOL_NUMBER_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .param p1, "factoryName"    # Ljava/lang/String;
    .param p2, "priority"    # I

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/xuexiang/xtask/thread/pool/TaskThreadFactory;->mThreadNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 89
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 90
    .local v0, "securityManager":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/SecurityManager;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/xuexiang/xtask/thread/pool/TaskThreadFactory;->mThreadGroup:Ljava/lang/ThreadGroup;

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-task-pool("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") No."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/xuexiang/xtask/thread/pool/TaskThreadFactory;->getTaskPoolNumber(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", thread No."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xuexiang/xtask/thread/pool/TaskThreadFactory;->mNamePrefix:Ljava/lang/String;

    .line 92
    iput p2, p0, Lcom/xuexiang/xtask/thread/pool/TaskThreadFactory;->mPriority:I

    .line 93
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lcom/xuexiang/xtask/thread/pool/TaskThreadFactory;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getFactory(Ljava/lang/String;)Lcom/xuexiang/xtask/thread/pool/TaskThreadFactory;
    .locals 2
    .param p0, "factoryName"    # Ljava/lang/String;

    .line 68
    new-instance v0, Lcom/xuexiang/xtask/thread/pool/TaskThreadFactory;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/xuexiang/xtask/thread/pool/TaskThreadFactory;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static getFactory(Ljava/lang/String;I)Lcom/xuexiang/xtask/thread/pool/TaskThreadFactory;
    .locals 1
    .param p0, "factoryName"    # Ljava/lang/String;
    .param p1, "priority"    # I

    .line 79
    new-instance v0, Lcom/xuexiang/xtask/thread/pool/TaskThreadFactory;

    invoke-direct {v0, p0, p1}, Lcom/xuexiang/xtask/thread/pool/TaskThreadFactory;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method private getTaskPoolNumber(I)I
    .locals 4
    .param p1, "priority"    # I

    .line 118
    sget-object v0, Lcom/xuexiang/xtask/thread/pool/TaskThreadFactory;->POOL_NUMBER_MAP:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 119
    .local v1, "poolNumber":Ljava/util/concurrent/atomic/AtomicInteger;
    if-nez v1, :cond_0

    .line 120
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object v1, v2

    .line 121
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 8
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xuexiang/xtask/thread/pool/TaskThreadFactory;->mNamePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xuexiang/xtask/thread/pool/TaskThreadFactory;->mThreadNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "threadName":Ljava/lang/String;
    sget-object v1, Lcom/xuexiang/xtask/thread/pool/TaskThreadFactory;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread production, name is ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xuexiang/xtask/logger/TaskLogger;->iTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v7, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/xuexiang/xtask/thread/pool/TaskThreadFactory;->mThreadGroup:Ljava/lang/ThreadGroup;

    const-wide/16 v5, 0x0

    move-object v1, v7

    move-object v3, p1

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 100
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->isDaemon()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 104
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Thread;->getPriority()I

    move-result v2

    iget v3, p0, Lcom/xuexiang/xtask/thread/pool/TaskThreadFactory;->mPriority:I

    if-eq v2, v3, :cond_1

    .line 105
    invoke-virtual {v1, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 108
    :cond_1
    new-instance v2, Lcom/xuexiang/xtask/thread/pool/TaskThreadFactory$1;

    invoke-direct {v2, p0}, Lcom/xuexiang/xtask/thread/pool/TaskThreadFactory$1;-><init>(Lcom/xuexiang/xtask/thread/pool/TaskThreadFactory;)V

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 114
    return-object v1
.end method
