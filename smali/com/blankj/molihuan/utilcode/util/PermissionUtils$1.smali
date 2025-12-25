.class Lcom/blankj/molihuan/utilcode/util/PermissionUtils$1;
.super Ljava/lang/Object;
.source "PermissionUtils.java"

# interfaces
.implements Lcom/blankj/molihuan/utilcode/util/PermissionUtils$OnRationaleListener$ShouldRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->rationalInner(Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blankj/molihuan/utilcode/util/PermissionUtils;

.field final synthetic val$activity:Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity;

.field final synthetic val$againRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/blankj/molihuan/utilcode/util/PermissionUtils;Ljava/lang/Runnable;Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/blankj/molihuan/utilcode/util/PermissionUtils;

    .line 357
    iput-object p1, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils$1;->this$0:Lcom/blankj/molihuan/utilcode/util/PermissionUtils;

    iput-object p2, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils$1;->val$againRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils$1;->val$activity:Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public again(Z)V
    .locals 2
    .param p1, "again"    # Z

    .line 360
    if-eqz p1, :cond_0

    .line 361
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils$1;->this$0:Lcom/blankj/molihuan/utilcode/util/PermissionUtils;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->access$002(Lcom/blankj/molihuan/utilcode/util/PermissionUtils;Ljava/util/List;)Ljava/util/List;

    .line 362
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils$1;->this$0:Lcom/blankj/molihuan/utilcode/util/PermissionUtils;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->access$102(Lcom/blankj/molihuan/utilcode/util/PermissionUtils;Ljava/util/List;)Ljava/util/List;

    .line 363
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils$1;->val$againRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils$1;->val$activity:Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity;

    invoke-virtual {v0}, Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity;->finish()V

    .line 366
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils$1;->this$0:Lcom/blankj/molihuan/utilcode/util/PermissionUtils;

    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->access$200(Lcom/blankj/molihuan/utilcode/util/PermissionUtils;)V

    .line 368
    :goto_0
    return-void
.end method
