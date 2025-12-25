.class public interface abstract Lcom/xuexiang/xtask/core/ITaskChainCallback;
.super Ljava/lang/Object;
.source "ITaskChainCallback.java"


# virtual methods
.method public abstract isCallBackOnMainThread()Z
.end method

.method public abstract onTaskChainCancelled(Lcom/xuexiang/xtask/core/ITaskChainEngine;)V
.end method

.method public abstract onTaskChainCompleted(Lcom/xuexiang/xtask/core/ITaskChainEngine;Lcom/xuexiang/xtask/core/param/ITaskResult;)V
.end method

.method public abstract onTaskChainError(Lcom/xuexiang/xtask/core/ITaskChainEngine;Lcom/xuexiang/xtask/core/param/ITaskResult;)V
.end method

.method public abstract onTaskChainStart(Lcom/xuexiang/xtask/core/ITaskChainEngine;)V
.end method
