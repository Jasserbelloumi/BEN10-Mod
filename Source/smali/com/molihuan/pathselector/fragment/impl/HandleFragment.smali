.class public Lcom/molihuan/pathselector/fragment/impl/HandleFragment;
.super Lcom/molihuan/pathselector/fragment/AbstractHandleFragment;
.source "HandleFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/listener/OnItemClickListener;
.implements Lcom/chad/library/adapter/base/listener/OnItemLongClickListener;


# instance fields
.field protected fontBean:Lcom/molihuan/pathselector/entity/FontBean;

.field protected handleItemListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/listener/CommonItemListener;",
            ">;"
        }
    .end annotation
.end field

.field protected handleItemTv:Landroid/widget/TextView;

.field protected handleListAdapter:Lcom/molihuan/pathselector/adapter/HandleListAdapter;

.field protected isDialogBuild:Z

.field protected mRecView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/molihuan/pathselector/fragment/AbstractHandleFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponents(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 49
    sget v0, Lcom/molihuan/pathselector/R$id;->recv_handle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/HandleFragment;->mRecView:Landroidx/recyclerview/widget/RecyclerView;

    .line 50
    return-void
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

    .line 104
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/HandleFragment;->handleItemListeners:Ljava/util/List;

    return-object v0
.end method

.method public getHandleListAdapter()Lcom/molihuan/pathselector/adapter/HandleListAdapter;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/HandleFragment;->handleListAdapter:Lcom/molihuan/pathselector/adapter/HandleListAdapter;

    return-object v0
.end method

.method public initData()V
    .locals 5

    .line 55
    invoke-super {p0}, Lcom/molihuan/pathselector/fragment/AbstractHandleFragment;->initData()V

    .line 58
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/HandleFragment;->handleItemListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/HandleFragment;->handleItemListeners:Ljava/util/List;

    .line 60
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/HandleFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->handleItemListeners:[Lcom/molihuan/pathselector/listener/CommonItemListener;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/molihuan/pathselector/listener/CommonItemListener;->getFontBean()Lcom/molihuan/pathselector/entity/FontBean;

    move-result-object v0

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/HandleFragment;->fontBean:Lcom/molihuan/pathselector/entity/FontBean;

    .line 61
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/HandleFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->handleItemListeners:[Lcom/molihuan/pathselector/listener/CommonItemListener;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/HandleFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->handleItemListeners:[Lcom/molihuan/pathselector/listener/CommonItemListener;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 63
    .local v3, "listener":Lcom/molihuan/pathselector/listener/CommonItemListener;
    iget-object v4, p0, Lcom/molihuan/pathselector/fragment/impl/HandleFragment;->handleItemListeners:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    .end local v3    # "listener":Lcom/molihuan/pathselector/listener/CommonItemListener;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/HandleFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->buildType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/molihuan/pathselector/fragment/impl/HandleFragment;->isDialogBuild:Z

    .line 74
    :cond_1
    return-void
.end method

.method public initView()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/HandleFragment;->mRecView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/molihuan/pathselector/fragment/impl/HandleFragment$1;

    invoke-direct {v1, p0}, Lcom/molihuan/pathselector/fragment/impl/HandleFragment$1;-><init>(Lcom/molihuan/pathselector/fragment/impl/HandleFragment;)V

    invoke-static {v0, v1}, Lcom/blankj/molihuan/utilcode/util/SizeUtils;->forceGetViewSize(Landroid/view/View;Lcom/blankj/molihuan/utilcode/util/SizeUtils$OnGetSizeListener;)V

    .line 95
    return-void
.end method

.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1
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

    .line 120
    .local p1, "adapter":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<**>;"
    instance-of v0, p1, Lcom/molihuan/pathselector/adapter/HandleListAdapter;

    if-eqz v0, :cond_0

    .line 121
    sget v0, Lcom/molihuan/pathselector/R$id;->item_handle_tv_mlh:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/HandleFragment;->handleItemTv:Landroid/widget/TextView;

    .line 122
    invoke-virtual {p0, p2, v0, p3}, Lcom/molihuan/pathselector/fragment/impl/HandleFragment;->optionItemClick(Landroid/view/View;Landroid/widget/TextView;I)V

    .line 124
    :cond_0
    return-void
.end method

.method public onItemLongClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 1
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

    .line 144
    .local p1, "adapter":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<**>;"
    instance-of v0, p1, Lcom/molihuan/pathselector/adapter/HandleListAdapter;

    if-eqz v0, :cond_0

    .line 145
    sget v0, Lcom/molihuan/pathselector/R$id;->item_handle_tv_mlh:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/HandleFragment;->handleItemTv:Landroid/widget/TextView;

    .line 146
    invoke-virtual {p0, p2, v0, p3}, Lcom/molihuan/pathselector/fragment/impl/HandleFragment;->optionItemLongClick(Landroid/view/View;Landroid/widget/TextView;I)Z

    move-result v0

    return v0

    .line 149
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected optionItemClick(Landroid/view/View;Landroid/widget/TextView;I)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "tv"    # Landroid/widget/TextView;
    .param p3, "i"    # I

    .line 133
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/HandleFragment;->handleItemListeners:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/molihuan/pathselector/listener/CommonItemListener;

    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/HandleFragment;->psf:Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;

    .line 135
    invoke-virtual {v0}, Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;->getSelectedFileList()Ljava/util/List;

    move-result-object v4

    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/HandleFragment;->psf:Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;

    .line 136
    invoke-virtual {v0}, Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;->getCurrentPath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/molihuan/pathselector/fragment/impl/HandleFragment;->psf:Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;

    .line 133
    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/molihuan/pathselector/listener/CommonItemListener;->onClick(Landroid/view/View;Landroid/widget/TextView;Ljava/util/List;Ljava/lang/String;Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;)Z

    .line 139
    return-void
.end method

.method protected optionItemLongClick(Landroid/view/View;Landroid/widget/TextView;I)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "tv"    # Landroid/widget/TextView;
    .param p3, "i"    # I

    .line 159
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/HandleFragment;->handleItemListeners:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/molihuan/pathselector/listener/CommonItemListener;

    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/HandleFragment;->psf:Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;

    .line 161
    invoke-virtual {v0}, Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;->getSelectedFileList()Ljava/util/List;

    move-result-object v4

    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/HandleFragment;->psf:Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;

    .line 162
    invoke-virtual {v0}, Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;->getCurrentPath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/molihuan/pathselector/fragment/impl/HandleFragment;->psf:Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;

    .line 159
    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/molihuan/pathselector/listener/CommonItemListener;->onLongClick(Landroid/view/View;Landroid/widget/TextView;Ljava/util/List;Ljava/lang/String;Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;)Z

    move-result v0

    return v0
.end method

.method public refreshHandleList()V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/HandleFragment;->handleListAdapter:Lcom/molihuan/pathselector/adapter/HandleListAdapter;

    invoke-virtual {v0}, Lcom/molihuan/pathselector/adapter/HandleListAdapter;->notifyDataSetChanged()V

    .line 116
    return-void
.end method

.method public setFragmentViewId()I
    .locals 1

    .line 44
    sget v0, Lcom/molihuan/pathselector/R$layout;->fragment_handle_mlh:I

    return v0
.end method

.method public setListeners()V
    .locals 0

    .line 100
    return-void
.end method
