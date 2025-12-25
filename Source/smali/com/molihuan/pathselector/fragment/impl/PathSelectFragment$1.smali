.class Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment$1;
.super Ljava/lang/Object;
.source "PathSelectFragment.java"

# interfaces
.implements Lcom/hjq/permissions/OnPermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;


# direct methods
.method constructor <init>(Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;

    .line 388
    iput-object p1, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment$1;->this$0:Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGranted(Ljava/util/List;Z)V
    .locals 1
    .param p2, "all"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 391
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment$1;->this$0:Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;

    invoke-virtual {v0}, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->updateFileList()Ljava/util/List;

    .line 392
    return-void
.end method
