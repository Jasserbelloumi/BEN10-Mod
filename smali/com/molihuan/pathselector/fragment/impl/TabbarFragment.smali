.class public Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;
.super Lcom/molihuan/pathselector/fragment/AbstractTabbarFragment;
.source "TabbarFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/chad/library/adapter/base/listener/OnItemClickListener;


# instance fields
.field protected breadRecView:Landroidx/recyclerview/widget/RecyclerView;

.field private initPath:Ljava/lang/String;

.field private pathFileManager:Lcom/molihuan/pathselector/service/IFileDataManager;

.field protected selectStorageDialog:Lcom/molihuan/pathselector/dialog/impl/SelectStorageDialog;

.field protected storageImgView:Landroid/widget/ImageView;

.field protected tabbarList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/entity/TabbarFileBean;",
            ">;"
        }
    .end annotation
.end field

.field protected tabbarListAdapter:Lcom/molihuan/pathselector/adapter/TabbarListAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/molihuan/pathselector/fragment/AbstractTabbarFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;)Lcom/molihuan/pathselector/service/IFileDataManager;
    .locals 1
    .param p0, "x0"    # Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;

    .line 36
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;->pathFileManager:Lcom/molihuan/pathselector/service/IFileDataManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;

    .line 36
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;->initPath:Ljava/lang/String;

    return-object v0
.end method

.method private initTabbarList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/entity/TabbarFileBean;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;->pathFileManager:Lcom/molihuan/pathselector/service/IFileDataManager;

    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;->initPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;->tabbarList:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/molihuan/pathselector/service/IFileDataManager;->initTabbarList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getComponents(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 56
    sget v0, Lcom/molihuan/pathselector/R$id;->imgv_select_storage_tabbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;->storageImgView:Landroid/widget/ImageView;

    .line 57
    sget v0, Lcom/molihuan/pathselector/R$id;->recv_file_bread_tabbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;->breadRecView:Landroidx/recyclerview/widget/RecyclerView;

    .line 58
    return-void
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

    .line 117
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;->tabbarList:Ljava/util/List;

    return-object v0
.end method

.method public getTabbarListAdapter()Lcom/molihuan/pathselector/adapter/TabbarListAdapter;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;->tabbarListAdapter:Lcom/molihuan/pathselector/adapter/TabbarListAdapter;

    return-object v0
.end method

.method public initData()V
    .locals 1

    .line 62
    invoke-super {p0}, Lcom/molihuan/pathselector/fragment/AbstractTabbarFragment;->initData()V

    .line 64
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;->psf:Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;

    invoke-virtual {v0}, Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;->getPathFileManager()Lcom/molihuan/pathselector/service/IFileDataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;->pathFileManager:Lcom/molihuan/pathselector/service/IFileDataManager;

    .line 65
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->rootPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;->initPath:Ljava/lang/String;

    .line 67
    invoke-direct {p0}, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;->initTabbarList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;->tabbarList:Ljava/util/List;

    .line 69
    return-void
.end method

.method public initView()V
    .locals 4

    .line 74
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->showSelectStorageBtn:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->showTitlebarFragment:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;->storageImgView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;->breadRecView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v3, p0, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 79
    new-instance v0, Lcom/molihuan/pathselector/adapter/TabbarListAdapter;

    sget v1, Lcom/molihuan/pathselector/R$layout;->item_tabbar_mlh:I

    iget-object v2, p0, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;->tabbarList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/molihuan/pathselector/adapter/TabbarListAdapter;-><init>(ILjava/util/List;)V

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;->tabbarListAdapter:Lcom/molihuan/pathselector/adapter/TabbarListAdapter;

    .line 80
    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;->breadRecView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 81
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;->tabbarListAdapter:Lcom/molihuan/pathselector/adapter/TabbarListAdapter;

    invoke-virtual {v0, p0}, Lcom/molihuan/pathselector/adapter/TabbarListAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    .line 83
    invoke-virtual {p0}, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;->updateTabbarList()Ljava/util/List;

    .line 85
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 96
    .local v0, "id":I
    sget v1, Lcom/molihuan/pathselector/R$id;->imgv_select_storage_tabbar:I

    if-ne v0, v1, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;->showSelectStorageDialog()V

    .line 100
    :cond_0
    return-void
.end method

.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 6
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
            "**>;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .line 163
    .local p1, "adapter":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<**>;"
    instance-of v0, p1, Lcom/molihuan/pathselector/adapter/TabbarListAdapter;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;->tabbarList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/molihuan/pathselector/entity/TabbarFileBean;

    .line 165
    .local v0, "item":Lcom/molihuan/pathselector/entity/TabbarFileBean;
    invoke-virtual {v0}, Lcom/molihuan/pathselector/entity/TabbarFileBean;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "path":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sget-object v3, Lcom/molihuan/pathselector/utils/MConstants;->DEFAULT_ROOTPATH:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v2, v3, :cond_0

    sget-object v2, Lcom/molihuan/pathselector/utils/MConstants;->DEFAULT_ROOTPATH:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 169
    sget v2, Lcom/molihuan/pathselector/R$string;->tips_path_jump_error_exceeds_default_path_mlh:I

    invoke-virtual {p0, v2}, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/molihuan/pathselector/utils/MConstants;->DEFAULT_ROOTPATH:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/molihuan/pathselector/utils/Mtools;->toast(Ljava/lang/CharSequence;)V

    .line 170
    sget-object v1, Lcom/molihuan/pathselector/utils/MConstants;->DEFAULT_ROOTPATH:Ljava/lang/String;

    .line 173
    :cond_0
    iget-object v2, p0, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;->psf:Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;

    invoke-virtual {v2, v1}, Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;->updateFileList(Ljava/lang/String;)Ljava/util/List;

    .line 174
    invoke-virtual {p0, v1}, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;->updateTabbarList(Ljava/lang/String;)Ljava/util/List;

    .line 176
    .end local v0    # "item":Lcom/molihuan/pathselector/entity/TabbarFileBean;
    .end local v1    # "path":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public refreshTabbarList()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;->tabbarListAdapter:Lcom/molihuan/pathselector/adapter/TabbarListAdapter;

    invoke-virtual {v0}, Lcom/molihuan/pathselector/adapter/TabbarListAdapter;->notifyDataSetChanged()V

    .line 159
    return-void
.end method

.method public setFragmentViewId()I
    .locals 1

    .line 51
    sget v0, Lcom/molihuan/pathselector/R$layout;->fragment_tabbar_mlh:I

    return v0
.end method

.method public setListeners()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;->storageImgView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-void
.end method

.method public showSelectStorageDialog()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;->selectStorageDialog:Lcom/molihuan/pathselector/dialog/impl/SelectStorageDialog;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/molihuan/pathselector/dialog/impl/SelectStorageDialog;

    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/molihuan/pathselector/dialog/impl/SelectStorageDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;->selectStorageDialog:Lcom/molihuan/pathselector/dialog/impl/SelectStorageDialog;

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;->selectStorageDialog:Lcom/molihuan/pathselector/dialog/impl/SelectStorageDialog;

    invoke-virtual {v0}, Lcom/molihuan/pathselector/dialog/impl/SelectStorageDialog;->show()V

    .line 108
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

    .line 126
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;->psf:Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;

    invoke-virtual {v0}, Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;->getCurrentPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;->updateTabbarList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public updateTabbarList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
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

    .line 132
    invoke-static {}, Lcom/xuexiang/xtask/XTask;->getTaskChain()Lcom/xuexiang/xtask/api/TaskChainEngine;

    move-result-object v0

    new-instance v1, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment$2;-><init>(Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;Ljava/lang/String;)V

    .line 133
    invoke-static {v1}, Lcom/xuexiang/xtask/XTask;->getTask(Lcom/xuexiang/xtask/core/step/impl/TaskCommand;)Lcom/xuexiang/xtask/api/step/XTaskStep;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xuexiang/xtask/api/TaskChainEngine;->addTask(Lcom/xuexiang/xtask/core/step/ITaskStep;)Lcom/xuexiang/xtask/api/TaskChainEngine;

    move-result-object v0

    new-instance v1, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment$1;

    invoke-direct {v1, p0}, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment$1;-><init>(Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;)V

    .line 141
    invoke-virtual {v0, v1}, Lcom/xuexiang/xtask/api/TaskChainEngine;->setTaskChainCallback(Lcom/xuexiang/xtask/core/ITaskChainCallback;)Lcom/xuexiang/xtask/api/TaskChainEngine;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Lcom/xuexiang/xtask/api/TaskChainEngine;->start()Lcom/xuexiang/xtask/thread/pool/cancel/ICanceller;

    .line 152
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;->tabbarList:Ljava/util/List;

    return-object v0
.end method
