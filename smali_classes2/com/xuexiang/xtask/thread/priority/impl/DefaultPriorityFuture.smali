.class public Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityFuture;
.super Ljava/util/concurrent/FutureTask;
.source "DefaultPriorityFuture.java"

# interfaces
.implements Lcom/xuexiang/xtask/thread/priority/IPriorityFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "TV;>;",
        "Lcom/xuexiang/xtask/thread/priority/IPriorityFuture<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private mPriority:Lcom/xuexiang/xtask/thread/priority/IPriority;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TV;)V"
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityFuture;, "Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityFuture<TV;>;"
    .local p2, "result":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 50
    instance-of v0, p1, Lcom/xuexiang/xtask/thread/priority/IPriority;

    if-eqz v0, :cond_0

    .line 51
    move-object v0, p1

    check-cast v0, Lcom/xuexiang/xtask/thread/priority/IPriority;

    iput-object v0, p0, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityFuture;->mPriority:Lcom/xuexiang/xtask/thread/priority/IPriority;

    .line 53
    :cond_0
    invoke-static {}, Lcom/xuexiang/xtask/thread/utils/PriorityUtils;->generateId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityFuture;->setId(J)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    .line 41
    .local p0, "this":Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityFuture;, "Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityFuture<TV;>;"
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 42
    instance-of v0, p1, Lcom/xuexiang/xtask/thread/priority/IPriority;

    if-eqz v0, :cond_0

    .line 43
    move-object v0, p1

    check-cast v0, Lcom/xuexiang/xtask/thread/priority/IPriority;

    iput-object v0, p0, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityFuture;->mPriority:Lcom/xuexiang/xtask/thread/priority/IPriority;

    .line 45
    :cond_0
    invoke-static {}, Lcom/xuexiang/xtask/thread/utils/PriorityUtils;->generateId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityFuture;->setId(J)V

    .line 46
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 94
    .local p0, "this":Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityFuture;, "Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityFuture<TV;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityFuture;->cancel(Z)Z

    .line 95
    return-void
.end method

.method public compareTo(Lcom/xuexiang/xtask/thread/priority/IPriority;)I
    .locals 1
    .param p1, "other"    # Lcom/xuexiang/xtask/thread/priority/IPriority;

    .line 82
    .local p0, "this":Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityFuture;, "Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityFuture<TV;>;"
    invoke-static {p0, p1}, Lcom/xuexiang/xtask/thread/utils/PriorityUtils;->compare(Lcom/xuexiang/xtask/thread/priority/IPriority;Lcom/xuexiang/xtask/thread/priority/IPriority;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 33
    .local p0, "this":Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityFuture;, "Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityFuture<TV;>;"
    check-cast p1, Lcom/xuexiang/xtask/thread/priority/IPriority;

    invoke-virtual {p0, p1}, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityFuture;->compareTo(Lcom/xuexiang/xtask/thread/priority/IPriority;)I

    move-result p1

    return p1
.end method

.method public getId()J
    .locals 2

    .line 65
    .local p0, "this":Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityFuture;, "Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityFuture<TV;>;"
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityFuture;->mPriority:Lcom/xuexiang/xtask/thread/priority/IPriority;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/xuexiang/xtask/thread/priority/IPriority;->getId()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public priority()I
    .locals 1

    .line 77
    .local p0, "this":Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityFuture;, "Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityFuture<TV;>;"
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityFuture;->mPriority:Lcom/xuexiang/xtask/thread/priority/IPriority;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/xuexiang/xtask/thread/priority/IPriority;->priority()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public priority(I)V
    .locals 1
    .param p1, "priority"    # I

    .line 58
    .local p0, "this":Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityFuture;, "Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityFuture<TV;>;"
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityFuture;->mPriority:Lcom/xuexiang/xtask/thread/priority/IPriority;

    if-eqz v0, :cond_0

    .line 59
    invoke-interface {v0, p1}, Lcom/xuexiang/xtask/thread/priority/IPriority;->priority(I)V

    .line 61
    :cond_0
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .line 70
    .local p0, "this":Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityFuture;, "Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityFuture<TV;>;"
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityFuture;->mPriority:Lcom/xuexiang/xtask/thread/priority/IPriority;

    if-eqz v0, :cond_0

    .line 71
    invoke-interface {v0, p1, p2}, Lcom/xuexiang/xtask/thread/priority/IPriority;->setId(J)V

    .line 73
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 87
    .local p0, "this":Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityFuture;, "Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityFuture<TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DefaultPriorityFuture{, mPriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityFuture;->mPriority:Lcom/xuexiang/xtask/thread/priority/IPriority;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
