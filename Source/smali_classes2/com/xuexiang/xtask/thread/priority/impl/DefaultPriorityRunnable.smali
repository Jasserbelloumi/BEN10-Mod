.class public Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityRunnable;
.super Ljava/lang/Object;
.source "DefaultPriorityRunnable.java"

# interfaces
.implements Lcom/xuexiang/xtask/thread/priority/IPriorityRunnable;


# instance fields
.field private mPriority:Lcom/xuexiang/xtask/thread/priority/IPriority;

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/xuexiang/xtask/thread/priority/IPriority;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "priority"    # Lcom/xuexiang/xtask/thread/priority/IPriority;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityRunnable;->mPriority:Lcom/xuexiang/xtask/thread/priority/IPriority;

    .line 42
    iput-object p2, p0, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityRunnable;->mRunnable:Ljava/lang/Runnable;

    .line 43
    invoke-static {}, Lcom/xuexiang/xtask/thread/utils/PriorityUtils;->generateId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityRunnable;->setId(J)V

    .line 44
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/xuexiang/xtask/thread/priority/IPriority;)I
    .locals 1
    .param p1, "other"    # Lcom/xuexiang/xtask/thread/priority/IPriority;

    .line 72
    invoke-static {p0, p1}, Lcom/xuexiang/xtask/thread/utils/PriorityUtils;->compare(Lcom/xuexiang/xtask/thread/priority/IPriority;Lcom/xuexiang/xtask/thread/priority/IPriority;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 30
    check-cast p1, Lcom/xuexiang/xtask/thread/priority/IPriority;

    invoke-virtual {p0, p1}, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityRunnable;->compareTo(Lcom/xuexiang/xtask/thread/priority/IPriority;)I

    move-result p1

    return p1
.end method

.method public getId()J
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityRunnable;->mPriority:Lcom/xuexiang/xtask/thread/priority/IPriority;

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

    .line 67
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityRunnable;->mPriority:Lcom/xuexiang/xtask/thread/priority/IPriority;

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

    .line 48
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityRunnable;->mPriority:Lcom/xuexiang/xtask/thread/priority/IPriority;

    if-eqz v0, :cond_0

    .line 49
    invoke-interface {v0, p1}, Lcom/xuexiang/xtask/thread/priority/IPriority;->priority(I)V

    .line 51
    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityRunnable;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 80
    :cond_0
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .line 60
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityRunnable;->mPriority:Lcom/xuexiang/xtask/thread/priority/IPriority;

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0, p1, p2}, Lcom/xuexiang/xtask/thread/priority/IPriority;->setId(J)V

    .line 63
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DefaultPriorityRunnable{, mPriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityRunnable;->mPriority:Lcom/xuexiang/xtask/thread/priority/IPriority;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRunnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityRunnable;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
