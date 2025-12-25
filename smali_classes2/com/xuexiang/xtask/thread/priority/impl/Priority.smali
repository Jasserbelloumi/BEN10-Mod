.class public Lcom/xuexiang/xtask/thread/priority/impl/Priority;
.super Ljava/lang/Object;
.source "Priority.java"

# interfaces
.implements Lcom/xuexiang/xtask/thread/priority/IPriority;


# instance fields
.field private mId:J

.field private mPriority:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "priority"    # I

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/xuexiang/xtask/thread/priority/impl/Priority;->mPriority:I

    .line 46
    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .line 60
    iget-wide v0, p0, Lcom/xuexiang/xtask/thread/priority/impl/Priority;->mId:J

    return-wide v0
.end method

.method public priority()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/xuexiang/xtask/thread/priority/impl/Priority;->mPriority:I

    return v0
.end method

.method public priority(I)V
    .locals 0
    .param p1, "priority"    # I

    .line 55
    iput p1, p0, Lcom/xuexiang/xtask/thread/priority/impl/Priority;->mPriority:I

    .line 56
    return-void
.end method

.method public setId(J)V
    .locals 0
    .param p1, "id"    # J

    .line 65
    iput-wide p1, p0, Lcom/xuexiang/xtask/thread/priority/impl/Priority;->mId:J

    .line 66
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Priority{mPriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xuexiang/xtask/thread/priority/impl/Priority;->mPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/xuexiang/xtask/thread/priority/impl/Priority;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
