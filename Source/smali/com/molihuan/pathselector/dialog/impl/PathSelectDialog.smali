.class public Lcom/molihuan/pathselector/dialog/impl/PathSelectDialog;
.super Lcom/molihuan/pathselector/dialog/AbstractFragmentDialog;
.source "PathSelectDialog.java"


# instance fields
.field private pathSelectFragment:Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/molihuan/pathselector/dialog/AbstractFragmentDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponents(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 31
    return-void
.end method

.method public getPathSelectFragment()Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/molihuan/pathselector/dialog/impl/PathSelectDialog;->pathSelectFragment:Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;

    return-object v0
.end method

.method public initData()V
    .locals 1

    .line 36
    new-instance v0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;

    invoke-direct {v0}, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;-><init>()V

    iput-object v0, p0, Lcom/molihuan/pathselector/dialog/impl/PathSelectDialog;->pathSelectFragment:Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;

    .line 38
    return-void
.end method

.method public initView()V
    .locals 5

    .line 42
    invoke-super {p0}, Lcom/molihuan/pathselector/dialog/AbstractFragmentDialog;->initView()V

    .line 44
    iget-object v0, p0, Lcom/molihuan/pathselector/dialog/impl/PathSelectDialog;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    invoke-virtual {p0}, Lcom/molihuan/pathselector/dialog/impl/PathSelectDialog;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iput-object v1, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 46
    const-string v0, "pathSelectFragment  show  start"

    invoke-static {v0}, Lcom/molihuan/pathselector/utils/Mtools;->log(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/molihuan/pathselector/dialog/impl/PathSelectDialog;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    sget v1, Lcom/molihuan/pathselector/R$id;->framelayout_dialog_show_body_mlh:I

    iget-object v2, p0, Lcom/molihuan/pathselector/dialog/impl/PathSelectDialog;->pathSelectFragment:Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;

    const-string v3, "framelayout_show_body_mlh"

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/molihuan/pathselector/utils/FragmentTools;->fragmentShowHide(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;Z)Landroidx/fragment/app/Fragment;

    .line 54
    const-string v0, "pathSelectFragment  show  end"

    invoke-static {v0}, Lcom/molihuan/pathselector/utils/Mtools;->log(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 66
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 67
    return v1

    .line 70
    :cond_0
    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/molihuan/pathselector/dialog/impl/PathSelectDialog;->pathSelectFragment:Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    return v1

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/molihuan/pathselector/dialog/impl/PathSelectDialog;->dismissAllowingStateLoss()V

    .line 77
    return v1

    .line 82
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public setFragmentViewId()I
    .locals 1

    .line 25
    sget v0, Lcom/molihuan/pathselector/R$layout;->dialog_path_select_mlh:I

    return v0
.end method
