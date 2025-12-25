.class public final Lcom/xuexiang/xtask/utils/TaskUtils;
.super Ljava/lang/Object;
.source "TaskUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-string v0, "TaskUtils"

    invoke-static {v0}, Lcom/xuexiang/xtask/logger/TaskLogger;->getLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xuexiang/xtask/utils/TaskUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static executeTask(Lcom/xuexiang/xtask/core/step/ITaskStep;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    .locals 3
    .param p0, "taskStep"    # Lcom/xuexiang/xtask/core/step/ITaskStep;

    .line 111
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 112
    sget-object v1, Lcom/xuexiang/xtask/utils/TaskUtils;->TAG:Ljava/lang/String;

    const-string v2, "execute task failed, taskStep is null!"

    invoke-static {v1, v2}, Lcom/xuexiang/xtask/logger/TaskLogger;->eTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-object v0

    .line 115
    :cond_0
    invoke-interface {p0}, Lcom/xuexiang/xtask/core/step/ITaskStep;->getThreadType()Lcom/xuexiang/xtask/core/ThreadType;

    move-result-object v1

    .line 116
    .local v1, "type":Lcom/xuexiang/xtask/core/ThreadType;
    sget-object v2, Lcom/xuexiang/xtask/core/ThreadType;->MAIN:Lcom/xuexiang/xtask/core/ThreadType;

    if-ne v1, v2, :cond_1

    .line 117
    invoke-static {}, Lcom/xuexiang/xtask/thread/XTaskExecutor;->get()Lcom/xuexiang/xtask/thread/XTaskExecutor;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/xuexiang/xtask/thread/XTaskExecutor;->postToMain(Ljava/lang/Runnable;)Z

    .line 118
    return-object v0

    .line 119
    :cond_1
    sget-object v2, Lcom/xuexiang/xtask/core/ThreadType;->ASYNC_EMERGENT:Lcom/xuexiang/xtask/core/ThreadType;

    if-ne v1, v2, :cond_2

    .line 120
    invoke-static {}, Lcom/xuexiang/xtask/thread/XTaskExecutor;->get()Lcom/xuexiang/xtask/thread/XTaskExecutor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xuexiang/xtask/thread/XTaskExecutor;->emergentSubmit(Ljava/lang/Runnable;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;

    move-result-object v0

    return-object v0

    .line 121
    :cond_2
    sget-object v2, Lcom/xuexiang/xtask/core/ThreadType;->ASYNC:Lcom/xuexiang/xtask/core/ThreadType;

    if-ne v1, v2, :cond_3

    .line 122
    invoke-static {}, Lcom/xuexiang/xtask/thread/XTaskExecutor;->get()Lcom/xuexiang/xtask/thread/XTaskExecutor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xuexiang/xtask/thread/XTaskExecutor;->submit(Ljava/lang/Runnable;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;

    move-result-object v0

    return-object v0

    .line 123
    :cond_3
    sget-object v2, Lcom/xuexiang/xtask/core/ThreadType;->ASYNC_IO:Lcom/xuexiang/xtask/core/ThreadType;

    if-ne v1, v2, :cond_4

    .line 124
    invoke-static {}, Lcom/xuexiang/xtask/thread/XTaskExecutor;->get()Lcom/xuexiang/xtask/thread/XTaskExecutor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xuexiang/xtask/thread/XTaskExecutor;->ioSubmit(Ljava/lang/Runnable;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;

    move-result-object v0

    return-object v0

    .line 125
    :cond_4
    sget-object v2, Lcom/xuexiang/xtask/core/ThreadType;->ASYNC_BACKGROUND:Lcom/xuexiang/xtask/core/ThreadType;

    if-ne v1, v2, :cond_5

    .line 126
    invoke-static {}, Lcom/xuexiang/xtask/thread/XTaskExecutor;->get()Lcom/xuexiang/xtask/thread/XTaskExecutor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xuexiang/xtask/thread/XTaskExecutor;->backgroundSubmit(Ljava/lang/Runnable;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;

    move-result-object v0

    return-object v0

    .line 128
    :cond_5
    invoke-interface {p0}, Lcom/xuexiang/xtask/core/step/ITaskStep;->run()V

    .line 129
    return-object v0
.end method

.method public static findNextTaskStep(Ljava/util/List;Lcom/xuexiang/xtask/core/step/ITaskStep;)Lcom/xuexiang/xtask/core/step/ITaskStep;
    .locals 4
    .param p1, "taskStep"    # Lcom/xuexiang/xtask/core/step/ITaskStep;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xuexiang/xtask/core/step/ITaskStep;",
            ">;",
            "Lcom/xuexiang/xtask/core/step/ITaskStep;",
            ")",
            "Lcom/xuexiang/xtask/core/step/ITaskStep;"
        }
    .end annotation

    .line 70
    .local p0, "taskStepList":Ljava/util/List;, "Ljava/util/List<Lcom/xuexiang/xtask/core/step/ITaskStep;>;"
    invoke-static {p0}, Lcom/xuexiang/xtask/utils/CommonUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 71
    return-object v1

    .line 73
    :cond_0
    const/4 v0, 0x0

    .line 74
    .local v0, "index":I
    if-eqz p1, :cond_1

    .line 75
    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 77
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 78
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xuexiang/xtask/core/step/ITaskStep;

    .line 79
    .local v2, "target":Lcom/xuexiang/xtask/core/step/ITaskStep;
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/xuexiang/xtask/core/step/ITaskStep;->accept()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 80
    return-object v2

    .line 77
    .end local v2    # "target":Lcom/xuexiang/xtask/core/step/ITaskStep;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_3
    return-object v1
.end method

.method public static findTaskStepSize(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xuexiang/xtask/core/step/ITaskStep;",
            ">;)I"
        }
    .end annotation

    .line 93
    .local p0, "taskStepList":Ljava/util/List;, "Ljava/util/List<Lcom/xuexiang/xtask/core/step/ITaskStep;>;"
    const/4 v0, 0x0

    .line 94
    .local v0, "count":I
    invoke-static {p0}, Lcom/xuexiang/xtask/utils/CommonUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 95
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xuexiang/xtask/core/step/ITaskStep;

    .line 96
    .local v2, "taskStep":Lcom/xuexiang/xtask/core/step/ITaskStep;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/xuexiang/xtask/core/step/ITaskStep;->accept()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    add-int/lit8 v0, v0, 0x1

    .line 99
    .end local v2    # "taskStep":Lcom/xuexiang/xtask/core/step/ITaskStep;
    :cond_0
    goto :goto_0

    .line 101
    :cond_1
    return v0
.end method

.method public static isMainThread()Z
    .locals 2

    .line 50
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

.method public static runOnMainThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .line 59
    invoke-static {}, Lcom/xuexiang/xtask/thread/XTaskExecutor;->get()Lcom/xuexiang/xtask/thread/XTaskExecutor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xuexiang/xtask/thread/XTaskExecutor;->postToMain(Ljava/lang/Runnable;)Z

    .line 60
    return-void
.end method
