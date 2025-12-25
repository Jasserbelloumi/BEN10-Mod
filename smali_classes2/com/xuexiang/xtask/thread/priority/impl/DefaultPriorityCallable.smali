.class public Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityCallable;
.super Ljava/lang/Object;
.source "DefaultPriorityCallable.java"

# interfaces
.implements Lcom/xuexiang/xtask/thread/priority/IPriorityCallable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/xuexiang/xtask/thread/priority/IPriorityCallable<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private mCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TV;>;"
        }
    .end annotation
.end field

.field private mPriority:Lcom/xuexiang/xtask/thread/priority/IPriority;


# direct methods
.method public constructor <init>(Lcom/xuexiang/xtask/thread/priority/IPriority;Ljava/util/concurrent/Callable;)V
    .locals 2
    .param p1, "priority"    # Lcom/xuexiang/xtask/thread/priority/IPriority;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xuexiang/xtask/thread/priority/IPriority;",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    .line 42
    .local p0, "this":Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityCallable;, "Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityCallable<TV;>;"
    .local p2, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityCallable;->mPriority:Lcom/xuexiang/xtask/thread/priority/IPriority;

    .line 44
    iput-object p2, p0, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityCallable;->mCallable:Ljava/util/concurrent/Callable;

    .line 45
    invoke-static {}, Lcom/xuexiang/xtask/thread/utils/PriorityUtils;->generateId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityCallable;->setId(J)V

    .line 46
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 79
    .local p0, "this":Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityCallable;, "Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityCallable<TV;>;"
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityCallable;->mCallable:Ljava/util/concurrent/Callable;

    if-eqz v0, :cond_0

    .line 80
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 82
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public compareTo(Lcom/xuexiang/xtask/thread/priority/IPriority;)I
    .locals 1
    .param p1, "other"    # Lcom/xuexiang/xtask/thread/priority/IPriority;

    .line 74
    .local p0, "this":Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityCallable;, "Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityCallable<TV;>;"
    invoke-static {p0, p1}, Lcom/xuexiang/xtask/thread/utils/PriorityUtils;->compare(Lcom/xuexiang/xtask/thread/priority/IPriority;Lcom/xuexiang/xtask/thread/priority/IPriority;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 32
    .local p0, "this":Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityCallable;, "Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityCallable<TV;>;"
    check-cast p1, Lcom/xuexiang/xtask/thread/priority/IPriority;

    invoke-virtual {p0, p1}, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityCallable;->compareTo(Lcom/xuexiang/xtask/thread/priority/IPriority;)I

    move-result p1

    return p1
.end method

.method public getId()J
    .locals 2

    .line 57
    .local p0, "this":Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityCallable;, "Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityCallable<TV;>;"
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityCallable;->mPriority:Lcom/xuexiang/xtask/thread/priority/IPriority;

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

    .line 69
    .local p0, "this":Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityCallable;, "Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityCallable<TV;>;"
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityCallable;->mPriority:Lcom/xuexiang/xtask/thread/priority/IPriority;

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

    .line 50
    .local p0, "this":Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityCallable;, "Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityCallable<TV;>;"
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityCallable;->mPriority:Lcom/xuexiang/xtask/thread/priority/IPriority;

    if-eqz v0, :cond_0

    .line 51
    invoke-interface {v0, p1}, Lcom/xuexiang/xtask/thread/priority/IPriority;->priority(I)V

    .line 53
    :cond_0
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .line 62
    .local p0, "this":Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityCallable;, "Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityCallable<TV;>;"
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityCallable;->mPriority:Lcom/xuexiang/xtask/thread/priority/IPriority;

    if-eqz v0, :cond_0

    .line 63
    invoke-interface {v0, p1, p2}, Lcom/xuexiang/xtask/thread/priority/IPriority;->setId(J)V

    .line 65
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 87
    .local p0, "this":Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityCallable;, "Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityCallable<TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DefaultPriorityCallable{, mPriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityCallable;->mPriority:Lcom/xuexiang/xtask/thread/priority/IPriority;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCallable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityCallable;->mCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
