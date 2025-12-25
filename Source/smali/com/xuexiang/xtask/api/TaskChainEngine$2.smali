.class Lcom/xuexiang/xtask/api/TaskChainEngine$2;
.super Ljava/lang/Object;
.source "TaskChainEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xuexiang/xtask/api/TaskChainEngine;->onTaskChainCancelled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xuexiang/xtask/api/TaskChainEngine;


# direct methods
.method constructor <init>(Lcom/xuexiang/xtask/api/TaskChainEngine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xuexiang/xtask/api/TaskChainEngine;

    .line 322
    iput-object p1, p0, Lcom/xuexiang/xtask/api/TaskChainEngine$2;->this$0:Lcom/xuexiang/xtask/api/TaskChainEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/xuexiang/xtask/api/TaskChainEngine$2;->this$0:Lcom/xuexiang/xtask/api/TaskChainEngine;

    invoke-static {v0}, Lcom/xuexiang/xtask/api/TaskChainEngine;->access$000(Lcom/xuexiang/xtask/api/TaskChainEngine;)Lcom/xuexiang/xtask/core/ITaskChainCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/xuexiang/xtask/api/TaskChainEngine$2;->this$0:Lcom/xuexiang/xtask/api/TaskChainEngine;

    invoke-interface {v0, v1}, Lcom/xuexiang/xtask/core/ITaskChainCallback;->onTaskChainCancelled(Lcom/xuexiang/xtask/core/ITaskChainEngine;)V

    .line 326
    return-void
.end method
