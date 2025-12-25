.class public abstract Lcom/molihuan/pathselector/fragment/AbstractHandleFragment;
.super Lcom/molihuan/pathselector/fragment/AbstractFragment;
.source "AbstractHandleFragment.java"

# interfaces
.implements Lcom/molihuan/pathselector/interfaces/IHandleFragment;


# instance fields
.field protected psf:Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/molihuan/pathselector/fragment/AbstractFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getHandleItemListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/listener/CommonItemListener;",
            ">;"
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHandleListAdapter()Lcom/molihuan/pathselector/adapter/HandleListAdapter;
    .locals 1

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public initData()V
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/AbstractHandleFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v1, "framelayout_show_body_mlh"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/AbstractHandleFragment;->psf:Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;

    .line 25
    return-void
.end method

.method public refreshHandleList()V
    .locals 0

    .line 40
    return-void
.end method
