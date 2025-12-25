.class public interface abstract Lcom/xuexiang/xtask/thread/pool/cancel/ICancellerPool;
.super Ljava/lang/Object;
.source "ICancellerPool.java"


# virtual methods
.method public abstract add(Ljava/lang/String;Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;)Z
.end method

.method public abstract cancel(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public varargs abstract cancel([Ljava/lang/String;)V
.end method

.method public abstract cancel(Ljava/lang/String;)Z
.end method

.method public abstract cancelAll()V
.end method

.method public abstract clear(Z)V
.end method

.method public abstract remove(Ljava/lang/String;)Z
.end method
