.class public Lcom/molihuan/pathselector/adapter/MorePopupAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "MorePopupAdapter.java"

# interfaces
.implements Lcom/chad/library/adapter/base/module/LoadMoreModule;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/molihuan/pathselector/listener/CommonItemListener;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        ">;",
        "Lcom/chad/library/adapter/base/module/LoadMoreModule;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .param p1, "layoutResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/listener/CommonItemListener;",
            ">;)V"
        }
    .end annotation

    .line 29
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/molihuan/pathselector/listener/CommonItemListener;>;"
    invoke-direct {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/molihuan/pathselector/listener/CommonItemListener;)V
    .locals 5
    .param p1, "holder"    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .param p2, "item"    # Lcom/molihuan/pathselector/listener/CommonItemListener;

    .line 34
    invoke-virtual {p2}, Lcom/molihuan/pathselector/listener/CommonItemListener;->getFontBean()Lcom/molihuan/pathselector/entity/FontBean;

    move-result-object v0

    .line 35
    .local v0, "fontBean":Lcom/molihuan/pathselector/entity/FontBean;
    sget v1, Lcom/molihuan/pathselector/R$id;->general_item_relatl_container_mlh:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 36
    .local v1, "container":Landroid/widget/RelativeLayout;
    sget v2, Lcom/molihuan/pathselector/R$id;->general_item_imav_ico_mlh:I

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 37
    .local v2, "leftIco":Landroid/widget/ImageView;
    sget v3, Lcom/molihuan/pathselector/R$id;->general_item_textview_mlh:I

    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 39
    .local v3, "tv":Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/molihuan/pathselector/entity/FontBean;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    invoke-virtual {p2, v1, v2, v3}, Lcom/molihuan/pathselector/listener/CommonItemListener;->setViewStyle(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 42
    return-void

    .line 45
    :cond_0
    invoke-virtual {v0}, Lcom/molihuan/pathselector/entity/FontBean;->getLeftIcoResId()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 46
    invoke-virtual {v0}, Lcom/molihuan/pathselector/entity/FontBean;->getLeftIcoResId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 47
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    :cond_1
    invoke-virtual {v0}, Lcom/molihuan/pathselector/entity/FontBean;->getColor()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    invoke-virtual {v0}, Lcom/molihuan/pathselector/entity/FontBean;->getSize()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 53
    return-void
.end method

.method protected bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p2, Lcom/molihuan/pathselector/listener/CommonItemListener;

    invoke-virtual {p0, p1, p2}, Lcom/molihuan/pathselector/adapter/MorePopupAdapter;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/molihuan/pathselector/listener/CommonItemListener;)V

    return-void
.end method
