.class public interface abstract Lcom/xuexiang/xtask/core/step/ITaskStepController;
.super Ljava/lang/Object;
.source "ITaskStepController.java"


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getTaskParam()Lcom/xuexiang/xtask/core/param/ITaskParam;
.end method

.method public abstract notifyTaskFailed(Lcom/xuexiang/xtask/core/param/ITaskResult;)V
.end method

.method public abstract notifyTaskSucceed(Lcom/xuexiang/xtask/core/param/ITaskResult;)V
.end method

.method public abstract recycle()V
.end method
