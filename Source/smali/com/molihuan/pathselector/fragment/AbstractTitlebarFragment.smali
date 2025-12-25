.class public abstract Lcom/molihuan/pathselector/fragment/AbstractTitlebarFragment;
.super Lcom/molihuan/pathselector/fragment/AbstractFragment;
.source "AbstractTitlebarFragment.java"

# interfaces
.implements Lcom/molihuan/pathselector/interfaces/ITitlebarFragment;


# instance fields
.field protected psf:Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/molihuan/pathselector/fragment/AbstractFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMorePopupAdapter()Lcom/molihuan/pathselector/adapter/MorePopupAdapter;
    .locals 1

    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMorePopupItemListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/listener/CommonItemListener;",
            ">;"
        }
    .end annotation

    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOnlyOneMorePopupTextView()Landroid/widget/TextView;
    .locals 1

    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public initData()V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/AbstractTitlebarFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v1, "framelayout_show_body_mlh"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/AbstractTitlebarFragment;->psf:Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;

    .line 34
    return-void
.end method

.method public initView()V
    .locals 1

    .line 60
    invoke-super {p0}, Lcom/molihuan/pathselector/fragment/AbstractFragment;->initView()V

    .line 61
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/AbstractTitlebarFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->statusBarHexColor:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/molihuan/pathselector/fragment/AbstractTitlebarFragment;->setStatusBarColor(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public refreshMorePopup()V
    .locals 0

    .line 49
    return-void
.end method

.method public setStatusBarColor(Ljava/lang/String;)V
    .locals 2
    .param p1, "hexColor"    # Ljava/lang/String;

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 72
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/AbstractTitlebarFragment;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/molihuan/pathselector/activity/AbstractActivity;

    if-nez v0, :cond_1

    .line 76
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/AbstractTitlebarFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 80
    .local v0, "window":Landroid/view/Window;
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 81
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 83
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 85
    .local v1, "color":I
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 87
    return-void
.end method
