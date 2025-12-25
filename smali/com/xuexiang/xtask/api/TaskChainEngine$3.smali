.class Lcom/xuexiang/xtask/api/TaskChainEngine$3;
.super Ljava/lang/Object;
.source "TaskChainEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xuexiang/xtask/api/TaskChainEngine;->onTaskChainCompleted(Lcom/xuexiang/xtask/core/param/ITaskResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xuexiang/xtask/api/TaskChainEngine;

.field final synthetic val$result:Lcom/xuexiang/xtask/core/param/ITaskResult;


# direct methods
.method constructor <init>(Lcom/xuexiang/xtask/api/TaskChainEngine;Lcom/xuexiang/xtask/core/param/ITaskResult;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xuexiang/xtask/api/TaskChainEngine;

    .line 342
    iput-object p1, p0, Lcom/xuexiang/xtask/api/TaskChainEngine$3;->this$0:Lcom/xuexiang/xtask/api/TaskChainEngine;

    iput-object p2, p0, Lcom/xuexiang/xtask/api/TaskChainEngine$3;->val$result:Lcom/xuexiang/xtask/core/param/ITaskResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 345
    iget-object v0, p0, Lcom/xuexiang/xtask/api/TaskChainEngine$3;->this$0:Lcom/xuexiang/xtask/api/TaskChainEngine;

    invoke-static {v0}, Lcom/xuexiang/xtask/api/TaskChainEngine;->access$000(Lcom/xuexiang/xtask/api/TaskChainEngine;)Lcom/xuexiang/xtask/core/ITaskChainCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/xuexiang/xtask/api/TaskChainEngine$3;->this$0:Lcom/xuexiang/xtask/api/TaskChainEngine;

    iget-object v2, p0, Lcom/xuexiang/xtask/api/TaskChainEngine$3;->val$result:Lcom/xuexiang/xtask/core/param/ITaskResult;

    invoke-interface {v0, v1, v2}, Lcom/xuexiang/xtask/core/ITaskChainCallback;->onTaskChainCompleted(Lcom/xuexiang/xtask/core/ITaskChainEngine;Lcom/xuexiang/xtask/core/param/ITaskResult;)V

    .line 346
    return-void
.end method
