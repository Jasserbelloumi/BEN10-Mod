.class public Lcom/xuexiang/xtask/core/step/impl/AutoNotifyTaskStepHandler;
.super Ljava/lang/Object;
.source "AutoNotifyTaskStepHandler.java"

# interfaces
.implements Lcom/xuexiang/xtask/core/step/ITaskStepHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/xuexiang/xtask/core/step/ITaskStep;)Z
    .locals 1
    .param p1, "step"    # Lcom/xuexiang/xtask/core/step/ITaskStep;

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public afterTask(Lcom/xuexiang/xtask/core/step/ITaskStep;)V
    .locals 1
    .param p1, "step"    # Lcom/xuexiang/xtask/core/step/ITaskStep;

    .line 41
    invoke-static {}, Lcom/xuexiang/xtask/core/param/impl/TaskResult;->succeed()Lcom/xuexiang/xtask/core/param/impl/TaskResult;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/xuexiang/xtask/core/step/ITaskStep;->notifyTaskSucceed(Lcom/xuexiang/xtask/core/param/ITaskResult;)V

    .line 42
    return-void
.end method

.method public beforeTask(Lcom/xuexiang/xtask/core/step/ITaskStep;)V
    .locals 0
    .param p1, "step"    # Lcom/xuexiang/xtask/core/step/ITaskStep;

    .line 37
    return-void
.end method

.method public handleTaskCancelled(Lcom/xuexiang/xtask/core/step/ITaskStep;)V
    .locals 0
    .param p1, "step"    # Lcom/xuexiang/xtask/core/step/ITaskStep;

    .line 67
    return-void
.end method

.method public handleTaskFailed(Lcom/xuexiang/xtask/core/step/ITaskStep;)V
    .locals 0
    .param p1, "step"    # Lcom/xuexiang/xtask/core/step/ITaskStep;

    .line 62
    return-void
.end method

.method public handleTaskSucceed(Lcom/xuexiang/xtask/core/step/ITaskStep;)V
    .locals 0
    .param p1, "step"    # Lcom/xuexiang/xtask/core/step/ITaskStep;

    .line 57
    return-void
.end method

.method public onTaskException(Lcom/xuexiang/xtask/core/step/ITaskStep;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "step"    # Lcom/xuexiang/xtask/core/step/ITaskStep;
    .param p2, "exception"    # Ljava/lang/Exception;

    .line 46
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x2

    invoke-static {v1, v0}, Lcom/xuexiang/xtask/core/param/impl/TaskResult;->failed(ILjava/lang/String;)Lcom/xuexiang/xtask/core/param/impl/TaskResult;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/xuexiang/xtask/core/step/ITaskStep;->notifyTaskFailed(Lcom/xuexiang/xtask/core/param/ITaskResult;)V

    .line 47
    return-void
.end method
