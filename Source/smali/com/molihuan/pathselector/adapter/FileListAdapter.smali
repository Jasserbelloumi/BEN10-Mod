.class public Lcom/molihuan/pathselector/adapter/FileListAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "FileListAdapter.java"

# interfaces
.implements Lcom/chad/library/adapter/base/module/LoadMoreModule;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/molihuan/pathselector/entity/FileBean;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        ">;",
        "Lcom/chad/library/adapter/base/module/LoadMoreModule;"
    }
.end annotation


# instance fields
.field private fileShowFragment:Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;

.field protected mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 1
    .param p1, "layoutResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/entity/FileBean;",
            ">;)V"
        }
    .end annotation

    .line 39
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/molihuan/pathselector/entity/FileBean;>;"
    invoke-direct {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    .line 34
    invoke-static {}, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->getInstance()Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->getSelectConfigData()Lcom/molihuan/pathselector/dao/SelectConfigData;

    move-result-object v0

    iput-object v0, p0, Lcom/molihuan/pathselector/adapter/FileListAdapter;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    .line 36
    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->fileShowFragment:Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;

    iput-object v0, p0, Lcom/molihuan/pathselector/adapter/FileListAdapter;->fileShowFragment:Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;

    .line 40
    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/molihuan/pathselector/entity/FileBean;)V
    .locals 10
    .param p1, "holder"    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .param p2, "fileBean"    # Lcom/molihuan/pathselector/entity/FileBean;

    .line 46
    sget v0, Lcom/molihuan/pathselector/R$id;->linl_item_file_container:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 47
    .local v0, "linlContainer":Landroid/widget/LinearLayout;
    sget v1, Lcom/molihuan/pathselector/R$id;->imgv_item_file_ico:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 48
    .local v1, "imgvIco":Landroid/widget/ImageView;
    sget v2, Lcom/molihuan/pathselector/R$id;->imgv_item_file_enter:I

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 49
    .local v2, "imgvEnter":Landroid/widget/ImageView;
    sget v3, Lcom/molihuan/pathselector/R$id;->tv_item_file_name:I

    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 50
    .local v3, "tvName":Landroid/widget/TextView;
    sget v4, Lcom/molihuan/pathselector/R$id;->tv_item_file_detail:I

    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 51
    .local v4, "tvDetail":Landroid/widget/TextView;
    sget v5, Lcom/molihuan/pathselector/R$id;->checkbox_item_file_choose:I

    invoke-virtual {p1, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 53
    .local v5, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {p2}, Lcom/molihuan/pathselector/entity/FileBean;->getPath()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 55
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 56
    return-void

    .line 57
    :cond_0
    invoke-virtual {p2}, Lcom/molihuan/pathselector/entity/FileBean;->getSize()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, -0x1523

    cmp-long v6, v6, v8

    const/4 v7, 0x4

    const/4 v8, 0x0

    if-nez v6, :cond_1

    .line 58
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 60
    invoke-virtual {p2}, Lcom/molihuan/pathselector/entity/FileBean;->getFileIcoType()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    invoke-virtual {p2}, Lcom/molihuan/pathselector/entity/FileBean;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    const-string v6, ""

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 65
    invoke-virtual {v5, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_2

    .line 67
    :cond_1
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 69
    invoke-virtual {p2}, Lcom/molihuan/pathselector/entity/FileBean;->getFileIcoType()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    invoke-virtual {p2}, Lcom/molihuan/pathselector/entity/FileBean;->isDir()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/molihuan/pathselector/adapter/FileListAdapter;->fileShowFragment:Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;

    invoke-virtual {v6}, Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;->isMultipleSelectionMode()Z

    move-result v6

    if-nez v6, :cond_2

    .line 73
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    :goto_0
    invoke-virtual {p2}, Lcom/molihuan/pathselector/entity/FileBean;->getBoxVisible()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 79
    invoke-virtual {v5, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1

    .line 81
    :cond_3
    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 84
    :goto_1
    invoke-virtual {p2}, Lcom/molihuan/pathselector/entity/FileBean;->getBoxChecked()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 85
    invoke-virtual {p2}, Lcom/molihuan/pathselector/entity/FileBean;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {p2}, Lcom/molihuan/pathselector/entity/FileBean;->isDir()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 88
    sget v6, Lcom/molihuan/pathselector/R$string;->filebeanitem_dir_detail_mlh:I

    invoke-static {v6}, Lcom/blankj/molihuan/utilcode/util/StringUtils;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/molihuan/pathselector/entity/FileBean;->getChildrenDirNumber()Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p2}, Lcom/molihuan/pathselector/entity/FileBean;->getChildrenFileNumber()Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 89
    .local v6, "dirDetail":Ljava/lang/String;
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    .end local v6    # "dirDetail":Ljava/lang/String;
    goto :goto_2

    .line 91
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/molihuan/pathselector/entity/FileBean;->getModifyTime()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-string/jumbo v9, "yy-MM-dd HH:mm  "

    invoke-static {v7, v8, v9}, Lcom/blankj/molihuan/utilcode/util/TimeUtils;->millis2String(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/molihuan/pathselector/entity/FileBean;->getSizeString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :goto_2
    return-void
.end method

.method protected bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p2, Lcom/molihuan/pathselector/entity/FileBean;

    invoke-virtual {p0, p1, p2}, Lcom/molihuan/pathselector/adapter/FileListAdapter;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/molihuan/pathselector/entity/FileBean;)V

    return-void
.end method
