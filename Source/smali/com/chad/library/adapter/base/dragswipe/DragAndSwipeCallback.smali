.class public Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "DragAndSwipeCallback.java"


# instance fields
.field private mDragMoveFlags:I

.field private mDraggableModule:Lcom/chad/library/adapter/base/module/BaseDraggableModule;

.field private mMoveThreshold:F

.field private mSwipeMoveFlags:I

.field private mSwipeThreshold:F


# direct methods
.method public constructor <init>(Lcom/chad/library/adapter/base/module/BaseDraggableModule;)V
    .locals 1
    .param p1, "draggableModule"    # Lcom/chad/library/adapter/base/module/BaseDraggableModule;

    .line 31
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    .line 23
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->mMoveThreshold:F

    .line 24
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->mSwipeThreshold:F

    .line 27
    const/16 v0, 0xf

    iput v0, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->mDragMoveFlags:I

    .line 28
    const/16 v0, 0x20

    iput v0, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->mSwipeMoveFlags:I

    .line 32
    iput-object p1, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->mDraggableModule:Lcom/chad/library/adapter/base/module/BaseDraggableModule;

    .line 33
    return-void
.end method

.method private isViewCreateByAdapter(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 211
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    .line 212
    .local v0, "type":I
    const v1, 0x10000111

    if-eq v0, v1, :cond_1

    const v1, 0x10000222

    if-eq v0, v1, :cond_1

    const v1, 0x10000333

    if-eq v0, v1, :cond_1

    const v1, 0x10000555

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method


# virtual methods
.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 4
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 71
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 72
    invoke-direct {p0, p2}, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->isViewCreateByAdapter(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    return-void

    .line 76
    :cond_0
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/chad/library/R$id;->BaseQuickAdapter_dragging_support:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/chad/library/R$id;->BaseQuickAdapter_dragging_support:I

    .line 77
    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->mDraggableModule:Lcom/chad/library/adapter/base/module/BaseDraggableModule;

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {v0, p2}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->onItemDragEnd(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 81
    :cond_1
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/chad/library/R$id;->BaseQuickAdapter_dragging_support:I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 83
    :cond_2
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/chad/library/R$id;->BaseQuickAdapter_swiping_support:I

    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/chad/library/R$id;->BaseQuickAdapter_swiping_support:I

    .line 84
    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 85
    iget-object v0, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->mDraggableModule:Lcom/chad/library/adapter/base/module/BaseDraggableModule;

    if-eqz v0, :cond_3

    .line 86
    invoke-virtual {v0, p2}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->onItemSwipeClear(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 88
    :cond_3
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/chad/library/R$id;->BaseQuickAdapter_swiping_support:I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 90
    :cond_4
    return-void
.end method

.method public getMoveThreshold(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)F
    .locals 1
    .param p1, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 125
    iget v0, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->mMoveThreshold:F

    return v0
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 2
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 94
    invoke-direct {p0, p2}, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->isViewCreateByAdapter(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->makeMovementFlags(II)I

    move-result v0

    return v0

    .line 98
    :cond_0
    iget v0, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->mDragMoveFlags:I

    iget v1, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->mSwipeMoveFlags:I

    invoke-static {v0, v1}, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->makeMovementFlags(II)I

    move-result v0

    return v0
.end method

.method public getSwipeThreshold(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)F
    .locals 1
    .param p1, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 130
    iget v0, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->mSwipeThreshold:F

    return v0
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->mDraggableModule:Lcom/chad/library/adapter/base/module/BaseDraggableModule;

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->isSwipeEnabled()Z

    move-result v0

    return v0

    .line 48
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->mDraggableModule:Lcom/chad/library/adapter/base/module/BaseDraggableModule;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->isDragEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->mDraggableModule:Lcom/chad/library/adapter/base/module/BaseDraggableModule;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->hasToggleView()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 40
    :cond_1
    return v1
.end method

.method public onChildDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 11
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p3, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .line 186
    move-object v0, p0

    move-object v7, p1

    move-object v8, p3

    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 188
    const/4 v1, 0x1

    move/from16 v9, p6

    if-ne v9, v1, :cond_2

    .line 189
    invoke-direct {p0, p3}, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->isViewCreateByAdapter(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 190
    iget-object v10, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 192
    .local v10, "itemView":Landroid/view/View;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 193
    const/4 v1, 0x0

    cmpl-float v1, p4, v1

    if-lez v1, :cond_0

    .line 194
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    .line 195
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, p4

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    .line 194
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 196
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 198
    :cond_0
    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p4

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    .line 199
    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    .line 198
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 200
    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p4

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 202
    :goto_0
    iget-object v1, v0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->mDraggableModule:Lcom/chad/library/adapter/base/module/BaseDraggableModule;

    if-eqz v1, :cond_1

    .line 203
    move-object v2, p1

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p7

    invoke-virtual/range {v1 .. v6}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->onItemSwiping(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFZ)V

    .line 205
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 208
    .end local v10    # "itemView":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "source"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p3, "target"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 103
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;III)V
    .locals 1
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "source"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p3, "fromPos"    # I
    .param p4, "target"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p5, "toPos"    # I
    .param p6, "x"    # I
    .param p7, "y"    # I

    .line 108
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;III)V

    .line 109
    iget-object v0, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->mDraggableModule:Lcom/chad/library/adapter/base/module/BaseDraggableModule;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0, p2, p4}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->onItemDragMoving(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 112
    :cond_0
    return-void
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "actionState"    # I

    .line 53
    const/4 v0, 0x1

    .line 58
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 53
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    .line 54
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->isViewCreateByAdapter(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 55
    iget-object v0, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->mDraggableModule:Lcom/chad/library/adapter/base/module/BaseDraggableModule;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->onItemDragStart(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 58
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/chad/library/R$id;->BaseQuickAdapter_dragging_support:I

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 59
    :cond_1
    if-ne p2, v0, :cond_3

    .line 60
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->isViewCreateByAdapter(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 61
    iget-object v0, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->mDraggableModule:Lcom/chad/library/adapter/base/module/BaseDraggableModule;

    if-eqz v0, :cond_2

    .line 62
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->onItemSwipeStart(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 64
    :cond_2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/chad/library/R$id;->BaseQuickAdapter_swiping_support:I

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 66
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 67
    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "direction"    # I

    .line 116
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->isViewCreateByAdapter(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->mDraggableModule:Lcom/chad/library/adapter/base/module/BaseDraggableModule;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->onItemSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 121
    :cond_0
    return-void
.end method

.method public setDragMoveFlags(I)V
    .locals 0
    .param p1, "dragMoveFlags"    # I

    .line 169
    iput p1, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->mDragMoveFlags:I

    .line 170
    return-void
.end method

.method public setMoveThreshold(F)V
    .locals 0
    .param p1, "moveThreshold"    # F

    .line 157
    iput p1, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->mMoveThreshold:F

    .line 158
    return-void
.end method

.method public setSwipeMoveFlags(I)V
    .locals 0
    .param p1, "swipeMoveFlags"    # I

    .line 180
    iput p1, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->mSwipeMoveFlags:I

    .line 181
    return-void
.end method

.method public setSwipeThreshold(F)V
    .locals 0
    .param p1, "swipeThreshold"    # F

    .line 144
    iput p1, p0, Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;->mSwipeThreshold:F

    .line 145
    return-void
.end method
