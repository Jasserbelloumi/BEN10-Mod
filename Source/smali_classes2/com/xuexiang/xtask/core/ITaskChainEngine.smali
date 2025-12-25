.class public interface abstract Lcom/xuexiang/xtask/core/ITaskChainEngine;
.super Ljava/lang/Object;
.source "ITaskChainEngine.java"

# interfaces
.implements Lcom/xuexiang/xtask/core/step/ITaskStepLifecycle;
.implements Lcom/xuexiang/xtask/core/step/IGroupTaskStep;
.implements Lcom/xuexiang/xtask/thread/pool/cancel/ICanceller;


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract reset()V
.end method

.method public abstract setTaskChainCallback(Lcom/xuexiang/xtask/core/ITaskChainCallback;)Lcom/xuexiang/xtask/core/ITaskChainEngine;
.end method

.method public abstract setTaskParam(Lcom/xuexiang/xtask/core/param/ITaskParam;)Lcom/xuexiang/xtask/core/ITaskChainEngine;
.end method

.method public abstract start()Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
.end method

.method public abstract start(Z)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
.end method
