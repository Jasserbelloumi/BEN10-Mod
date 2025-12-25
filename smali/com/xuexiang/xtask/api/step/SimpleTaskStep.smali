.class public abstract Lcom/xuexiang/xtask/api/step/SimpleTaskStep;
.super Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;
.source "SimpleTaskStep.java"


# static fields
.field private static final TASK_NUMBER:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/xuexiang/xtask/api/step/SimpleTaskStep;->TASK_NUMBER:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimpleTaskStep-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/xuexiang/xtask/api/step/SimpleTaskStep;->TASK_NUMBER:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xuexiang/xtask/api/step/SimpleTaskStep;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;-><init>()V

    .line 57
    invoke-virtual {p0, p1}, Lcom/xuexiang/xtask/api/step/SimpleTaskStep;->initTaskStep(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/xuexiang/xtask/core/ThreadType;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "threadType"    # Lcom/xuexiang/xtask/core/ThreadType;

    .line 67
    invoke-direct {p0, p2}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;-><init>(Lcom/xuexiang/xtask/core/ThreadType;)V

    .line 68
    invoke-virtual {p0, p1}, Lcom/xuexiang/xtask/api/step/SimpleTaskStep;->initTaskStep(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/xuexiang/xtask/core/ThreadType;Lcom/xuexiang/xtask/core/param/ITaskParam;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "threadType"    # Lcom/xuexiang/xtask/core/ThreadType;
    .param p3, "taskParam"    # Lcom/xuexiang/xtask/core/param/ITaskParam;

    .line 90
    invoke-direct {p0, p2, p3}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;-><init>(Lcom/xuexiang/xtask/core/ThreadType;Lcom/xuexiang/xtask/core/param/ITaskParam;)V

    .line 91
    invoke-virtual {p0, p1}, Lcom/xuexiang/xtask/api/step/SimpleTaskStep;->initTaskStep(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/xuexiang/xtask/core/param/ITaskParam;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "taskParam"    # Lcom/xuexiang/xtask/core/param/ITaskParam;

    .line 78
    invoke-direct {p0, p2}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;-><init>(Lcom/xuexiang/xtask/core/param/ITaskParam;)V

    .line 79
    invoke-virtual {p0, p1}, Lcom/xuexiang/xtask/api/step/SimpleTaskStep;->initTaskStep(Ljava/lang/String;)V

    .line 80
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/xuexiang/xtask/api/step/SimpleTaskStep;->mName:Ljava/lang/String;

    return-object v0
.end method

.method protected initTaskStep(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 100
    iput-object p1, p0, Lcom/xuexiang/xtask/api/step/SimpleTaskStep;->mName:Ljava/lang/String;

    .line 101
    invoke-virtual {p0}, Lcom/xuexiang/xtask/api/step/SimpleTaskStep;->isAutoNotify()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Lcom/xuexiang/xtask/core/step/impl/AutoNotifyTaskStepHandler;

    invoke-direct {v0}, Lcom/xuexiang/xtask/core/step/impl/AutoNotifyTaskStepHandler;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xuexiang/xtask/api/step/SimpleTaskStep;->setTaskStepHandler(Lcom/xuexiang/xtask/core/step/ITaskStepHandler;)Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;

    .line 104
    :cond_0
    return-void
.end method

.method protected isAutoNotify()Z
    .locals 1

    .line 118
    const/4 v0, 0x1

    return v0
.end method
