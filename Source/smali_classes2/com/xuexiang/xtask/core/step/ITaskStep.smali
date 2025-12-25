.class public interface abstract Lcom/xuexiang/xtask/core/step/ITaskStep;
.super Ljava/lang/Object;
.source "ITaskStep.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
.implements Lcom/xuexiang/xtask/core/step/ITaskStepController;


# virtual methods
.method public abstract accept()Z
.end method

.method public abstract doTask()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getThreadType()Lcom/xuexiang/xtask/core/ThreadType;
.end method

.method public abstract isPending()Z
.end method

.method public abstract isRunning()Z
.end method

.method public abstract prepareTask(Lcom/xuexiang/xtask/core/param/impl/TaskParam;)V
.end method

.method public abstract setCancelable(Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;)V
.end method

.method public abstract setIsRunning(Z)V
.end method

.method public abstract setTaskParam(Lcom/xuexiang/xtask/core/param/ITaskParam;)Lcom/xuexiang/xtask/core/step/ITaskStep;
.end method

.method public abstract setTaskStepHandler(Lcom/xuexiang/xtask/core/step/ITaskStepHandler;)Lcom/xuexiang/xtask/core/step/ITaskStep;
.end method

.method public abstract setTaskStepLifecycle(Lcom/xuexiang/xtask/core/step/ITaskStepLifecycle;)Lcom/xuexiang/xtask/core/step/ITaskStep;
.end method

.method public abstract setThreadType(Lcom/xuexiang/xtask/core/ThreadType;)Lcom/xuexiang/xtask/core/step/ITaskStep;
.end method
