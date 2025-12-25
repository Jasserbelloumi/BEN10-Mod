.class Lcom/molihuan/pathselector/fragment/impl/FileShowFragment$1;
.super Lcom/xuexiang/xtask/core/step/impl/TaskChainCallbackAdapter;
.source "FileShowFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->updateFileList(Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;

    .line 190
    iput-object p1, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment$1;->this$0:Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;

    iput-object p2, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Lcom/xuexiang/xtask/core/step/impl/TaskChainCallbackAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskChainCompleted(Lcom/xuexiang/xtask/core/ITaskChainEngine;Lcom/xuexiang/xtask/core/param/ITaskResult;)V
    .locals 4
    .param p1, "engine"    # Lcom/xuexiang/xtask/core/ITaskChainEngine;
    .param p2, "result"    # Lcom/xuexiang/xtask/core/param/ITaskResult;

    .line 195
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment$1;->val$path:Ljava/lang/String;

    invoke-static {v0}, Lcom/molihuan/pathselector/utils/FileTools;->needUseUri(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment$1;->this$0:Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;

    invoke-static {v0}, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->access$100(Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;)Lcom/molihuan/pathselector/service/IFileDataManager;

    move-result-object v0

    iget-object v3, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment$1;->this$0:Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;

    invoke-static {v3}, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->access$000(Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;)Lcom/molihuan/pathselector/adapter/FileListAdapter;

    move-result-object v3

    invoke-interface {v0, v3, v2, v1}, Lcom/molihuan/pathselector/service/IFileDataManager;->refreshFileTabbar(Lcom/molihuan/pathselector/adapter/FileListAdapter;Lcom/molihuan/pathselector/adapter/TabbarListAdapter;I)V

    goto :goto_0

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment$1;->this$0:Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;

    invoke-static {v0}, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->access$200(Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;)Lcom/molihuan/pathselector/service/IFileDataManager;

    move-result-object v0

    iget-object v3, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment$1;->this$0:Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;

    invoke-static {v3}, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->access$000(Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;)Lcom/molihuan/pathselector/adapter/FileListAdapter;

    move-result-object v3

    invoke-interface {v0, v3, v2, v1}, Lcom/molihuan/pathselector/service/IFileDataManager;->refreshFileTabbar(Lcom/molihuan/pathselector/adapter/FileListAdapter;Lcom/molihuan/pathselector/adapter/TabbarListAdapter;I)V

    .line 203
    :goto_0
    return-void
.end method
