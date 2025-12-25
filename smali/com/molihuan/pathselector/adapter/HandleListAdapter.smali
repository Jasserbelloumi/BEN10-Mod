.class public Lcom/molihuan/pathselector/adapter/HandleListAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "HandleListAdapter.java"

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


# instance fields
.field private itemWidth:I


# direct methods
.method private constructor <init>(ILjava/util/List;)V
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

    .line 30
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/molihuan/pathselector/listener/CommonItemListener;>;"
    invoke-direct {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    .line 31
    return-void
.end method

.method public constructor <init>(ILjava/util/List;I)V
    .locals 0
    .param p1, "id"    # I
    .param p3, "itemWidth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/listener/CommonItemListener;",
            ">;I)V"
        }
    .end annotation

    .line 34
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/molihuan/pathselector/listener/CommonItemListener;>;"
    invoke-direct {p0, p1, p2}, Lcom/molihuan/pathselector/adapter/HandleListAdapter;-><init>(ILjava/util/List;)V

    .line 35
    iput p3, p0, Lcom/molihuan/pathselector/adapter/HandleListAdapter;->itemWidth:I

    .line 36
    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/molihuan/pathselector/listener/CommonItemListener;)V
    .locals 6
    .param p1, "holder"    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .param p2, "itemListener"    # Lcom/molihuan/pathselector/listener/CommonItemListener;

    .line 40
    sget v0, Lcom/molihuan/pathselector/R$id;->item_handle_relatl_mlh:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 41
    .local v0, "relatl":Landroid/widget/RelativeLayout;
    sget v1, Lcom/molihuan/pathselector/R$id;->item_handle_imav_ico_mlh:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 42
    .local v1, "leftIco":Landroid/widget/ImageView;
    sget v2, Lcom/molihuan/pathselector/R$id;->item_handle_tv_mlh:I

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 44
    .local v2, "tv":Landroid/widget/TextView;
    invoke-virtual {p2}, Lcom/molihuan/pathselector/listener/CommonItemListener;->getFontBean()Lcom/molihuan/pathselector/entity/FontBean;

    move-result-object v3

    .line 46
    .local v3, "fontBean":Lcom/molihuan/pathselector/entity/FontBean;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, p0, Lcom/molihuan/pathselector/adapter/HandleListAdapter;->itemWidth:I

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 48
    invoke-virtual {v3}, Lcom/molihuan/pathselector/entity/FontBean;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {p2, v0, v1, v2}, Lcom/molihuan/pathselector/listener/CommonItemListener;->setViewStyle(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 52
    return-void

    .line 55
    :cond_0
    invoke-virtual {v3}, Lcom/molihuan/pathselector/entity/FontBean;->getLeftIcoResId()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 56
    invoke-virtual {v3}, Lcom/molihuan/pathselector/entity/FontBean;->getLeftIcoResId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 57
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    :cond_1
    invoke-virtual {v3}, Lcom/molihuan/pathselector/entity/FontBean;->getColor()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    invoke-virtual {v3}, Lcom/molihuan/pathselector/entity/FontBean;->getSize()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 62
    return-void
.end method

.method protected bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p2, Lcom/molihuan/pathselector/listener/CommonItemListener;

    invoke-virtual {p0, p1, p2}, Lcom/molihuan/pathselector/adapter/HandleListAdapter;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/molihuan/pathselector/listener/CommonItemListener;)V

    return-void
.end method
