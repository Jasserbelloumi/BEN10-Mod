.class public abstract Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;
.super Lcom/molihuan/pathselector/fragment/AbstractFragment;
.source "AbstractFileShowFragment.java"

# interfaces
.implements Lcom/molihuan/pathselector/interfaces/IFileShowFragment;


# instance fields
.field protected psf:Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/molihuan/pathselector/fragment/AbstractFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public initData()V
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v1, "framelayout_show_body_mlh"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;->psf:Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;

    .line 21
    return-void
.end method
