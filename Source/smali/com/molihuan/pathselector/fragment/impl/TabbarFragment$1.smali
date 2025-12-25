.class Lcom/molihuan/pathselector/fragment/impl/TabbarFragment$1;
.super Lcom/xuexiang/xtask/core/step/impl/TaskChainCallbackAdapter;
.source "TabbarFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;->updateTabbarList(Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;


# direct methods
.method constructor <init>(Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;

    .line 141
    iput-object p1, p0, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment$1;->this$0:Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;

    invoke-direct {p0}, Lcom/xuexiang/xtask/core/step/impl/TaskChainCallbackAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskChainCompleted(Lcom/xuexiang/xtask/core/ITaskChainEngine;Lcom/xuexiang/xtask/core/param/ITaskResult;)V
    .locals 4
    .param p1, "engine"    # Lcom/xuexiang/xtask/core/ITaskChainEngine;
    .param p2, "result"    # Lcom/xuexiang/xtask/core/param/ITaskResult;

    .line 146
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment$1;->this$0:Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;

    invoke-static {v0}, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;->access$000(Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;)Lcom/molihuan/pathselector/service/IFileDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment$1;->this$0:Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;

    iget-object v1, v1, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;->tabbarListAdapter:Lcom/molihuan/pathselector/adapter/TabbarListAdapter;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-interface {v0, v2, v1, v3}, Lcom/molihuan/pathselector/service/IFileDataManager;->refreshFileTabbar(Lcom/molihuan/pathselector/adapter/FileListAdapter;Lcom/molihuan/pathselector/adapter/TabbarListAdapter;I)V

    .line 148
    return-void
.end method
