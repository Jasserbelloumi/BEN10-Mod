.class public abstract Lcom/xuexiang/xtask/core/step/impl/TaskCommand;
.super Ljava/lang/Object;
.source "TaskCommand.java"

# interfaces
.implements Lcom/xuexiang/xtask/core/step/ITaskStepController;


# instance fields
.field private mController:Lcom/xuexiang/xtask/core/step/ITaskStepController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/TaskCommand;->mController:Lcom/xuexiang/xtask/core/step/ITaskStepController;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/xuexiang/xtask/core/step/ITaskStepController;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "unknown"

    :goto_0
    return-object v0
.end method

.method public getTaskParam()Lcom/xuexiang/xtask/core/param/ITaskParam;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/TaskCommand;->mController:Lcom/xuexiang/xtask/core/step/ITaskStepController;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/xuexiang/xtask/core/step/ITaskStepController;->getTaskParam()Lcom/xuexiang/xtask/core/param/ITaskParam;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/xuexiang/xtask/core/param/impl/TaskParam;->get()Lcom/xuexiang/xtask/core/param/impl/TaskParam;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public notifyTaskFailed()V
    .locals 1

    .line 63
    invoke-static {}, Lcom/xuexiang/xtask/core/param/impl/TaskResult;->failed()Lcom/xuexiang/xtask/core/param/impl/TaskResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xuexiang/xtask/core/step/impl/TaskCommand;->notifyTaskFailed(Lcom/xuexiang/xtask/core/param/ITaskResult;)V

    .line 64
    return-void
.end method

.method public notifyTaskFailed(I)V
    .locals 1
    .param p1, "code"    # I

    .line 72
    invoke-static {p1}, Lcom/xuexiang/xtask/core/param/impl/TaskResult;->failed(I)Lcom/xuexiang/xtask/core/param/impl/TaskResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xuexiang/xtask/core/step/impl/TaskCommand;->notifyTaskFailed(Lcom/xuexiang/xtask/core/param/ITaskResult;)V

    .line 73
    return-void
.end method

.method public notifyTaskFailed(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 82
    invoke-static {p1, p2}, Lcom/xuexiang/xtask/core/param/impl/TaskResult;->failed(ILjava/lang/String;)Lcom/xuexiang/xtask/core/param/impl/TaskResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xuexiang/xtask/core/step/impl/TaskCommand;->notifyTaskFailed(Lcom/xuexiang/xtask/core/param/ITaskResult;)V

    .line 83
    return-void
.end method

.method public notifyTaskFailed(Lcom/xuexiang/xtask/core/param/ITaskResult;)V
    .locals 1
    .param p1, "result"    # Lcom/xuexiang/xtask/core/param/ITaskResult;

    .line 94
    iget-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/TaskCommand;->mController:Lcom/xuexiang/xtask/core/step/ITaskStepController;

    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0, p1}, Lcom/xuexiang/xtask/core/step/ITaskStepController;->notifyTaskFailed(Lcom/xuexiang/xtask/core/param/ITaskResult;)V

    .line 97
    :cond_0
    return-void
.end method

.method public notifyTaskSucceed()V
    .locals 1

    .line 56
    invoke-static {}, Lcom/xuexiang/xtask/core/param/impl/TaskResult;->succeed()Lcom/xuexiang/xtask/core/param/impl/TaskResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xuexiang/xtask/core/step/impl/TaskCommand;->notifyTaskSucceed(Lcom/xuexiang/xtask/core/param/ITaskResult;)V

    .line 57
    return-void
.end method

.method public notifyTaskSucceed(Lcom/xuexiang/xtask/core/param/ITaskResult;)V
    .locals 1
    .param p1, "result"    # Lcom/xuexiang/xtask/core/param/ITaskResult;

    .line 87
    iget-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/TaskCommand;->mController:Lcom/xuexiang/xtask/core/step/ITaskStepController;

    if-eqz v0, :cond_0

    .line 88
    invoke-interface {v0, p1}, Lcom/xuexiang/xtask/core/step/ITaskStepController;->notifyTaskSucceed(Lcom/xuexiang/xtask/core/param/ITaskResult;)V

    .line 90
    :cond_0
    return-void
.end method

.method public recycle()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/TaskCommand;->mController:Lcom/xuexiang/xtask/core/step/ITaskStepController;

    if-eqz v0, :cond_0

    .line 120
    invoke-interface {v0}, Lcom/xuexiang/xtask/core/step/ITaskStepController;->recycle()V

    .line 122
    :cond_0
    return-void
.end method

.method public abstract run()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public setTaskStepResultController(Lcom/xuexiang/xtask/core/step/ITaskStepController;)Lcom/xuexiang/xtask/core/step/impl/TaskCommand;
    .locals 0
    .param p1, "controller"    # Lcom/xuexiang/xtask/core/step/ITaskStepController;

    .line 48
    iput-object p1, p0, Lcom/xuexiang/xtask/core/step/impl/TaskCommand;->mController:Lcom/xuexiang/xtask/core/step/ITaskStepController;

    .line 49
    return-object p0
.end method
