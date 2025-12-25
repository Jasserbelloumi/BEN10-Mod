.class public Lcom/molihuan/pathselector/dialog/impl/SelectStorageDialog;
.super Lcom/molihuan/pathselector/dialog/BaseDialog;
.source "SelectStorageDialog.java"

# interfaces
.implements Lcom/chad/library/adapter/base/listener/OnItemClickListener;


# instance fields
.field private cancelBtn:Landroid/widget/TextView;

.field private confirmBtn:Landroid/widget/TextView;

.field private recycView:Landroidx/recyclerview/widget/RecyclerView;

.field protected selectedStorage:Lcom/molihuan/pathselector/entity/StorageBean;

.field protected storageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/entity/StorageBean;",
            ">;"
        }
    .end annotation
.end field

.field protected storageListAdapter:Lcom/molihuan/pathselector/adapter/StorageListAdapter;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    invoke-direct {p0, p1}, Lcom/molihuan/pathselector/dialog/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 43
    return-void
.end method


# virtual methods
.method public getComponents()V
    .locals 1

    .line 52
    sget v0, Lcom/molihuan/pathselector/R$id;->title_general_title_recyview_btn_mlh:I

    invoke-virtual {p0, v0}, Lcom/molihuan/pathselector/dialog/impl/SelectStorageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/molihuan/pathselector/dialog/impl/SelectStorageDialog;->title:Landroid/widget/TextView;

    .line 53
    sget v0, Lcom/molihuan/pathselector/R$id;->confirm_general_title_recyview_btn_mlh:I

    invoke-virtual {p0, v0}, Lcom/molihuan/pathselector/dialog/impl/SelectStorageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/molihuan/pathselector/dialog/impl/SelectStorageDialog;->confirmBtn:Landroid/widget/TextView;

    .line 54
    sget v0, Lcom/molihuan/pathselector/R$id;->cancel_general_title_recyview_btn_mlh:I

    invoke-virtual {p0, v0}, Lcom/molihuan/pathselector/dialog/impl/SelectStorageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/molihuan/pathselector/dialog/impl/SelectStorageDialog;->cancelBtn:Landroid/widget/TextView;

    .line 55
    sget v0, Lcom/molihuan/pathselector/R$id;->recyview_general_title_recyview_btn_mlh:I

    invoke-virtual {p0, v0}, Lcom/molihuan/pathselector/dialog/impl/SelectStorageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/molihuan/pathselector/dialog/impl/SelectStorageDialog;->recycView:Landroidx/recyclerview/widget/RecyclerView;

    .line 56
    return-void
.end method

.method public initData()V
    .locals 6

    .line 60
    invoke-super {p0}, Lcom/molihuan/pathselector/dialog/BaseDialog;->initData()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/molihuan/pathselector/dialog/impl/SelectStorageDialog;->storageList:Ljava/util/List;

    .line 65
    iget-object v0, p0, Lcom/molihuan/pathselector/dialog/impl/SelectStorageDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/molihuan/pathselector/utils/ReflectTools;->getAllStoragePath(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 66
    .local v0, "allStoragePath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 67
    .local v2, "storagePath":Ljava/lang/String;
    iget-object v3, p0, Lcom/molihuan/pathselector/dialog/impl/SelectStorageDialog;->storageList:Ljava/util/List;

    new-instance v4, Lcom/molihuan/pathselector/entity/StorageBean;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lcom/molihuan/pathselector/entity/StorageBean;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .end local v2    # "storagePath":Ljava/lang/String;
    goto :goto_0

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/molihuan/pathselector/dialog/impl/SelectStorageDialog;->recycView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v3, p0, Lcom/molihuan/pathselector/dialog/impl/SelectStorageDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 72
    new-instance v1, Lcom/molihuan/pathselector/adapter/StorageListAdapter;

    sget v2, Lcom/molihuan/pathselector/R$layout;->general_item_tv_mlh:I

    iget-object v3, p0, Lcom/molihuan/pathselector/dialog/impl/SelectStorageDialog;->storageList:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/molihuan/pathselector/adapter/StorageListAdapter;-><init>(ILjava/util/List;)V

    iput-object v1, p0, Lcom/molihuan/pathselector/dialog/impl/SelectStorageDialog;->storageListAdapter:Lcom/molihuan/pathselector/adapter/StorageListAdapter;

    .line 73
    iget-object v2, p0, Lcom/molihuan/pathselector/dialog/impl/SelectStorageDialog;->recycView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 75
    return-void
.end method

.method public initView()V
    .locals 3

    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/molihuan/pathselector/dialog/impl/SelectStorageDialog;->setCanceledOnTouchOutside(Z)V

    .line 80
    invoke-virtual {p0}, Lcom/molihuan/pathselector/dialog/impl/SelectStorageDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/molihuan/pathselector/dialog/impl/SelectStorageDialog;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v1, v1, Lcom/molihuan/pathselector/dao/SelectConfigData;->pathSelectDialogWidth:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5c

    div-int/lit8 v1, v1, 0x64

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 81
    iget-object v0, p0, Lcom/molihuan/pathselector/dialog/impl/SelectStorageDialog;->title:Landroid/widget/TextView;

    sget v1, Lcom/molihuan/pathselector/R$string;->tip_dialog_title_select_memory_path_mlh:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 82
    iget-object v0, p0, Lcom/molihuan/pathselector/dialog/impl/SelectStorageDialog;->confirmBtn:Landroid/widget/TextView;

    sget v1, Lcom/molihuan/pathselector/R$string;->option_confirm_mlh:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 83
    iget-object v0, p0, Lcom/molihuan/pathselector/dialog/impl/SelectStorageDialog;->cancelBtn:Landroid/widget/TextView;

    sget v1, Lcom/molihuan/pathselector/R$string;->option_cancel_mlh:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 85
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 97
    .local v0, "id":I
    sget v1, Lcom/molihuan/pathselector/R$id;->confirm_general_title_recyview_btn_mlh:I

    if-ne v0, v1, :cond_1

    .line 99
    iget-object v1, p0, Lcom/molihuan/pathselector/dialog/impl/SelectStorageDialog;->selectedStorage:Lcom/molihuan/pathselector/entity/StorageBean;

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/molihuan/pathselector/dialog/impl/SelectStorageDialog;->psf:Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;

    iget-object v2, p0, Lcom/molihuan/pathselector/dialog/impl/SelectStorageDialog;->selectedStorage:Lcom/molihuan/pathselector/entity/StorageBean;

    invoke-virtual {v2}, Lcom/molihuan/pathselector/entity/StorageBean;->getRootPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;->updateFileList(Ljava/lang/String;)Ljava/util/List;

    .line 105
    iget-object v1, p0, Lcom/molihuan/pathselector/dialog/impl/SelectStorageDialog;->psf:Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;

    invoke-virtual {v1}, Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;->updateTabbarList()Ljava/util/List;

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/molihuan/pathselector/dialog/impl/SelectStorageDialog;->dismiss()V

    goto :goto_0

    .line 108
    :cond_1
    sget v1, Lcom/molihuan/pathselector/R$id;->cancel_general_title_recyview_btn_mlh:I

    if-ne v0, v1, :cond_2

    .line 110
    invoke-virtual {p0}, Lcom/molihuan/pathselector/dialog/impl/SelectStorageDialog;->dismiss()V

    .line 112
    :cond_2
    :goto_0
    return-void
.end method

.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
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

    .line 116
    .local p1, "adapter":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<**>;"
    instance-of v0, p1, Lcom/molihuan/pathselector/adapter/StorageListAdapter;

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/molihuan/pathselector/dialog/impl/SelectStorageDialog;->selectedStorage:Lcom/molihuan/pathselector/entity/StorageBean;

    if-eqz v0, :cond_0

    .line 119
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/molihuan/pathselector/entity/StorageBean;->setSelected(Ljava/lang/Boolean;)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/molihuan/pathselector/dialog/impl/SelectStorageDialog;->storageList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/molihuan/pathselector/entity/StorageBean;

    iput-object v0, p0, Lcom/molihuan/pathselector/dialog/impl/SelectStorageDialog;->selectedStorage:Lcom/molihuan/pathselector/entity/StorageBean;

    .line 123
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/molihuan/pathselector/entity/StorageBean;->setSelected(Ljava/lang/Boolean;)V

    .line 125
    iget-object v0, p0, Lcom/molihuan/pathselector/dialog/impl/SelectStorageDialog;->storageListAdapter:Lcom/molihuan/pathselector/adapter/StorageListAdapter;

    invoke-virtual {v0}, Lcom/molihuan/pathselector/adapter/StorageListAdapter;->notifyDataSetChanged()V

    .line 128
    :cond_1
    return-void
.end method

.method public setContentViewID()I
    .locals 1

    .line 47
    sget v0, Lcom/molihuan/pathselector/R$layout;->general_title_recyview_btn_mlh:I

    return v0
.end method

.method public setListeners()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/molihuan/pathselector/dialog/impl/SelectStorageDialog;->storageListAdapter:Lcom/molihuan/pathselector/adapter/StorageListAdapter;

    invoke-virtual {v0, p0}, Lcom/molihuan/pathselector/adapter/StorageListAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/molihuan/pathselector/dialog/impl/SelectStorageDialog;->confirmBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/molihuan/pathselector/dialog/impl/SelectStorageDialog;->cancelBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    return-void
.end method
