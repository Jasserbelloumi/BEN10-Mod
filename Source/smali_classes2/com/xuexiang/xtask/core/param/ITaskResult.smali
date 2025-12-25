.class public interface abstract Lcom/xuexiang/xtask/core/param/ITaskResult;
.super Ljava/lang/Object;
.source "ITaskResult.java"


# static fields
.field public static final ERROR:I = -0x1

.field public static final PROCESS_TASK_THROW_EXCEPTION:I = -0x2

.field public static final SUCCESS:I


# virtual methods
.method public abstract getCode()I
.end method

.method public abstract getDataStore()Lcom/xuexiang/xtask/core/param/IDataStore;
.end method

.method public abstract getDetailMessage()Ljava/lang/String;
.end method

.method public abstract getMessage()Ljava/lang/String;
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract saveResult(Lcom/xuexiang/xtask/core/param/ITaskResult;)V
.end method

.method public abstract saveResultNotPath(Lcom/xuexiang/xtask/core/param/ITaskResult;)V
.end method

.method public abstract setResult(ILjava/lang/String;)V
.end method

.method public abstract updateParam(Lcom/xuexiang/xtask/core/param/ITaskParam;)V
.end method
