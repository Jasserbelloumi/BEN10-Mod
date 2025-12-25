.class public Lcom/molihuan/pathselector/adapter/StorageListAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "StorageListAdapter.java"

# interfaces
.implements Lcom/chad/library/adapter/base/module/LoadMoreModule;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/molihuan/pathselector/entity/StorageBean;",
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
            "Lcom/molihuan/pathselector/entity/StorageBean;",
            ">;)V"
        }
    .end annotation

    .line 26
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/molihuan/pathselector/entity/StorageBean;>;"
    invoke-direct {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/molihuan/pathselector/entity/StorageBean;)V
    .locals 4
    .param p1, "holder"    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .param p2, "storageBean"    # Lcom/molihuan/pathselector/entity/StorageBean;

    .line 31
    sget v0, Lcom/molihuan/pathselector/R$id;->general_item_textview_mlh:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 32
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {p2}, Lcom/molihuan/pathselector/entity/StorageBean;->getRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    invoke-virtual {p2}, Lcom/molihuan/pathselector/entity/StorageBean;->getSelected()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    const/16 v1, 0xff

    const/16 v2, 0xa5

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 36
    :cond_0
    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 39
    :goto_0
    return-void
.end method

.method protected bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Lcom/molihuan/pathselector/entity/StorageBean;

    invoke-virtual {p0, p1, p2}, Lcom/molihuan/pathselector/adapter/StorageListAdapter;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/molihuan/pathselector/entity/StorageBean;)V

    return-void
.end method
