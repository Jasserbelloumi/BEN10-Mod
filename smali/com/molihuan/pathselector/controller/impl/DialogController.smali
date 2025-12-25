.class public Lcom/molihuan/pathselector/controller/impl/DialogController;
.super Lcom/molihuan/pathselector/controller/AbstractBuildController;
.source "DialogController.java"


# instance fields
.field private pathSelectDialog:Lcom/molihuan/pathselector/dialog/AbstractFragmentDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/molihuan/pathselector/controller/AbstractBuildController;-><init>()V

    return-void
.end method


# virtual methods
.method public getDialogFragment()Lcom/molihuan/pathselector/dialog/AbstractFragmentDialog;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/molihuan/pathselector/controller/impl/DialogController;->pathSelectDialog:Lcom/molihuan/pathselector/dialog/AbstractFragmentDialog;

    return-object v0
.end method

.method public getPathSelectFragment()Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/molihuan/pathselector/controller/impl/DialogController;->pathSelectDialog:Lcom/molihuan/pathselector/dialog/AbstractFragmentDialog;

    invoke-virtual {v0}, Lcom/molihuan/pathselector/dialog/AbstractFragmentDialog;->getPathSelectFragment()Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;

    move-result-object v0

    return-object v0
.end method

.method public show()Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;
    .locals 5

    .line 28
    iget-object v0, p0, Lcom/molihuan/pathselector/controller/impl/DialogController;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->context:Landroid/content/Context;

    .line 29
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/molihuan/pathselector/PathSelector;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 31
    .local v1, "fragment":Landroidx/fragment/app/Fragment;
    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    .local v2, "fragmentManager":Landroidx/fragment/app/FragmentManager;
    goto :goto_0

    .line 34
    .end local v2    # "fragmentManager":Landroidx/fragment/app/FragmentManager;
    :cond_0
    instance-of v2, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v2, :cond_1

    .line 35
    move-object v2, v0

    check-cast v2, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    .line 40
    .restart local v2    # "fragmentManager":Landroidx/fragment/app/FragmentManager;
    :goto_0
    iget-object v3, p0, Lcom/molihuan/pathselector/controller/impl/DialogController;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iput-object v2, v3, Lcom/molihuan/pathselector/dao/SelectConfigData;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 42
    new-instance v3, Lcom/molihuan/pathselector/dialog/impl/PathSelectDialog;

    invoke-direct {v3}, Lcom/molihuan/pathselector/dialog/impl/PathSelectDialog;-><init>()V

    iput-object v3, p0, Lcom/molihuan/pathselector/controller/impl/DialogController;->pathSelectDialog:Lcom/molihuan/pathselector/dialog/AbstractFragmentDialog;

    .line 45
    const-string v4, "framelayout_show_body_mlh"

    invoke-virtual {v3, v2, v4}, Lcom/molihuan/pathselector/dialog/AbstractFragmentDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 47
    iget-object v3, p0, Lcom/molihuan/pathselector/controller/impl/DialogController;->pathSelectDialog:Lcom/molihuan/pathselector/dialog/AbstractFragmentDialog;

    invoke-virtual {v3}, Lcom/molihuan/pathselector/dialog/AbstractFragmentDialog;->getPathSelectFragment()Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;

    move-result-object v3

    return-object v3

    .line 37
    .end local v2    # "fragmentManager":Landroidx/fragment/app/FragmentManager;
    :cond_1
    new-instance v2, Ljava/lang/ClassCastException;

    const-string v3, "context\u5fc5\u987b\u4e3aFragmentActivity\u7c7b\u578b\u4ee5\u53ca\u5176\u5b50\u7c7b(\u5982 AppCompatActivity)\u6216PathSelector.fragment\u4e0d\u4e3a\u7a7a"

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
