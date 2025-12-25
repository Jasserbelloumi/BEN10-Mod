.class Lcom/molihuan/pathselector/fragment/impl/TabbarFragment$2;
.super Lcom/xuexiang/xtask/core/step/impl/TaskCommand;
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

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;

    .line 133
    iput-object p1, p0, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment$2;->this$0:Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;

    iput-object p2, p0, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment$2;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Lcom/xuexiang/xtask/core/step/impl/TaskCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment$2;->this$0:Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;

    invoke-static {v0}, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;->access$000(Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;)Lcom/molihuan/pathselector/service/IFileDataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment$2;->this$0:Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;

    invoke-static {v2}, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;->access$100(Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment$2;->val$path:Ljava/lang/String;

    iget-object v4, p0, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment$2;->this$0:Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;

    iget-object v4, v4, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;->tabbarList:Ljava/util/List;

    iget-object v5, p0, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment$2;->this$0:Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;

    iget-object v5, v5, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;->tabbarListAdapter:Lcom/molihuan/pathselector/adapter/TabbarListAdapter;

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/molihuan/pathselector/service/IFileDataManager;->updateTabbarList(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/molihuan/pathselector/adapter/TabbarListAdapter;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;->tabbarList:Ljava/util/List;

    .line 139
    return-void
.end method
