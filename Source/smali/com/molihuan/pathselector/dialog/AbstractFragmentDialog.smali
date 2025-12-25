.class public abstract Lcom/molihuan/pathselector/dialog/AbstractFragmentDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "AbstractFragmentDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field public mActivity:Landroid/app/Activity;

.field protected mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

.field protected mDialog:Landroid/app/Dialog;

.field public mFragmentView:Landroid/view/View;

.field private mHeight:I

.field public mIActivityAndFragment:Lcom/molihuan/pathselector/interfaces/IActivityAndFragment;

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 42
    invoke-static {}, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->getInstance()Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->getSelectConfigData()Lcom/molihuan/pathselector/dao/SelectConfigData;

    move-result-object v0

    iput-object v0, p0, Lcom/molihuan/pathselector/dialog/AbstractFragmentDialog;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    return-void
.end method

.method private setWidthHeight()V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/molihuan/pathselector/dialog/AbstractFragmentDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/molihuan/pathselector/dialog/AbstractFragmentDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lcom/molihuan/pathselector/dialog/AbstractFragmentDialog;->mWidth:I

    iget v2, p0, Lcom/molihuan/pathselector/dialog/AbstractFragmentDialog;->mHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 145
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract getComponents(Landroid/view/View;)V
.end method

.method public abstract getPathSelectFragment()Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;
.end method

.method public abstract initData()V
.end method

.method public initView()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/molihuan/pathselector/dialog/AbstractFragmentDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 89
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 91
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 161
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 163
    iget-object v0, p0, Lcom/molihuan/pathselector/dialog/AbstractFragmentDialog;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/molihuan/pathselector/dialog/AbstractFragmentDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/molihuan/pathselector/dialog/AbstractFragmentDialog;->mActivity:Landroid/app/Activity;

    .line 178
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 46
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 52
    iget-object v0, p0, Lcom/molihuan/pathselector/dialog/AbstractFragmentDialog;->mFragmentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/molihuan/pathselector/dialog/AbstractFragmentDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/molihuan/pathselector/dialog/AbstractFragmentDialog;->mDialog:Landroid/app/Dialog;

    .line 56
    iget-object v0, p0, Lcom/molihuan/pathselector/dialog/AbstractFragmentDialog;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->pathSelectDialogWidth:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/molihuan/pathselector/dialog/AbstractFragmentDialog;->mWidth:I

    .line 57
    iget-object v0, p0, Lcom/molihuan/pathselector/dialog/AbstractFragmentDialog;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->pathSelectDialogHeight:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/molihuan/pathselector/dialog/AbstractFragmentDialog;->mHeight:I

    .line 60
    invoke-virtual {p0}, Lcom/molihuan/pathselector/dialog/AbstractFragmentDialog;->setFragmentViewId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/molihuan/pathselector/dialog/AbstractFragmentDialog;->mFragmentView:Landroid/view/View;

    .line 62
    invoke-virtual {p0, v0}, Lcom/molihuan/pathselector/dialog/AbstractFragmentDialog;->getComponents(Landroid/view/View;)V

    .line 64
    invoke-virtual {p0}, Lcom/molihuan/pathselector/dialog/AbstractFragmentDialog;->initData()V

    .line 66
    invoke-virtual {p0}, Lcom/molihuan/pathselector/dialog/AbstractFragmentDialog;->initView()V

    .line 68
    invoke-virtual {p0}, Lcom/molihuan/pathselector/dialog/AbstractFragmentDialog;->setListeners()V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/molihuan/pathselector/dialog/AbstractFragmentDialog;->mFragmentView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    .line 193
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 194
    return-void
.end method

.method public onDetach()V
    .locals 0

    .line 185
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDetach()V

    .line 186
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0
    .param p1, "hidden"    # Z

    .line 133
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onHiddenChanged(Z)V

    .line 134
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 112
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 113
    return v1

    .line 116
    :cond_0
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/molihuan/pathselector/dialog/AbstractFragmentDialog;->dismissAllowingStateLoss()V

    .line 119
    return v1

    .line 122
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onStart()V
    .locals 0

    .line 150
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 151
    invoke-direct {p0}, Lcom/molihuan/pathselector/dialog/AbstractFragmentDialog;->setWidthHeight()V

    .line 152
    return-void
.end method

.method public abstract setFragmentViewId()I
.end method

.method public setListeners()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/molihuan/pathselector/dialog/AbstractFragmentDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 99
    :cond_0
    return-void
.end method
