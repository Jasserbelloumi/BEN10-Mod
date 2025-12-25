.class public Lcom/molihuan/pathselector/activity/impl/PathSelectActivity;
.super Lcom/molihuan/pathselector/activity/AbstractActivity;
.source "PathSelectActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/molihuan/pathselector/activity/AbstractActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponents()V
    .locals 0

    .line 30
    return-void
.end method

.method public initData(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 35
    return-void
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 39
    invoke-super {p0, p1}, Lcom/molihuan/pathselector/activity/AbstractActivity;->initView(Landroid/os/Bundle;)V

    .line 41
    iget-object v0, p0, Lcom/molihuan/pathselector/activity/impl/PathSelectActivity;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    invoke-virtual {p0}, Lcom/molihuan/pathselector/activity/impl/PathSelectActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iput-object v1, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 43
    new-instance v0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;

    invoke-direct {v0}, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;-><init>()V

    iput-object v0, p0, Lcom/molihuan/pathselector/activity/impl/PathSelectActivity;->pathSelectFragment:Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;

    .line 45
    iget-object v0, p0, Lcom/molihuan/pathselector/activity/impl/PathSelectActivity;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    sget v1, Lcom/molihuan/pathselector/R$id;->framelayout_show_body_mlh:I

    iget-object v2, p0, Lcom/molihuan/pathselector/activity/impl/PathSelectActivity;->pathSelectFragment:Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;

    const-string v3, "framelayout_show_body_mlh"

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/molihuan/pathselector/utils/FragmentTools;->fragmentShowHide(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;Z)Landroidx/fragment/app/Fragment;

    .line 54
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/molihuan/pathselector/activity/impl/PathSelectActivity;->pathSelectFragment:Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/molihuan/pathselector/activity/impl/PathSelectActivity;->pathSelectFragment:Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;

    invoke-virtual {v0}, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    return-void

    .line 62
    :cond_0
    invoke-super {p0}, Lcom/molihuan/pathselector/activity/AbstractActivity;->onBackPressed()V

    .line 63
    return-void
.end method

.method public setContentViewID()I
    .locals 1

    .line 23
    sget v0, Lcom/molihuan/pathselector/R$layout;->activity_path_select_mlh:I

    return v0
.end method
