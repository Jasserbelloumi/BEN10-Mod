.class public Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityStrategy;
.super Ljava/lang/Object;
.source "DefaultPriorityStrategy.java"

# interfaces
.implements Lcom/xuexiang/xtask/thread/priority/IPriorityStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/xuexiang/xtask/thread/priority/IPriority;Lcom/xuexiang/xtask/thread/priority/IPriority;)I
    .locals 6
    .param p1, "priority"    # Lcom/xuexiang/xtask/thread/priority/IPriority;
    .param p2, "other"    # Lcom/xuexiang/xtask/thread/priority/IPriority;

    .line 33
    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_2

    .line 36
    :cond_0
    invoke-interface {p1}, Lcom/xuexiang/xtask/thread/priority/IPriority;->priority()I

    move-result v0

    invoke-interface {p2}, Lcom/xuexiang/xtask/thread/priority/IPriority;->priority()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    .line 38
    invoke-interface {p1}, Lcom/xuexiang/xtask/thread/priority/IPriority;->getId()J

    move-result-wide v0

    invoke-interface {p2}, Lcom/xuexiang/xtask/thread/priority/IPriority;->getId()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    return v2

    .line 41
    :cond_2
    invoke-interface {p1}, Lcom/xuexiang/xtask/thread/priority/IPriority;->priority()I

    move-result v0

    invoke-interface {p2}, Lcom/xuexiang/xtask/thread/priority/IPriority;->priority()I

    move-result v1

    if-le v0, v1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    return v2

    .line 34
    :cond_4
    :goto_2
    const/4 v0, 0x0

    return v0
.end method
