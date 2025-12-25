.class public abstract Lcom/molihuan/pathselector/fragment/AbstractTabbarFragment;
.super Lcom/molihuan/pathselector/fragment/AbstractFragment;
.source "AbstractTabbarFragment.java"

# interfaces
.implements Lcom/molihuan/pathselector/interfaces/ITabbarFragment;


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
.method public getTabbarList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/entity/TabbarFileBean;",
            ">;"
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTabbarListAdapter()Lcom/molihuan/pathselector/adapter/TabbarListAdapter;
    .locals 1

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public initData()V
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/AbstractTabbarFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v1, "framelayout_show_body_mlh"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/AbstractTabbarFragment;->psf:Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;

    .line 25
    return-void
.end method

.method public refreshTabbarList()V
    .locals 0

    .line 45
    return-void
.end method

.method public updateTabbarList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/entity/TabbarFileBean;",
            ">;"
        }
    .end annotation

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method
