.class Lcom/molihuan/pathselector/fragment/impl/FileShowFragment$2;
.super Lcom/xuexiang/xtask/core/step/impl/TaskCommand;
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

    .line 173
    iput-object p1, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment$2;->this$0:Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;

    iput-object p2, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment$2;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Lcom/xuexiang/xtask/core/step/impl/TaskCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment$2;->val$path:Ljava/lang/String;

    invoke-static {v0}, Lcom/molihuan/pathselector/utils/FileTools;->needUseUri(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment$2;->this$0:Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;

    invoke-static {v0}, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->access$100(Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;)Lcom/molihuan/pathselector/service/IFileDataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment$2;->this$0:Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;

    invoke-static {v2}, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->access$400(Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;)Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment$2;->this$0:Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;

    iget-object v3, v3, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->initPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment$2;->val$path:Ljava/lang/String;

    iget-object v5, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment$2;->this$0:Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;

    invoke-static {v5}, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->access$300(Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment$2;->this$0:Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;

    invoke-static {v6}, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->access$000(Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;)Lcom/molihuan/pathselector/adapter/FileListAdapter;

    move-result-object v6

    iget-object v7, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment$2;->this$0:Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;

    invoke-static {v7}, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->access$500(Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;)Ljava/util/List;

    move-result-object v7

    invoke-interface/range {v1 .. v7}, Lcom/molihuan/pathselector/service/IFileDataManager;->updateFileList(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/molihuan/pathselector/adapter/FileListAdapter;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->access$302(Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;Ljava/util/List;)Ljava/util/List;

    .line 180
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment$2;->this$0:Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;

    invoke-static {v0}, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->access$100(Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;)Lcom/molihuan/pathselector/service/IFileDataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment$2;->this$0:Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;

    invoke-static {v2}, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->access$300(Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment$2;->this$0:Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;

    invoke-static {v3}, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->access$600(Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;)Lcom/molihuan/pathselector/dao/SelectConfigData;

    move-result-object v3

    iget-object v3, v3, Lcom/molihuan/pathselector/dao/SelectConfigData;->sortType:Lcom/molihuan/pathselector/utils/MConstants$SortRules;

    iget-object v4, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment$2;->this$0:Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;

    iget-object v4, v4, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->currentPath:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lcom/molihuan/pathselector/service/IFileDataManager;->sortFileList(Ljava/util/List;Lcom/molihuan/pathselector/utils/MConstants$SortRules;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->access$302(Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment$2;->this$0:Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;

    invoke-static {v0}, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->access$200(Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;)Lcom/molihuan/pathselector/service/IFileDataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment$2;->this$0:Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;

    invoke-static {v2}, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->access$700(Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;)Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment$2;->this$0:Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;

    iget-object v3, v3, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->initPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment$2;->val$path:Ljava/lang/String;

    iget-object v5, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment$2;->this$0:Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;

    invoke-static {v5}, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->access$300(Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment$2;->this$0:Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;

    invoke-static {v6}, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->access$000(Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;)Lcom/molihuan/pathselector/adapter/FileListAdapter;

    move-result-object v6

    iget-object v7, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment$2;->this$0:Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;

    invoke-static {v7}, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->access$500(Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;)Ljava/util/List;

    move-result-object v7

    invoke-interface/range {v1 .. v7}, Lcom/molihuan/pathselector/service/IFileDataManager;->updateFileList(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/molihuan/pathselector/adapter/FileListAdapter;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->access$302(Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;Ljava/util/List;)Ljava/util/List;

    .line 185
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment$2;->this$0:Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;

    invoke-static {v0}, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->access$200(Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;)Lcom/molihuan/pathselector/service/IFileDataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment$2;->this$0:Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;

    invoke-static {v2}, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->access$300(Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment$2;->this$0:Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;

    invoke-static {v3}, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->access$800(Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;)Lcom/molihuan/pathselector/dao/SelectConfigData;

    move-result-object v3

    iget-object v3, v3, Lcom/molihuan/pathselector/dao/SelectConfigData;->sortType:Lcom/molihuan/pathselector/utils/MConstants$SortRules;

    iget-object v4, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment$2;->this$0:Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;

    iget-object v4, v4, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->currentPath:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lcom/molihuan/pathselector/service/IFileDataManager;->sortFileList(Ljava/util/List;Lcom/molihuan/pathselector/utils/MConstants$SortRules;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->access$302(Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;Ljava/util/List;)Ljava/util/List;

    .line 188
    :goto_0
    return-void
.end method
