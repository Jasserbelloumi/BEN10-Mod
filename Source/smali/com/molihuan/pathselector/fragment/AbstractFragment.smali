.class public abstract Lcom/molihuan/pathselector/fragment/AbstractFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "AbstractFragment.java"


# instance fields
.field public mActivity:Landroid/app/Activity;

.field protected mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

.field public mFragmentView:Landroid/view/View;

.field public mIActivityAndFragment:Lcom/molihuan/pathselector/interfaces/IActivityAndFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 33
    invoke-static {}, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->getInstance()Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->getSelectConfigData()Lcom/molihuan/pathselector/dao/SelectConfigData;

    move-result-object v0

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/AbstractFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    return-void
.end method


# virtual methods
.method public abstract getComponents(Landroid/view/View;)V
.end method

.method public initData()V
    .locals 0

    .line 65
    return-void
.end method

.method public initView()V
    .locals 0

    .line 69
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 102
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 104
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/AbstractFragment;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/molihuan/pathselector/fragment/AbstractFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/AbstractFragment;->mActivity:Landroid/app/Activity;

    .line 123
    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 37
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/AbstractFragment;->mFragmentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/molihuan/pathselector/fragment/AbstractFragment;->setFragmentViewId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/AbstractFragment;->mFragmentView:Landroid/view/View;

    .line 41
    invoke-virtual {p0, v0}, Lcom/molihuan/pathselector/fragment/AbstractFragment;->getComponents(Landroid/view/View;)V

    .line 43
    invoke-virtual {p0}, Lcom/molihuan/pathselector/fragment/AbstractFragment;->initData()V

    .line 45
    invoke-virtual {p0}, Lcom/molihuan/pathselector/fragment/AbstractFragment;->initView()V

    .line 47
    invoke-virtual {p0}, Lcom/molihuan/pathselector/fragment/AbstractFragment;->setListeners()V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/AbstractFragment;->mFragmentView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    .line 138
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 139
    return-void
.end method

.method public onDetach()V
    .locals 0

    .line 130
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDetach()V

    .line 131
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0
    .param p1, "hidden"    # Z

    .line 92
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onHiddenChanged(Z)V

    .line 93
    return-void
.end method

.method public abstract setFragmentViewId()I
.end method

.method public setListeners()V
    .locals 0

    .line 73
    return-void
.end method
