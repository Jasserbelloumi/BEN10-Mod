.class public interface abstract Lcom/xuexiang/xtask/core/step/ITaskStepHandler;
.super Ljava/lang/Object;
.source "ITaskStepHandler.java"


# virtual methods
.method public abstract accept(Lcom/xuexiang/xtask/core/step/ITaskStep;)Z
.end method

.method public abstract afterTask(Lcom/xuexiang/xtask/core/step/ITaskStep;)V
.end method

.method public abstract beforeTask(Lcom/xuexiang/xtask/core/step/ITaskStep;)V
.end method

.method public abstract handleTaskCancelled(Lcom/xuexiang/xtask/core/step/ITaskStep;)V
.end method

.method public abstract handleTaskFailed(Lcom/xuexiang/xtask/core/step/ITaskStep;)V
.end method

.method public abstract handleTaskSucceed(Lcom/xuexiang/xtask/core/step/ITaskStep;)V
.end method

.method public abstract onTaskException(Lcom/xuexiang/xtask/core/step/ITaskStep;Ljava/lang/Exception;)V
.end method
