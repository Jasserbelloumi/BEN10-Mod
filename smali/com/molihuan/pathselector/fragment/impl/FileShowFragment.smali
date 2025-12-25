.class public Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;
.super Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;
.source "FileShowFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/listener/OnItemClickListener;
.implements Lcom/chad/library/adapter/base/listener/OnItemLongClickListener;


# instance fields
.field private allFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/entity/FileBean;",
            ">;"
        }
    .end annotation
.end field

.field protected currentPath:Ljava/lang/String;

.field private fileItemListener:Lcom/molihuan/pathselector/listener/FileItemListener;

.field private fileListAdapter:Lcom/molihuan/pathselector/adapter/FileListAdapter;

.field protected initPath:Ljava/lang/String;

.field protected mRecView:Landroidx/recyclerview/widget/RecyclerView;

.field private multipleSelectionMode:Z

.field private pathFileManager:Lcom/molihuan/pathselector/service/IFileDataManager;

.field private radio:Ljava/lang/Boolean;

.field private selectFileTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selectedFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/entity/FileBean;",
            ">;"
        }
    .end annotation
.end field

.field private selectedNumber:I

.field private showFileTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sortType:Lcom/molihuan/pathselector/utils/MConstants$SortRules;

.field private uriFileManager:Lcom/molihuan/pathselector/service/IFileDataManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->multipleSelectionMode:Z

    .line 67
    iput v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->selectedNumber:I

    return-void
.end method

.method static synthetic access$000(Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;)Lcom/molihuan/pathselector/adapter/FileListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;

    .line 39
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->fileListAdapter:Lcom/molihuan/pathselector/adapter/FileListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;)Lcom/molihuan/pathselector/service/IFileDataManager;
    .locals 1
    .param p0, "x0"    # Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;

    .line 39
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->uriFileManager:Lcom/molihuan/pathselector/service/IFileDataManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;)Lcom/molihuan/pathselector/service/IFileDataManager;
    .locals 1
    .param p0, "x0"    # Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;

    .line 39
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->pathFileManager:Lcom/molihuan/pathselector/service/IFileDataManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;

    .line 39
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->allFileList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;
    .param p1, "x1"    # Ljava/util/List;

    .line 39
    iput-object p1, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->allFileList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;)Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;
    .locals 1
    .param p0, "x0"    # Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;

    .line 39
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->psf:Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;

    return-object v0
.end method

.method static synthetic access$500(Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;

    .line 39
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->showFileTypes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;)Lcom/molihuan/pathselector/dao/SelectConfigData;
    .locals 1
    .param p0, "x0"    # Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;

    .line 39
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    return-object v0
.end method

.method static synthetic access$700(Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;)Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;
    .locals 1
    .param p0, "x0"    # Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;

    .line 39
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->psf:Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;

    return-object v0
.end method

.method static synthetic access$800(Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;)Lcom/molihuan/pathselector/dao/SelectConfigData;
    .locals 1
    .param p0, "x0"    # Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;

    .line 39
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    return-object v0
.end method

.method private initFileList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/entity/FileBean;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->currentPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/molihuan/pathselector/utils/FileTools;->needUseUri(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->uriFileManager:Lcom/molihuan/pathselector/service/IFileDataManager;

    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->currentPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->allFileList:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/molihuan/pathselector/service/IFileDataManager;->initFileList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->allFileList:Ljava/util/List;

    goto :goto_0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->pathFileManager:Lcom/molihuan/pathselector/service/IFileDataManager;

    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->currentPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->allFileList:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/molihuan/pathselector/service/IFileDataManager;->initFileList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->allFileList:Ljava/util/List;

    .line 157
    :goto_0
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->allFileList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getComponents(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 83
    sget v0, Lcom/molihuan/pathselector/R$id;->recv_file_show:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->mRecView:Landroidx/recyclerview/widget/RecyclerView;

    .line 84
    return-void
.end method

.method public getCurrentPath()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->currentPath:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->allFileList:Ljava/util/List;

    return-object v0
.end method

.method public getFileListAdapter()Lcom/molihuan/pathselector/adapter/FileListAdapter;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->fileListAdapter:Lcom/molihuan/pathselector/adapter/FileListAdapter;

    return-object v0
.end method

.method public getSelectedFileList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/entity/FileBean;",
            ">;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->pathFileManager:Lcom/molihuan/pathselector/service/IFileDataManager;

    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->allFileList:Ljava/util/List;

    iget-object v2, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->selectedFileList:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/molihuan/pathselector/service/IFileDataManager;->getSelectedFileList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->selectedFileList:Ljava/util/List;

    .line 141
    return-object v0
.end method

.method public initData()V
    .locals 1

    .line 88
    invoke-super {p0}, Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;->initData()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->selectedFileList:Ljava/util/List;

    .line 93
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->psf:Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;

    invoke-virtual {v0}, Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;->getPathFileManager()Lcom/molihuan/pathselector/service/IFileDataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->pathFileManager:Lcom/molihuan/pathselector/service/IFileDataManager;

    .line 95
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->psf:Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;

    invoke-virtual {v0}, Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;->getUriFileManager()Lcom/molihuan/pathselector/service/IFileDataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->uriFileManager:Lcom/molihuan/pathselector/service/IFileDataManager;

    .line 97
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->rootPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->initPath:Ljava/lang/String;

    .line 98
    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->currentPath:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->radio:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->radio:Ljava/lang/Boolean;

    .line 101
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->sortType:Lcom/molihuan/pathselector/utils/MConstants$SortRules;

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->sortType:Lcom/molihuan/pathselector/utils/MConstants$SortRules;

    .line 103
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->showFileTypes:[Ljava/lang/String;

    invoke-static {v0}, Lcom/molihuan/pathselector/utils/CommonTools;->asStringList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->showFileTypes:Ljava/util/List;

    .line 104
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->selectFileTypes:[Ljava/lang/String;

    invoke-static {v0}, Lcom/molihuan/pathselector/utils/CommonTools;->asStringList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->selectFileTypes:Ljava/util/List;

    .line 106
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->fileItemListener:Lcom/molihuan/pathselector/listener/FileItemListener;

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->fileItemListener:Lcom/molihuan/pathselector/listener/FileItemListener;

    .line 109
    invoke-direct {p0}, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->initFileList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->allFileList:Ljava/util/List;

    .line 111
    return-void
.end method

.method public initView()V
    .locals 5

    .line 116
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->fileListAdapter:Lcom/molihuan/pathselector/adapter/FileListAdapter;

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->mRecView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 118
    new-instance v0, Lcom/molihuan/pathselector/adapter/FileListAdapter;

    sget v1, Lcom/molihuan/pathselector/R$layout;->item_file_mlh:I

    iget-object v2, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->allFileList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/molihuan/pathselector/adapter/FileListAdapter;-><init>(ILjava/util/List;)V

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->fileListAdapter:Lcom/molihuan/pathselector/adapter/FileListAdapter;

    .line 119
    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->mRecView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 120
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->fileListAdapter:Lcom/molihuan/pathselector/adapter/FileListAdapter;

    invoke-virtual {v0, p0}, Lcom/molihuan/pathselector/adapter/FileListAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->fileListAdapter:Lcom/molihuan/pathselector/adapter/FileListAdapter;

    invoke-virtual {v0, p0}, Lcom/molihuan/pathselector/adapter/FileListAdapter;->setOnItemLongClickListener(Lcom/chad/library/adapter/base/listener/OnItemLongClickListener;)V

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->updateFileList()Ljava/util/List;

    .line 126
    return-void
.end method

.method public isMultipleSelectionMode()Z
    .locals 1

    .line 371
    iget-boolean v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->multipleSelectionMode:Z

    return v0
.end method

.method public onBackPressed()Z
    .locals 4

    .line 377
    iget-boolean v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->multipleSelectionMode:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {p0, v2}, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->openCloseMultipleMode(Z)V

    .line 379
    iput v2, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->selectedNumber:I

    .line 380
    return v1

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->allFileList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/molihuan/pathselector/entity/FileBean;

    invoke-virtual {v0}, Lcom/molihuan/pathselector/entity/FileBean;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "path":Ljava/lang/String;
    iget-object v3, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->initPath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 386
    return v2

    .line 389
    :cond_1
    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->currentPath:Ljava/lang/String;

    .line 390
    invoke-virtual {p0, v0}, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->updateFileList(Ljava/lang/String;)Ljava/util/List;

    .line 392
    iget-object v2, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->psf:Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;

    invoke-virtual {v2}, Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;->updateTabbarList()Ljava/util/List;

    .line 393
    return v1
.end method

.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 7
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

    .line 224
    .local p1, "adapter":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<**>;"
    instance-of v0, p1, Lcom/molihuan/pathselector/adapter/FileListAdapter;

    if-eqz v0, :cond_b

    .line 226
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->allFileList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/molihuan/pathselector/entity/FileBean;

    .line 228
    .local v0, "item":Lcom/molihuan/pathselector/entity/FileBean;
    iget-boolean v1, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->multipleSelectionMode:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->radio:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_6

    .line 230
    if-nez p3, :cond_0

    .line 231
    return-void

    .line 235
    :cond_0
    invoke-virtual {v0}, Lcom/molihuan/pathselector/entity/FileBean;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->selectFileTypes:Ljava/util/List;

    invoke-static {v1, v5}, Lcom/molihuan/pathselector/utils/FileTools;->selectTypeCompliance(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 238
    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v1, v1, Lcom/molihuan/pathselector/dao/SelectConfigData;->maxCount:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 239
    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->pathFileManager:Lcom/molihuan/pathselector/service/IFileDataManager;

    iget-object v5, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->allFileList:Ljava/util/List;

    invoke-interface {v1, v5, v2, v3}, Lcom/molihuan/pathselector/service/IFileDataManager;->setBoxChecked(Ljava/util/List;Lcom/molihuan/pathselector/adapter/FileListAdapter;Z)Ljava/util/List;

    .line 240
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/molihuan/pathselector/entity/FileBean;->setBoxChecked(Ljava/lang/Boolean;)Lcom/molihuan/pathselector/entity/FileBean;

    goto :goto_1

    .line 244
    :cond_1
    invoke-virtual {v0}, Lcom/molihuan/pathselector/entity/FileBean;->getBoxChecked()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 245
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/molihuan/pathselector/entity/FileBean;->setBoxChecked(Ljava/lang/Boolean;)Lcom/molihuan/pathselector/entity/FileBean;

    .line 246
    iget v1, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->selectedNumber:I

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->selectedNumber:I

    goto :goto_1

    .line 247
    :cond_2
    iget v1, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->selectedNumber:I

    add-int/2addr v1, v4

    iget-object v3, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v3, v3, Lcom/molihuan/pathselector/dao/SelectConfigData;->maxCount:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v1, v3, :cond_4

    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v1, v1, Lcom/molihuan/pathselector/dao/SelectConfigData;->maxCount:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    goto :goto_0

    .line 253
    :cond_3
    sget v1, Lcom/molihuan/pathselector/R$string;->tip_filebeanitem_select_limit_exceeded_mlh:I

    invoke-virtual {p0, v1}, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/molihuan/pathselector/utils/Mtools;->toast(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 249
    :cond_4
    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/molihuan/pathselector/entity/FileBean;->setBoxChecked(Ljava/lang/Boolean;)Lcom/molihuan/pathselector/entity/FileBean;

    .line 250
    iget v1, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->selectedNumber:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->selectedNumber:I

    goto :goto_1

    .line 260
    :cond_5
    sget v1, Lcom/molihuan/pathselector/R$string;->tip_filebeanitem_select_error_type_mlh:I

    invoke-virtual {p0, v1}, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/molihuan/pathselector/utils/Mtools;->toast(Ljava/lang/CharSequence;)V

    .line 263
    :goto_1
    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->pathFileManager:Lcom/molihuan/pathselector/service/IFileDataManager;

    iget-object v3, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->fileListAdapter:Lcom/molihuan/pathselector/adapter/FileListAdapter;

    invoke-interface {v1, v3, v2, v4}, Lcom/molihuan/pathselector/service/IFileDataManager;->refreshFileTabbar(Lcom/molihuan/pathselector/adapter/FileListAdapter;Lcom/molihuan/pathselector/adapter/TabbarListAdapter;I)V

    goto/16 :goto_2

    .line 268
    :cond_6
    if-nez p3, :cond_8

    .line 269
    invoke-virtual {v0}, Lcom/molihuan/pathselector/entity/FileBean;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "path":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sget-object v5, Lcom/molihuan/pathselector/utils/MConstants;->DEFAULT_ROOTPATH:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v2, v5, :cond_7

    sget-object v2, Lcom/molihuan/pathselector/utils/MConstants;->DEFAULT_ROOTPATH:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 272
    sget v2, Lcom/molihuan/pathselector/R$string;->tips_path_jump_error_exceeds_default_path_mlh:I

    invoke-virtual {p0, v2}, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v3

    sget-object v3, Lcom/molihuan/pathselector/utils/MConstants;->DEFAULT_ROOTPATH:Ljava/lang/String;

    aput-object v3, v5, v4

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/molihuan/pathselector/utils/Mtools;->toast(Ljava/lang/CharSequence;)V

    .line 273
    sget-object v1, Lcom/molihuan/pathselector/utils/MConstants;->DEFAULT_ROOTPATH:Ljava/lang/String;

    .line 276
    :cond_7
    invoke-virtual {p0, v1}, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->updateFileList(Ljava/lang/String;)Ljava/util/List;

    .line 278
    iget-object v2, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->psf:Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;

    invoke-virtual {v2, v1}, Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;->updateTabbarList(Ljava/lang/String;)Ljava/util/List;

    .line 279
    return-void

    .line 283
    .end local v1    # "path":Ljava/lang/String;
    :cond_8
    invoke-virtual {v0}, Lcom/molihuan/pathselector/entity/FileBean;->isDir()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 284
    invoke-virtual {v0}, Lcom/molihuan/pathselector/entity/FileBean;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->updateFileList(Ljava/lang/String;)Ljava/util/List;

    .line 286
    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->psf:Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;

    invoke-virtual {v1}, Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;->updateTabbarList()Ljava/util/List;

    goto :goto_2

    .line 290
    :cond_9
    invoke-virtual {v0}, Lcom/molihuan/pathselector/entity/FileBean;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->selectFileTypes:Ljava/util/List;

    invoke-static {v1, v5}, Lcom/molihuan/pathselector/utils/FileTools;->selectTypeCompliance(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 293
    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->fileItemListener:Lcom/molihuan/pathselector/listener/FileItemListener;

    if-eqz v1, :cond_a

    .line 294
    iget-object v5, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->currentPath:Ljava/lang/String;

    iget-object v6, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->psf:Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;

    invoke-virtual {v1, p2, v0, v5, v6}, Lcom/molihuan/pathselector/listener/FileItemListener;->onClick(Landroid/view/View;Lcom/molihuan/pathselector/entity/FileBean;Ljava/lang/String;Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;)Z

    move-result v1

    .line 296
    .local v1, "handled":Z
    if-eqz v1, :cond_a

    .line 297
    return-void

    .line 300
    .end local v1    # "handled":Z
    :cond_a
    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->pathFileManager:Lcom/molihuan/pathselector/service/IFileDataManager;

    iget-object v5, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->allFileList:Ljava/util/List;

    invoke-interface {v1, v5, v2, v3}, Lcom/molihuan/pathselector/service/IFileDataManager;->setBoxChecked(Ljava/util/List;Lcom/molihuan/pathselector/adapter/FileListAdapter;Z)Ljava/util/List;

    .line 301
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/molihuan/pathselector/entity/FileBean;->setBoxChecked(Ljava/lang/Boolean;)Lcom/molihuan/pathselector/entity/FileBean;

    .line 309
    .end local v0    # "item":Lcom/molihuan/pathselector/entity/FileBean;
    :cond_b
    :goto_2
    return-void
.end method

.method public onItemLongClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 5
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
            "**>;",
            "Landroid/view/View;",
            "I)Z"
        }
    .end annotation

    .line 313
    .local p1, "adapter":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<**>;"
    instance-of v0, p1, Lcom/molihuan/pathselector/adapter/FileListAdapter;

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->allFileList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/molihuan/pathselector/entity/FileBean;

    .line 316
    .local v0, "fileBean":Lcom/molihuan/pathselector/entity/FileBean;
    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->radio:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p3, :cond_1

    .line 319
    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->fileItemListener:Lcom/molihuan/pathselector/listener/FileItemListener;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 320
    iget-object v3, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->currentPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->psf:Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;

    invoke-virtual {v1, p2, v0, v3, v4}, Lcom/molihuan/pathselector/listener/FileItemListener;->onLongClick(Landroid/view/View;Lcom/molihuan/pathselector/entity/FileBean;Ljava/lang/String;Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;)Z

    move-result v1

    .line 322
    .local v1, "handled":Z
    if-eqz v1, :cond_0

    .line 323
    return v2

    .line 327
    .end local v1    # "handled":Z
    :cond_0
    iget-boolean v1, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->multipleSelectionMode:Z

    xor-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->openCloseMultipleMode(Lcom/molihuan/pathselector/entity/FileBean;Z)V

    .line 328
    return v2

    .line 331
    .end local v0    # "fileBean":Lcom/molihuan/pathselector/entity/FileBean;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public openCloseMultipleMode(Lcom/molihuan/pathselector/entity/FileBean;Z)V
    .locals 4
    .param p1, "fileBean"    # Lcom/molihuan/pathselector/entity/FileBean;
    .param p2, "status"    # Z

    .line 346
    iput-boolean p2, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->multipleSelectionMode:Z

    .line 348
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->pathFileManager:Lcom/molihuan/pathselector/service/IFileDataManager;

    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->allFileList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p2}, Lcom/molihuan/pathselector/service/IFileDataManager;->setCheckBoxVisible(Ljava/util/List;Lcom/molihuan/pathselector/adapter/FileListAdapter;Z)Ljava/util/List;

    .line 350
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->psf:Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;

    iget-boolean v1, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->multipleSelectionMode:Z

    invoke-virtual {v0, v1}, Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;->handleShowHide(Z)V

    .line 353
    iget-boolean v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->multipleSelectionMode:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 355
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/molihuan/pathselector/entity/FileBean;->getFileExtension()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->selectFileTypes:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/molihuan/pathselector/utils/FileTools;->selectTypeCompliance(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/molihuan/pathselector/entity/FileBean;->setBoxChecked(Ljava/lang/Boolean;)Lcom/molihuan/pathselector/entity/FileBean;

    .line 357
    iget v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->selectedNumber:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->selectedNumber:I

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->pathFileManager:Lcom/molihuan/pathselector/service/IFileDataManager;

    iget-object v3, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->fileListAdapter:Lcom/molihuan/pathselector/adapter/FileListAdapter;

    invoke-interface {v0, v3, v2, v1}, Lcom/molihuan/pathselector/service/IFileDataManager;->refreshFileTabbar(Lcom/molihuan/pathselector/adapter/FileListAdapter;Lcom/molihuan/pathselector/adapter/TabbarListAdapter;I)V

    .line 362
    return-void
.end method

.method public openCloseMultipleMode(Z)V
    .locals 1
    .param p1, "status"    # Z

    .line 366
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->openCloseMultipleMode(Lcom/molihuan/pathselector/entity/FileBean;Z)V

    .line 367
    return-void
.end method

.method public refreshFileList()V
    .locals 4

    .line 213
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->pathFileManager:Lcom/molihuan/pathselector/service/IFileDataManager;

    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->fileListAdapter:Lcom/molihuan/pathselector/adapter/FileListAdapter;

    iget-object v2, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->psf:Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;

    invoke-virtual {v2}, Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;->getTabbarListAdapter()Lcom/molihuan/pathselector/adapter/TabbarListAdapter;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v0, v1, v2, v3}, Lcom/molihuan/pathselector/service/IFileDataManager;->refreshFileTabbar(Lcom/molihuan/pathselector/adapter/FileListAdapter;Lcom/molihuan/pathselector/adapter/TabbarListAdapter;I)V

    .line 214
    return-void
.end method

.method public selectAllFile(Z)V
    .locals 4
    .param p1, "status"    # Z

    .line 337
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->radio:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->multipleSelectionMode:Z

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->pathFileManager:Lcom/molihuan/pathselector/service/IFileDataManager;

    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->allFileList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Lcom/molihuan/pathselector/service/IFileDataManager;->setBoxChecked(Ljava/util/List;Lcom/molihuan/pathselector/adapter/FileListAdapter;Z)Ljava/util/List;

    .line 339
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->pathFileManager:Lcom/molihuan/pathselector/service/IFileDataManager;

    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->fileListAdapter:Lcom/molihuan/pathselector/adapter/FileListAdapter;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/molihuan/pathselector/service/IFileDataManager;->refreshFileTabbar(Lcom/molihuan/pathselector/adapter/FileListAdapter;Lcom/molihuan/pathselector/adapter/TabbarListAdapter;I)V

    .line 341
    :cond_0
    return-void
.end method

.method public setFragmentViewId()I
    .locals 1

    .line 78
    sget v0, Lcom/molihuan/pathselector/R$layout;->fragment_file_show_mlh:I

    return v0
.end method

.method public setInitPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "initPath"    # Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->initPath:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setListeners()V
    .locals 0

    .line 131
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

    .line 162
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->currentPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->updateFileList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public updateFileList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
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

    .line 169
    iput-object p1, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->currentPath:Ljava/lang/String;

    .line 172
    invoke-static {}, Lcom/xuexiang/xtask/XTask;->getTaskChain()Lcom/xuexiang/xtask/api/TaskChainEngine;

    move-result-object v0

    new-instance v1, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment$2;-><init>(Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;Ljava/lang/String;)V

    .line 173
    invoke-static {v1}, Lcom/xuexiang/xtask/XTask;->getTask(Lcom/xuexiang/xtask/core/step/impl/TaskCommand;)Lcom/xuexiang/xtask/api/step/XTaskStep;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xuexiang/xtask/api/TaskChainEngine;->addTask(Lcom/xuexiang/xtask/core/step/ITaskStep;)Lcom/xuexiang/xtask/api/TaskChainEngine;

    move-result-object v0

    new-instance v1, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment$1;-><init>(Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0, v1}, Lcom/xuexiang/xtask/api/TaskChainEngine;->setTaskChainCallback(Lcom/xuexiang/xtask/core/ITaskChainCallback;)Lcom/xuexiang/xtask/api/TaskChainEngine;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Lcom/xuexiang/xtask/api/TaskChainEngine;->start()Lcom/xuexiang/xtask/thread/pool/cancel/ICanceller;

    .line 208
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;->allFileList:Ljava/util/List;

    return-object v0
.end method
