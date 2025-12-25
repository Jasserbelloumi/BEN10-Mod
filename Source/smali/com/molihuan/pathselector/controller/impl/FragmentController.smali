.class public Lcom/molihuan/pathselector/controller/impl/FragmentController;
.super Lcom/molihuan/pathselector/controller/AbstractBuildController;
.source "FragmentController.java"


# instance fields
.field private pathSelectFragment:Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/molihuan/pathselector/controller/AbstractBuildController;-><init>()V

    return-void
.end method


# virtual methods
.method public getDialogFragment()Lcom/molihuan/pathselector/dialog/AbstractFragmentDialog;
    .locals 1

    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPathSelectFragment()Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/molihuan/pathselector/controller/impl/FragmentController;->pathSelectFragment:Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;

    return-object v0
.end method

.method public show()Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;
    .locals 7

    .line 30
    iget-object v0, p0, Lcom/molihuan/pathselector/controller/impl/FragmentController;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->frameLayoutId:Ljava/lang/Integer;

    .line 31
    .local v0, "frameLayoutId":Ljava/lang/Integer;
    if-eqz v0, :cond_2

    .line 34
    iget-object v1, p0, Lcom/molihuan/pathselector/controller/impl/FragmentController;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v1, v1, Lcom/molihuan/pathselector/dao/SelectConfigData;->context:Landroid/content/Context;

    .line 35
    .local v1, "context":Landroid/content/Context;
    invoke-static {}, Lcom/molihuan/pathselector/PathSelector;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 37
    .local v2, "fragment":Landroidx/fragment/app/Fragment;
    if-eqz v2, :cond_0

    .line 38
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    .local v3, "fragmentManager":Landroidx/fragment/app/FragmentManager;
    goto :goto_0

    .line 40
    .end local v3    # "fragmentManager":Landroidx/fragment/app/FragmentManager;
    :cond_0
    instance-of v3, v1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v3, :cond_1

    .line 41
    move-object v3, v1

    check-cast v3, Landroidx/fragment/app/FragmentActivity;

    .line 42
    .local v3, "activity":Landroidx/fragment/app/FragmentActivity;
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    .line 43
    .local v3, "fragmentManager":Landroidx/fragment/app/FragmentManager;
    nop

    .line 47
    :goto_0
    iget-object v4, p0, Lcom/molihuan/pathselector/controller/impl/FragmentController;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iput-object v3, v4, Lcom/molihuan/pathselector/dao/SelectConfigData;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 48
    const-string v4, "PathSelectFragment  new  start"

    invoke-static {v4}, Lcom/molihuan/pathselector/utils/Mtools;->log(Ljava/lang/String;)V

    .line 50
    new-instance v4, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;

    invoke-direct {v4}, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;-><init>()V

    iput-object v4, p0, Lcom/molihuan/pathselector/controller/impl/FragmentController;->pathSelectFragment:Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;

    .line 52
    const-string v4, "PathSelectFragment  new  end"

    invoke-static {v4}, Lcom/molihuan/pathselector/utils/Mtools;->log(Ljava/lang/String;)V

    .line 54
    const-string v4, "PathSelectFragment  show  start"

    invoke-static {v4}, Lcom/molihuan/pathselector/utils/Mtools;->log(Ljava/lang/String;)V

    .line 55
    nop

    .line 57
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/molihuan/pathselector/controller/impl/FragmentController;->pathSelectFragment:Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;

    .line 55
    const-string v6, "framelayout_show_body_mlh"

    invoke-static {v3, v4, v5, v6}, Lcom/molihuan/pathselector/utils/FragmentTools;->fragmentReplace(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 61
    const-string v4, "PathSelectFragment  show  end"

    invoke-static {v4}, Lcom/molihuan/pathselector/utils/Mtools;->log(Ljava/lang/String;)V

    .line 63
    iget-object v4, p0, Lcom/molihuan/pathselector/controller/impl/FragmentController;->pathSelectFragment:Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;

    return-object v4

    .line 44
    .end local v3    # "fragmentManager":Landroidx/fragment/app/FragmentManager;
    :cond_1
    new-instance v3, Ljava/lang/ClassCastException;

    const-string v4, "context\u5fc5\u987b\u4e3aFragmentActivity\u7c7b\u578b\u4ee5\u53ca\u5176\u5b50\u7c7b(\u5982 AppCompatActivity)\u6216PathSelector.fragment\u4e0d\u4e3a\u7a7a"

    invoke-direct {v3, v4}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 32
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "fragment":Landroidx/fragment/app/Fragment;
    :cond_2
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "frameLayoutId is a null object reference and you must set it"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
