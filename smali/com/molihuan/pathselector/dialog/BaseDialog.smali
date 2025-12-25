.class public abstract Lcom/molihuan/pathselector/dialog/BaseDialog;
.super Landroidx/appcompat/app/AlertDialog;
.source "BaseDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/molihuan/pathselector/dialog/BaseDialog$IOnCancelListener;,
        Lcom/molihuan/pathselector/dialog/BaseDialog$IOnConfirmListener;
    }
.end annotation


# instance fields
.field protected mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

.field protected mContext:Landroid/content/Context;

.field protected psf:Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-static {}, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->getInstance()Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->getSelectConfigData()Lcom/molihuan/pathselector/dao/SelectConfigData;

    move-result-object v0

    iput-object v0, p0, Lcom/molihuan/pathselector/dialog/BaseDialog;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    .line 34
    iput-object p1, p0, Lcom/molihuan/pathselector/dialog/BaseDialog;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    .line 38
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 28
    invoke-static {}, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->getInstance()Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->getSelectConfigData()Lcom/molihuan/pathselector/dao/SelectConfigData;

    move-result-object v0

    iput-object v0, p0, Lcom/molihuan/pathselector/dialog/BaseDialog;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    .line 39
    iput-object p1, p0, Lcom/molihuan/pathselector/dialog/BaseDialog;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 28
    invoke-static {}, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->getInstance()Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->getSelectConfigData()Lcom/molihuan/pathselector/dao/SelectConfigData;

    move-result-object v0

    iput-object v0, p0, Lcom/molihuan/pathselector/dialog/BaseDialog;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    .line 44
    iput-object p1, p0, Lcom/molihuan/pathselector/dialog/BaseDialog;->mContext:Landroid/content/Context;

    .line 45
    return-void
.end method


# virtual methods
.method public abstract getComponents()V
.end method

.method public initData()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/molihuan/pathselector/dialog/BaseDialog;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v1, "framelayout_show_body_mlh"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;

    iput-object v0, p0, Lcom/molihuan/pathselector/dialog/BaseDialog;->psf:Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;

    .line 70
    return-void
.end method

.method public initView()V
    .locals 0

    .line 73
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 82
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 49
    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/molihuan/pathselector/dialog/BaseDialog;->setContentViewID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/molihuan/pathselector/dialog/BaseDialog;->setContentView(I)V

    .line 53
    invoke-virtual {p0}, Lcom/molihuan/pathselector/dialog/BaseDialog;->getComponents()V

    .line 55
    invoke-virtual {p0}, Lcom/molihuan/pathselector/dialog/BaseDialog;->initData()V

    .line 57
    invoke-virtual {p0}, Lcom/molihuan/pathselector/dialog/BaseDialog;->initView()V

    .line 59
    invoke-virtual {p0}, Lcom/molihuan/pathselector/dialog/BaseDialog;->setListeners()V

    .line 60
    return-void
.end method

.method public abstract setContentViewID()I
.end method

.method public setListeners()V
    .locals 0

    .line 76
    return-void
.end method
