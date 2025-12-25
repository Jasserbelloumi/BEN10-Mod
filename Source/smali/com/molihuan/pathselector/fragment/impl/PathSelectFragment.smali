.class public Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;
.super Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;
.source "PathSelectFragment.java"


# instance fields
.field private fileShowFragment:Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;

.field private fragmentManager:Landroidx/fragment/app/FragmentManager;

.field private handleFragment:Lcom/molihuan/pathselector/fragment/AbstractHandleFragment;

.field private pathFileManager:Lcom/molihuan/pathselector/service/IFileDataManager;

.field private tabbarFragment:Lcom/molihuan/pathselector/fragment/AbstractTabbarFragment;

.field private titlebarFragment:Lcom/molihuan/pathselector/fragment/AbstractTitlebarFragment;

.field private uriFileManager:Lcom/molihuan/pathselector/service/IFileDataManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;-><init>()V

    return-void
.end method

.method private showAllFragment()V
    .locals 5

    .line 328
    invoke-virtual {p0}, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 330
    const-string/jumbo v0, "\u5404\u79cdFragment  show  start"

    invoke-static {v0}, Lcom/molihuan/pathselector/utils/Mtools;->log(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    sget v1, Lcom/molihuan/pathselector/R$id;->frameLayout_file_show_area:I

    iget-object v2, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->fileShowFragment:Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;

    const-string v3, "frameLayout_file_show_area_mlh"

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/molihuan/pathselector/utils/FragmentTools;->fragmentShowHide(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;Z)Landroidx/fragment/app/Fragment;

    .line 340
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    sget v1, Lcom/molihuan/pathselector/R$id;->frameLayout_titlebar_area:I

    iget-object v2, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->titlebarFragment:Lcom/molihuan/pathselector/fragment/AbstractTitlebarFragment;

    iget-object v3, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v3, v3, Lcom/molihuan/pathselector/dao/SelectConfigData;->showTitlebarFragment:Ljava/lang/Boolean;

    .line 345
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 340
    const-string v4, "frameLayout_titlebar_area_mlh"

    invoke-static {v0, v1, v2, v4, v3}, Lcom/molihuan/pathselector/utils/FragmentTools;->fragmentShowHide(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;Z)Landroidx/fragment/app/Fragment;

    .line 348
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    sget v1, Lcom/molihuan/pathselector/R$id;->frameLayout_tabbar_area:I

    iget-object v2, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->tabbarFragment:Lcom/molihuan/pathselector/fragment/AbstractTabbarFragment;

    iget-object v3, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v3, v3, Lcom/molihuan/pathselector/dao/SelectConfigData;->showTabbarFragment:Ljava/lang/Boolean;

    .line 353
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 348
    const-string v4, "frameLayout_tabbar_area_mlh"

    invoke-static {v0, v1, v2, v4, v3}, Lcom/molihuan/pathselector/utils/FragmentTools;->fragmentShowHide(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;Z)Landroidx/fragment/app/Fragment;

    .line 356
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->alwaysShowHandleFragment:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->showHandleFragment:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->handleShowHide(Z)V

    .line 361
    :cond_0
    const-string/jumbo v0, "\u5404\u79cdFragment  show  end"

    invoke-static {v0}, Lcom/molihuan/pathselector/utils/Mtools;->log(Ljava/lang/String;)V

    .line 362
    return-void
.end method


# virtual methods
.method public getComponents(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 68
    return-void
.end method

.method public getCurrentPath()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->fileShowFragment:Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;

    invoke-virtual {v0}, Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;->getCurrentPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/entity/FileBean;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->fileShowFragment:Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;

    invoke-virtual {v0}, Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;->getFileList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFileListAdapter()Lcom/molihuan/pathselector/adapter/FileListAdapter;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->fileShowFragment:Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;

    invoke-virtual {v0}, Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;->getFileListAdapter()Lcom/molihuan/pathselector/adapter/FileListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getFileShowFragment()Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->fileShowFragment:Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;

    return-object v0
.end method

.method public getHandleFragment()Lcom/molihuan/pathselector/fragment/AbstractHandleFragment;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->handleFragment:Lcom/molihuan/pathselector/fragment/AbstractHandleFragment;

    return-object v0
.end method

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

    .line 234
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->handleFragment:Lcom/molihuan/pathselector/fragment/AbstractHandleFragment;

    if-nez v0, :cond_0

    .line 235
    const/4 v0, 0x0

    return-object v0

    .line 237
    :cond_0
    invoke-virtual {v0}, Lcom/molihuan/pathselector/fragment/AbstractHandleFragment;->getHandleItemListeners()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHandleListAdapter()Lcom/molihuan/pathselector/adapter/HandleListAdapter;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->handleFragment:Lcom/molihuan/pathselector/fragment/AbstractHandleFragment;

    if-nez v0, :cond_0

    .line 243
    const/4 v0, 0x0

    return-object v0

    .line 245
    :cond_0
    invoke-virtual {v0}, Lcom/molihuan/pathselector/fragment/AbstractHandleFragment;->getHandleListAdapter()Lcom/molihuan/pathselector/adapter/HandleListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getMorePopupAdapter()Lcom/molihuan/pathselector/adapter/MorePopupAdapter;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->titlebarFragment:Lcom/molihuan/pathselector/fragment/AbstractTitlebarFragment;

    if-nez v0, :cond_0

    .line 259
    const/4 v0, 0x0

    return-object v0

    .line 261
    :cond_0
    invoke-virtual {v0}, Lcom/molihuan/pathselector/fragment/AbstractTitlebarFragment;->getMorePopupAdapter()Lcom/molihuan/pathselector/adapter/MorePopupAdapter;

    move-result-object v0

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

    .line 266
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->titlebarFragment:Lcom/molihuan/pathselector/fragment/AbstractTitlebarFragment;

    if-nez v0, :cond_0

    .line 267
    const/4 v0, 0x0

    return-object v0

    .line 269
    :cond_0
    invoke-virtual {v0}, Lcom/molihuan/pathselector/fragment/AbstractTitlebarFragment;->getMorePopupItemListeners()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOnlyOneMorePopupTextView()Landroid/widget/TextView;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->titlebarFragment:Lcom/molihuan/pathselector/fragment/AbstractTitlebarFragment;

    if-nez v0, :cond_0

    .line 283
    const/4 v0, 0x0

    return-object v0

    .line 285
    :cond_0
    invoke-virtual {v0}, Lcom/molihuan/pathselector/fragment/AbstractTitlebarFragment;->getOnlyOneMorePopupTextView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getPathFileManager()Lcom/molihuan/pathselector/service/IFileDataManager;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->pathFileManager:Lcom/molihuan/pathselector/service/IFileDataManager;

    return-object v0
.end method

.method public getSelectConfigData()Lcom/molihuan/pathselector/dao/SelectConfigData;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    return-object v0
.end method

.method public getSelectedFileList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/entity/FileBean;",
            ">;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->fileShowFragment:Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;

    invoke-virtual {v0}, Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;->getSelectedFileList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTabbarFragment()Lcom/molihuan/pathselector/fragment/AbstractTabbarFragment;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->tabbarFragment:Lcom/molihuan/pathselector/fragment/AbstractTabbarFragment;

    return-object v0
.end method

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

    .line 199
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->tabbarFragment:Lcom/molihuan/pathselector/fragment/AbstractTabbarFragment;

    if-nez v0, :cond_0

    .line 200
    const/4 v0, 0x0

    return-object v0

    .line 202
    :cond_0
    invoke-virtual {v0}, Lcom/molihuan/pathselector/fragment/AbstractTabbarFragment;->getTabbarList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTabbarListAdapter()Lcom/molihuan/pathselector/adapter/TabbarListAdapter;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->tabbarFragment:Lcom/molihuan/pathselector/fragment/AbstractTabbarFragment;

    if-nez v0, :cond_0

    .line 192
    const/4 v0, 0x0

    return-object v0

    .line 194
    :cond_0
    invoke-virtual {v0}, Lcom/molihuan/pathselector/fragment/AbstractTabbarFragment;->getTabbarListAdapter()Lcom/molihuan/pathselector/adapter/TabbarListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getTitlebarFragment()Lcom/molihuan/pathselector/fragment/AbstractTitlebarFragment;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->titlebarFragment:Lcom/molihuan/pathselector/fragment/AbstractTitlebarFragment;

    return-object v0
.end method

.method public getUriFileManager()Lcom/molihuan/pathselector/service/IFileDataManager;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->uriFileManager:Lcom/molihuan/pathselector/service/IFileDataManager;

    return-object v0
.end method

.method public handleShowHide(Z)V
    .locals 4
    .param p1, "isShow"    # Z

    .line 367
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->alwaysShowHandleFragment:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    const/4 p1, 0x1

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->showHandleFragment:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->handleItemListeners:[Lcom/molihuan/pathselector/listener/CommonItemListener;

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    sget v1, Lcom/molihuan/pathselector/R$id;->frameLayout_handle_area:I

    iget-object v2, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->handleFragment:Lcom/molihuan/pathselector/fragment/AbstractHandleFragment;

    const-string v3, "frameLayout_handle_area_mlh"

    invoke-static {v0, v1, v2, v3, p1}, Lcom/molihuan/pathselector/utils/FragmentTools;->fragmentShowHide(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;Z)Landroidx/fragment/app/Fragment;

    .line 380
    :cond_1
    return-void
.end method

.method public initData()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->titlebarFragment:Lcom/molihuan/pathselector/fragment/AbstractTitlebarFragment;

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->titlebarFragment:Lcom/molihuan/pathselector/fragment/AbstractTitlebarFragment;

    .line 75
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->tabbarFragment:Lcom/molihuan/pathselector/fragment/AbstractTabbarFragment;

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->tabbarFragment:Lcom/molihuan/pathselector/fragment/AbstractTabbarFragment;

    .line 76
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->fileShowFragment:Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->fileShowFragment:Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;

    .line 77
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->handleFragment:Lcom/molihuan/pathselector/fragment/AbstractHandleFragment;

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->handleFragment:Lcom/molihuan/pathselector/fragment/AbstractHandleFragment;

    .line 80
    new-instance v0, Lcom/molihuan/pathselector/service/impl/PathFileManager;

    invoke-direct {v0}, Lcom/molihuan/pathselector/service/impl/PathFileManager;-><init>()V

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->pathFileManager:Lcom/molihuan/pathselector/service/IFileDataManager;

    .line 82
    new-instance v0, Lcom/molihuan/pathselector/service/impl/UriFileManager;

    invoke-direct {v0}, Lcom/molihuan/pathselector/service/impl/UriFileManager;-><init>()V

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->uriFileManager:Lcom/molihuan/pathselector/service/IFileDataManager;

    .line 84
    return-void
.end method

.method public initView()V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->showAllFragment()V

    .line 90
    return-void
.end method

.method public isMultipleSelectionMode()Z
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->fileShowFragment:Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;

    invoke-virtual {v0}, Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;->isMultipleSelectionMode()Z

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 308
    invoke-static {}, Lcom/molihuan/pathselector/utils/VersionTool;->isAndroid11()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    const v0, 0xd35f

    if-ne p1, v0, :cond_1

    .line 310
    if-eqz p3, :cond_1

    .line 312
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    move-object v1, v0

    .local v1, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 315
    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x3

    .line 314
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->fileShowFragment:Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;

    invoke-virtual {v0}, Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;->updateFileList()Ljava/util/List;

    .line 323
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 324
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->fileShowFragment:Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;

    invoke-virtual {v0}, Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onStart()V
    .locals 3

    .line 384
    invoke-super {p0}, Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;->onStart()V

    .line 386
    sget-boolean v0, Lcom/molihuan/pathselector/configs/PathSelectorConfig;->AUTO_GET_PERMISSION:Z

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment$1;

    invoke-direct {v1, p0}, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment$1;-><init>(Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;)V

    invoke-static {v0, v1}, Lcom/molihuan/pathselector/utils/PermissionsTools;->generalPermissionsOfStorage(Landroid/content/Context;Lcom/hjq/permissions/OnPermissionCallback;)V

    .line 395
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    new-instance v2, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment$2;

    invoke-direct {v2, p0}, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment$2;-><init>(Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;)V

    invoke-static {v0, v1, v2}, Lcom/molihuan/pathselector/utils/PermissionsTools;->specialPermissionsOfStorageWithDialog(Landroid/content/Context;ZLcom/hjq/permissions/OnPermissionCallback;)V

    .line 403
    :cond_0
    return-void
.end method

.method public openCloseMultipleMode(Lcom/molihuan/pathselector/entity/FileBean;Z)V
    .locals 1
    .param p1, "fileBean"    # Lcom/molihuan/pathselector/entity/FileBean;
    .param p2, "status"    # Z

    .line 176
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->fileShowFragment:Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;

    invoke-virtual {v0, p1, p2}, Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;->openCloseMultipleMode(Lcom/molihuan/pathselector/entity/FileBean;Z)V

    .line 177
    return-void
.end method

.method public openCloseMultipleMode(Z)V
    .locals 1
    .param p1, "status"    # Z

    .line 181
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->fileShowFragment:Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;

    invoke-virtual {v0, p1}, Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;->openCloseMultipleMode(Z)V

    .line 182
    return-void
.end method

.method public refreshFileList()V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->fileShowFragment:Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;

    invoke-virtual {v0}, Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;->refreshFileList()V

    .line 162
    return-void
.end method

.method public refreshHandleList()V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->handleFragment:Lcom/molihuan/pathselector/fragment/AbstractHandleFragment;

    if-nez v0, :cond_0

    .line 251
    return-void

    .line 253
    :cond_0
    invoke-virtual {v0}, Lcom/molihuan/pathselector/fragment/AbstractHandleFragment;->refreshHandleList()V

    .line 254
    return-void
.end method

.method public refreshMorePopup()V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->titlebarFragment:Lcom/molihuan/pathselector/fragment/AbstractTitlebarFragment;

    if-nez v0, :cond_0

    .line 275
    return-void

    .line 277
    :cond_0
    invoke-virtual {v0}, Lcom/molihuan/pathselector/fragment/AbstractTitlebarFragment;->refreshMorePopup()V

    .line 278
    return-void
.end method

.method public refreshTabbarList()V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->tabbarFragment:Lcom/molihuan/pathselector/fragment/AbstractTabbarFragment;

    if-nez v0, :cond_0

    .line 227
    return-void

    .line 229
    :cond_0
    invoke-virtual {v0}, Lcom/molihuan/pathselector/fragment/AbstractTabbarFragment;->refreshTabbarList()V

    .line 230
    return-void
.end method

.method public returnDataToActivityResult()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->pathFileManager:Lcom/molihuan/pathselector/service/IFileDataManager;

    invoke-virtual {p0}, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->getSelectedFileList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->mActivity:Landroid/app/Activity;

    invoke-interface {v0, v1, v2}, Lcom/molihuan/pathselector/service/IFileDataManager;->returnDataToActivityResult(Ljava/util/List;Landroid/app/Activity;)V

    .line 297
    return-void
.end method

.method public selectAllFile(Z)V
    .locals 1
    .param p1, "status"    # Z

    .line 171
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->fileShowFragment:Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;

    invoke-virtual {v0, p1}, Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;->selectAllFile(Z)V

    .line 172
    return-void
.end method

.method public setFragmentViewId()I
    .locals 1

    .line 62
    sget v0, Lcom/molihuan/pathselector/R$layout;->fragment_path_select_mlh:I

    return v0
.end method

.method public setInitPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "initPath"    # Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->fileShowFragment:Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;

    invoke-virtual {v0, p1}, Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;->setInitPath(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public setListeners()V
    .locals 0

    .line 95
    return-void
.end method

.method public updateFileList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/entity/FileBean;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->fileShowFragment:Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;

    invoke-virtual {v0}, Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;->updateFileList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public updateFileList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "currentPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/entity/FileBean;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->fileShowFragment:Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;

    invoke-virtual {v0, p1}, Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;->updateFileList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
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

    .line 208
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->showTabbarFragment:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->tabbarFragment:Lcom/molihuan/pathselector/fragment/AbstractTabbarFragment;

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0}, Lcom/molihuan/pathselector/fragment/AbstractTabbarFragment;->updateTabbarList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 211
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateTabbarList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/entity/TabbarFileBean;",
            ">;"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->showTabbarFragment:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;->tabbarFragment:Lcom/molihuan/pathselector/fragment/AbstractTabbarFragment;

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {v0, p1}, Lcom/molihuan/pathselector/fragment/AbstractTabbarFragment;->updateTabbarList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 220
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
