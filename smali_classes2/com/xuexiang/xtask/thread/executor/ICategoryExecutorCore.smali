.class public interface abstract Lcom/xuexiang/xtask/thread/executor/ICategoryExecutorCore;
.super Ljava/lang/Object;
.source "ICategoryExecutorCore.java"

# interfaces
.implements Lcom/xuexiang/xtask/thread/executor/IExecutorCore;


# virtual methods
.method public abstract backgroundSubmit(Ljava/lang/Runnable;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
.end method

.method public abstract emergentSubmit(Ljava/lang/Runnable;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
.end method

.method public abstract groupSubmit(Ljava/lang/String;Ljava/lang/Runnable;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
.end method

.method public abstract ioSubmit(Ljava/lang/Runnable;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
.end method

.method public abstract postToMain(Ljava/lang/Runnable;)Z
.end method

.method public abstract postToMainDelay(Ljava/lang/Runnable;J)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
.end method

.method public abstract submit(Ljava/lang/Runnable;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
.end method
