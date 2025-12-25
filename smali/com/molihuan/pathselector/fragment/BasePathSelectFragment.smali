.class public abstract Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;
.super Lcom/molihuan/pathselector/fragment/AbstractFragment;
.source "BasePathSelectFragment.java"

# interfaces
.implements Lcom/molihuan/pathselector/interfaces/IFileShowFragment;
.implements Lcom/molihuan/pathselector/interfaces/IHandleFragment;
.implements Lcom/molihuan/pathselector/interfaces/ITabbarFragment;
.implements Lcom/molihuan/pathselector/interfaces/ITitlebarFragment;


# instance fields
.field public mConfigDataBuilder:Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/molihuan/pathselector/fragment/AbstractFragment;-><init>()V

    .line 25
    invoke-static {}, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->getInstance()Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;->mConfigDataBuilder:Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->buildController:Lcom/molihuan/pathselector/controller/AbstractBuildController;

    instance-of v0, v0, Lcom/molihuan/pathselector/controller/impl/DialogController;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->buildController:Lcom/molihuan/pathselector/controller/AbstractBuildController;

    invoke-virtual {v0}, Lcom/molihuan/pathselector/controller/AbstractBuildController;->getDialogFragment()Lcom/molihuan/pathselector/dialog/AbstractFragmentDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/molihuan/pathselector/dialog/AbstractFragmentDialog;->dismiss()V

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->buildController:Lcom/molihuan/pathselector/controller/AbstractBuildController;

    instance-of v0, v0, Lcom/molihuan/pathselector/controller/impl/ActivityController;

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->buildController:Lcom/molihuan/pathselector/controller/AbstractBuildController;

    instance-of v0, v0, Lcom/molihuan/pathselector/controller/impl/FragmentController;

    if-eqz v0, :cond_2

    .line 57
    invoke-super {p0}, Lcom/molihuan/pathselector/fragment/AbstractFragment;->dismiss()V

    .line 59
    :cond_2
    :goto_0
    return-void
.end method

.method public dismiss()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->buildController:Lcom/molihuan/pathselector/controller/AbstractBuildController;

    instance-of v0, v0, Lcom/molihuan/pathselector/controller/impl/DialogController;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->buildController:Lcom/molihuan/pathselector/controller/AbstractBuildController;

    invoke-virtual {v0}, Lcom/molihuan/pathselector/controller/AbstractBuildController;->getDialogFragment()Lcom/molihuan/pathselector/dialog/AbstractFragmentDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/molihuan/pathselector/dialog/AbstractFragmentDialog;->dismiss()V

    .line 83
    :cond_0
    return-void
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->buildController:Lcom/molihuan/pathselector/controller/AbstractBuildController;

    instance-of v0, v0, Lcom/molihuan/pathselector/controller/impl/DialogController;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->buildController:Lcom/molihuan/pathselector/controller/AbstractBuildController;

    invoke-virtual {v0}, Lcom/molihuan/pathselector/controller/AbstractBuildController;->getDialogFragment()Lcom/molihuan/pathselector/dialog/AbstractFragmentDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/molihuan/pathselector/dialog/AbstractFragmentDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 90
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getFileShowFragment()Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;
.end method

.method public abstract getHandleFragment()Lcom/molihuan/pathselector/fragment/AbstractHandleFragment;
.end method

.method public abstract getPathFileManager()Lcom/molihuan/pathselector/service/IFileDataManager;
.end method

.method public abstract getSelectConfigData()Lcom/molihuan/pathselector/dao/SelectConfigData;
.end method

.method public abstract getTabbarFragment()Lcom/molihuan/pathselector/fragment/AbstractTabbarFragment;
.end method

.method public abstract getTitlebarFragment()Lcom/molihuan/pathselector/fragment/AbstractTitlebarFragment;
.end method

.method public abstract getUriFileManager()Lcom/molihuan/pathselector/service/IFileDataManager;
.end method

.method public abstract handleShowHide(Z)V
.end method

.method public abstract returnDataToActivityResult()V
.end method

.method public setSortType(Lcom/molihuan/pathselector/utils/MConstants$SortRules;)V
    .locals 1
    .param p1, "sortType"    # Lcom/molihuan/pathselector/utils/MConstants$SortRules;

    .line 69
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;->mConfigDataBuilder:Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;

    invoke-virtual {v0, p1}, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->setSortType(Lcom/molihuan/pathselector/utils/MConstants$SortRules;)Lcom/molihuan/pathselector/service/IConfigDataBuilder;

    .line 70
    invoke-virtual {p0}, Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;->updateFileList()Ljava/util/List;

    .line 71
    return-void
.end method

.method public updateUI()V
    .locals 0

    .line 65
    invoke-virtual {p0}, Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;->updateFileList()Ljava/util/List;

    .line 66
    return-void
.end method
