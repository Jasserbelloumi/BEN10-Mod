.class public Lcom/molihuan/pathselector/adapter/TabbarListAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "TabbarListAdapter.java"

# interfaces
.implements Lcom/chad/library/adapter/base/module/LoadMoreModule;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/molihuan/pathselector/entity/TabbarFileBean;",
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
            "Lcom/molihuan/pathselector/entity/TabbarFileBean;",
            ">;)V"
        }
    .end annotation

    .line 27
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/molihuan/pathselector/entity/TabbarFileBean;>;"
    invoke-direct {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/molihuan/pathselector/entity/TabbarFileBean;)V
    .locals 3
    .param p1, "holder"    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .param p2, "item"    # Lcom/molihuan/pathselector/entity/TabbarFileBean;

    .line 32
    sget v0, Lcom/molihuan/pathselector/R$id;->relatl_item_tabbar_mlh:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 33
    .local v0, "relatContainer":Landroid/widget/RelativeLayout;
    invoke-virtual {p2}, Lcom/molihuan/pathselector/entity/TabbarFileBean;->getPath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 34
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 36
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 38
    :goto_0
    sget v1, Lcom/molihuan/pathselector/R$id;->tv_item_tabbar:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 39
    .local v1, "tv":Landroid/widget/TextView;
    invoke-virtual {p2}, Lcom/molihuan/pathselector/entity/TabbarFileBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    return-void
.end method

.method protected bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p2, Lcom/molihuan/pathselector/entity/TabbarFileBean;

    invoke-virtual {p0, p1, p2}, Lcom/molihuan/pathselector/adapter/TabbarListAdapter;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/molihuan/pathselector/entity/TabbarFileBean;)V

    return-void
.end method
