.class public Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;
.super Lcom/molihuan/pathselector/fragment/AbstractTitlebarFragment;
.source "TitlebarFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/chad/library/adapter/base/listener/OnItemClickListener;
.implements Lcom/chad/library/adapter/base/listener/OnItemLongClickListener;


# instance fields
.field protected backImgView:Landroid/widget/ImageView;

.field protected isDialogBuild:Z

.field protected mainTitle:Lcom/molihuan/pathselector/entity/FontBean;

.field protected mainTitleTv:Landroid/widget/TextView;

.field protected moreImgView:Landroid/widget/ImageView;

.field protected morePopupAdapter:Lcom/molihuan/pathselector/adapter/MorePopupAdapter;

.field protected morePopupItemListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/listener/CommonItemListener;",
            ">;"
        }
    .end annotation
.end field

.field protected morePopupItemTv:Landroid/widget/TextView;

.field protected oneOptionTv:Landroid/widget/TextView;

.field protected optionsPopup:Landroid/widget/PopupWindow;

.field protected positionView:Landroid/view/View;

.field protected relParent:Landroid/widget/RelativeLayout;

.field protected searchImgView:Landroid/widget/ImageView;

.field protected selectStorageDialog:Lcom/molihuan/pathselector/dialog/impl/SelectStorageDialog;

.field protected storageImgView:Landroid/widget/ImageView;

.field protected subtitle:Lcom/molihuan/pathselector/entity/FontBean;

.field protected subtitleTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/molihuan/pathselector/fragment/AbstractTitlebarFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponents(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 70
    sget v0, Lcom/molihuan/pathselector/R$id;->view_position_titlebar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->positionView:Landroid/view/View;

    .line 71
    sget v0, Lcom/molihuan/pathselector/R$id;->rel_titlebar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->relParent:Landroid/widget/RelativeLayout;

    .line 72
    sget v0, Lcom/molihuan/pathselector/R$id;->imgv_back_titlebar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->backImgView:Landroid/widget/ImageView;

    .line 73
    sget v0, Lcom/molihuan/pathselector/R$id;->imgv_storage_titlebar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->storageImgView:Landroid/widget/ImageView;

    .line 75
    sget v0, Lcom/molihuan/pathselector/R$id;->imgv_seach_titlebar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->searchImgView:Landroid/widget/ImageView;

    .line 76
    sget v0, Lcom/molihuan/pathselector/R$id;->imgv_more_options_titlebar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->moreImgView:Landroid/widget/ImageView;

    .line 77
    sget v0, Lcom/molihuan/pathselector/R$id;->tv_main_title_titlebar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->mainTitleTv:Landroid/widget/TextView;

    .line 78
    sget v0, Lcom/molihuan/pathselector/R$id;->tv_subtitle_titlebar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->subtitleTv:Landroid/widget/TextView;

    .line 79
    sget v0, Lcom/molihuan/pathselector/R$id;->tv_one_option_titlebar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->oneOptionTv:Landroid/widget/TextView;

    .line 80
    return-void
.end method

.method public getMorePopupAdapter()Lcom/molihuan/pathselector/adapter/MorePopupAdapter;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->morePopupAdapter:Lcom/molihuan/pathselector/adapter/MorePopupAdapter;

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

    .line 295
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->morePopupItemListeners:Ljava/util/List;

    return-object v0
.end method

.method public getOnlyOneMorePopupTextView()Landroid/widget/TextView;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->oneOptionTv:Landroid/widget/TextView;

    return-object v0
.end method

.method public initData()V
    .locals 5

    .line 84
    invoke-super {p0}, Lcom/molihuan/pathselector/fragment/AbstractTitlebarFragment;->initData()V

    .line 85
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->titlebarMainTitle:Lcom/molihuan/pathselector/entity/FontBean;

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->mainTitle:Lcom/molihuan/pathselector/entity/FontBean;

    .line 86
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->titlebarSubtitleTitle:Lcom/molihuan/pathselector/entity/FontBean;

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->subtitle:Lcom/molihuan/pathselector/entity/FontBean;

    .line 89
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->morePopupItemListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->morePopupItemListeners:Ljava/util/List;

    .line 91
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->morePopupItemListeners:[Lcom/molihuan/pathselector/listener/CommonItemListener;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->morePopupItemListeners:[Lcom/molihuan/pathselector/listener/CommonItemListener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 93
    .local v3, "listener":Lcom/molihuan/pathselector/listener/CommonItemListener;
    iget-object v4, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->morePopupItemListeners:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    .end local v3    # "listener":Lcom/molihuan/pathselector/listener/CommonItemListener;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->buildType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->isDialogBuild:Z

    .line 101
    :cond_1
    return-void
.end method

.method public initView()V
    .locals 2

    .line 105
    invoke-super {p0}, Lcom/molihuan/pathselector/fragment/AbstractTitlebarFragment;->initView()V

    .line 106
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->relParent:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v1, v1, Lcom/molihuan/pathselector/dao/SelectConfigData;->titlebarBG:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 107
    invoke-virtual {p0}, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->setViewSize()V

    .line 108
    invoke-virtual {p0}, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->setTitleFont()V

    .line 109
    invoke-virtual {p0}, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->setOptions()V

    .line 111
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 185
    .local v0, "id":I
    sget v1, Lcom/molihuan/pathselector/R$id;->imgv_back_titlebar:I

    if-ne v0, v1, :cond_1

    .line 188
    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v1, v1, Lcom/molihuan/pathselector/dao/SelectConfigData;->buildType:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 189
    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v1, v1, Lcom/molihuan/pathselector/dao/SelectConfigData;->buildController:Lcom/molihuan/pathselector/controller/AbstractBuildController;

    invoke-virtual {v1}, Lcom/molihuan/pathselector/controller/AbstractBuildController;->getDialogFragment()Lcom/molihuan/pathselector/dialog/AbstractFragmentDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/molihuan/pathselector/dialog/AbstractFragmentDialog;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 194
    :cond_1
    sget v1, Lcom/molihuan/pathselector/R$id;->imgv_more_options_titlebar:I

    if-ne v0, v1, :cond_2

    .line 196
    invoke-virtual {p0}, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->showPopupWindow()V

    goto :goto_0

    .line 197
    :cond_2
    sget v1, Lcom/molihuan/pathselector/R$id;->imgv_storage_titlebar:I

    if-ne v0, v1, :cond_3

    .line 199
    invoke-virtual {p0}, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->showSelectStorageDialog()V

    goto :goto_0

    .line 201
    :cond_3
    sget v1, Lcom/molihuan/pathselector/R$id;->tv_one_option_titlebar:I

    if-ne v0, v1, :cond_4

    .line 203
    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->optionItemClick(Landroid/view/View;Landroid/widget/TextView;I)V

    goto :goto_0

    .line 204
    :cond_4
    sget v1, Lcom/molihuan/pathselector/R$id;->imgv_seach_titlebar:I

    .line 208
    :goto_0
    return-void
.end method

.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1
    .param p2, "v"    # Landroid/view/View;
    .param p3, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
            "**>;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .line 241
    .local p1, "adapter":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<**>;"
    instance-of v0, p1, Lcom/molihuan/pathselector/adapter/MorePopupAdapter;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->optionsPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 243
    sget v0, Lcom/molihuan/pathselector/R$id;->general_item_textview_mlh:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->morePopupItemTv:Landroid/widget/TextView;

    .line 244
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->mainTitleTv:Landroid/widget/TextView;

    invoke-virtual {p0, p2, v0, p3}, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->optionItemClick(Landroid/view/View;Landroid/widget/TextView;I)V

    .line 246
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

    .line 265
    .local p1, "adapter":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<**>;"
    instance-of v0, p1, Lcom/molihuan/pathselector/adapter/MorePopupAdapter;

    if-eqz v0, :cond_0

    .line 266
    sget v0, Lcom/molihuan/pathselector/R$id;->general_item_textview_mlh:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->morePopupItemTv:Landroid/widget/TextView;

    .line 267
    invoke-virtual {p0, p2, v0, p3}, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->optionItemLongClick(Landroid/view/View;Landroid/widget/TextView;I)Z

    move-result v0

    return v0

    .line 270
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected optionItemClick(Landroid/view/View;Landroid/widget/TextView;I)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "tv"    # Landroid/widget/TextView;
    .param p3, "i"    # I

    .line 255
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->morePopupItemListeners:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/molihuan/pathselector/listener/CommonItemListener;

    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->psf:Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;

    .line 257
    invoke-virtual {v0}, Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;->getSelectedFileList()Ljava/util/List;

    move-result-object v4

    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->psf:Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;

    .line 258
    invoke-virtual {v0}, Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;->getCurrentPath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->psf:Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;

    .line 255
    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/molihuan/pathselector/listener/CommonItemListener;->onClick(Landroid/view/View;Landroid/widget/TextView;Ljava/util/List;Ljava/lang/String;Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;)Z

    .line 261
    return-void
.end method

.method protected optionItemLongClick(Landroid/view/View;Landroid/widget/TextView;I)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "tv"    # Landroid/widget/TextView;
    .param p3, "i"    # I

    .line 280
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->morePopupItemListeners:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/molihuan/pathselector/listener/CommonItemListener;

    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->psf:Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;

    .line 282
    invoke-virtual {v0}, Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;->getSelectedFileList()Ljava/util/List;

    move-result-object v4

    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->psf:Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;

    .line 283
    invoke-virtual {v0}, Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;->getCurrentPath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->psf:Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;

    .line 280
    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/molihuan/pathselector/listener/CommonItemListener;->onLongClick(Landroid/view/View;Landroid/widget/TextView;Ljava/util/List;Ljava/lang/String;Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;)Z

    move-result v0

    return v0
.end method

.method public refreshMorePopup()V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->morePopupAdapter:Lcom/molihuan/pathselector/adapter/MorePopupAdapter;

    invoke-virtual {v0}, Lcom/molihuan/pathselector/adapter/MorePopupAdapter;->notifyDataSetChanged()V

    .line 302
    return-void
.end method

.method public setFragmentViewId()I
    .locals 1

    .line 65
    sget v0, Lcom/molihuan/pathselector/R$layout;->fragment_titlebar_mlh:I

    return v0
.end method

.method public setListeners()V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->backImgView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->storageImgView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->searchImgView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->moreImgView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->oneOptionTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    return-void
.end method

.method protected setOptions()V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->showSelectStorageBtn:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->storageImgView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->morePopupItemListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->morePopupItemListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 147
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->moreImgView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->oneOptionTv:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->morePopupItemListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/molihuan/pathselector/listener/CommonItemListener;

    invoke-virtual {v0}, Lcom/molihuan/pathselector/listener/CommonItemListener;->getFontBean()Lcom/molihuan/pathselector/entity/FontBean;

    move-result-object v0

    .line 151
    .local v0, "font":Lcom/molihuan/pathselector/entity/FontBean;
    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->oneOptionTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/molihuan/pathselector/entity/FontBean;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->oneOptionTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/molihuan/pathselector/entity/FontBean;->getColor()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 153
    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->oneOptionTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/molihuan/pathselector/entity/FontBean;->getSize()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_1

    .line 144
    .end local v0    # "font":Lcom/molihuan/pathselector/entity/FontBean;
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->moreImgView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    :cond_3
    :goto_1
    return-void
.end method

.method protected setTitleFont()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->mainTitle:Lcom/molihuan/pathselector/entity/FontBean;

    if-eqz v0, :cond_0

    .line 161
    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->mainTitleTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/molihuan/pathselector/entity/FontBean;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->mainTitleTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->mainTitle:Lcom/molihuan/pathselector/entity/FontBean;

    invoke-virtual {v1}, Lcom/molihuan/pathselector/entity/FontBean;->getColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->mainTitleTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->mainTitle:Lcom/molihuan/pathselector/entity/FontBean;

    invoke-virtual {v1}, Lcom/molihuan/pathselector/entity/FontBean;->getSize()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->subtitle:Lcom/molihuan/pathselector/entity/FontBean;

    if-eqz v0, :cond_1

    .line 166
    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->subtitleTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/molihuan/pathselector/entity/FontBean;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->subtitleTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->subtitle:Lcom/molihuan/pathselector/entity/FontBean;

    invoke-virtual {v1}, Lcom/molihuan/pathselector/entity/FontBean;->getColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->subtitleTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->subtitle:Lcom/molihuan/pathselector/entity/FontBean;

    invoke-virtual {v1}, Lcom/molihuan/pathselector/entity/FontBean;->getSize()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 170
    :cond_1
    return-void
.end method

.method protected setViewSize()V
    .locals 3

    .line 115
    iget-boolean v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->isDialogBuild:Z

    if-eqz v0, :cond_0

    .line 116
    const/16 v0, 0x41

    .line 118
    .local v0, "icoSize":I
    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->relParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/16 v2, 0x73

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 120
    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->backImgView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 121
    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->backImgView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 123
    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->storageImgView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 124
    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->storageImgView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 126
    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->searchImgView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 127
    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->searchImgView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 129
    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->moreImgView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 130
    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->moreImgView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 135
    .end local v0    # "icoSize":I
    :cond_0
    return-void
.end method

.method protected showPopupWindow()V
    .locals 5

    .line 220
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->optionsPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/molihuan/pathselector/R$layout;->general_recyview_mlh:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 222
    .local v0, "popView":Landroid/view/View;
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->optionsPopup:Landroid/widget/PopupWindow;

    .line 223
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 224
    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->optionsPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 225
    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->optionsPopup:Landroid/widget/PopupWindow;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 226
    sget v1, Lcom/molihuan/pathselector/R$id;->general_recyclerview_mlh:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 227
    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v3, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 229
    new-instance v2, Lcom/molihuan/pathselector/adapter/MorePopupAdapter;

    sget v3, Lcom/molihuan/pathselector/R$layout;->general_item_tv_mlh:I

    iget-object v4, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->morePopupItemListeners:Ljava/util/List;

    invoke-direct {v2, v3, v4}, Lcom/molihuan/pathselector/adapter/MorePopupAdapter;-><init>(ILjava/util/List;)V

    iput-object v2, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->morePopupAdapter:Lcom/molihuan/pathselector/adapter/MorePopupAdapter;

    .line 230
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 231
    iget-object v2, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->morePopupAdapter:Lcom/molihuan/pathselector/adapter/MorePopupAdapter;

    invoke-virtual {v2, p0}, Lcom/molihuan/pathselector/adapter/MorePopupAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    .line 232
    iget-object v2, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->morePopupAdapter:Lcom/molihuan/pathselector/adapter/MorePopupAdapter;

    invoke-virtual {v2, p0}, Lcom/molihuan/pathselector/adapter/MorePopupAdapter;->setOnItemLongClickListener(Lcom/chad/library/adapter/base/listener/OnItemLongClickListener;)V

    .line 235
    .end local v0    # "popView":Landroid/view/View;
    .end local v1    # "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    :cond_0
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->optionsPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->positionView:Landroid/view/View;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 237
    return-void
.end method

.method public showSelectStorageDialog()V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->selectStorageDialog:Lcom/molihuan/pathselector/dialog/impl/SelectStorageDialog;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Lcom/molihuan/pathselector/dialog/impl/SelectStorageDialog;

    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/molihuan/pathselector/dialog/impl/SelectStorageDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->selectStorageDialog:Lcom/molihuan/pathselector/dialog/impl/SelectStorageDialog;

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;->selectStorageDialog:Lcom/molihuan/pathselector/dialog/impl/SelectStorageDialog;

    invoke-virtual {v0}, Lcom/molihuan/pathselector/dialog/impl/SelectStorageDialog;->show()V

    .line 215
    return-void
.end method
