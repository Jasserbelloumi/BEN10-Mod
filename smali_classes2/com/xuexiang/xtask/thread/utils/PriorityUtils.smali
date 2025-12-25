.class public final Lcom/xuexiang/xtask/thread/utils/PriorityUtils;
.super Ljava/lang/Object;
.source "PriorityUtils.java"


# static fields
.field private static final SEQ:Ljava/util/concurrent/atomic/AtomicLong;

.field private static sPriorityStrategy:Lcom/xuexiang/xtask/thread/priority/IPriorityStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/xuexiang/xtask/thread/utils/PriorityUtils;->SEQ:Ljava/util/concurrent/atomic/AtomicLong;

    .line 36
    new-instance v0, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityStrategy;

    invoke-direct {v0}, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityStrategy;-><init>()V

    sput-object v0, Lcom/xuexiang/xtask/thread/utils/PriorityUtils;->sPriorityStrategy:Lcom/xuexiang/xtask/thread/priority/IPriorityStrategy;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static compare(Lcom/xuexiang/xtask/thread/priority/IPriority;Lcom/xuexiang/xtask/thread/priority/IPriority;)I
    .locals 1
    .param p0, "priority"    # Lcom/xuexiang/xtask/thread/priority/IPriority;
    .param p1, "other"    # Lcom/xuexiang/xtask/thread/priority/IPriority;

    .line 68
    sget-object v0, Lcom/xuexiang/xtask/thread/utils/PriorityUtils;->sPriorityStrategy:Lcom/xuexiang/xtask/thread/priority/IPriorityStrategy;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityStrategy;

    invoke-direct {v0}, Lcom/xuexiang/xtask/thread/priority/impl/DefaultPriorityStrategy;-><init>()V

    sput-object v0, Lcom/xuexiang/xtask/thread/utils/PriorityUtils;->sPriorityStrategy:Lcom/xuexiang/xtask/thread/priority/IPriorityStrategy;

    .line 71
    :cond_0
    sget-object v0, Lcom/xuexiang/xtask/thread/utils/PriorityUtils;->sPriorityStrategy:Lcom/xuexiang/xtask/thread/priority/IPriorityStrategy;

    invoke-interface {v0, p0, p1}, Lcom/xuexiang/xtask/thread/priority/IPriorityStrategy;->compare(Lcom/xuexiang/xtask/thread/priority/IPriority;Lcom/xuexiang/xtask/thread/priority/IPriority;)I

    move-result v0

    return v0
.end method

.method public static formatStackTrace([Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 6
    .param p0, "stackTrace"    # [Ljava/lang/StackTraceElement;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 82
    .local v3, "element":Ljava/lang/StackTraceElement;
    const-string v4, "    at "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .end local v3    # "element":Ljava/lang/StackTraceElement;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static generateId()J
    .locals 2

    .line 48
    sget-object v0, Lcom/xuexiang/xtask/thread/utils/PriorityUtils;->SEQ:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    return-wide v0
.end method

.method public static setPriorityStrategy(Lcom/xuexiang/xtask/thread/priority/IPriorityStrategy;)V
    .locals 0
    .param p0, "sPriorityStrategy"    # Lcom/xuexiang/xtask/thread/priority/IPriorityStrategy;

    .line 57
    sput-object p0, Lcom/xuexiang/xtask/thread/utils/PriorityUtils;->sPriorityStrategy:Lcom/xuexiang/xtask/thread/priority/IPriorityStrategy;

    .line 58
    return-void
.end method
