.class public Lcom/google/android/flexbox/FlexboxItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "FlexboxItemDecoration.java"


# static fields
.field public static final BOTH:I = 0x3

.field public static final HORIZONTAL:I = 0x1

.field private static final LIST_DIVIDER_ATTRS:[I

.field public static final VERTICAL:I = 0x2


# instance fields
.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010214

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/flexbox/FlexboxItemDecoration;->LIST_DIVIDER_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 59
    sget-object v0, Lcom/google/android/flexbox/FlexboxItemDecoration;->LIST_DIVIDER_ATTRS:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 60
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 61
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/google/android/flexbox/FlexboxItemDecoration;->setOrientation(I)V

    .line 63
    return-void
.end method

.method private drawHorizontalDecorations(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroidx/recyclerview/widget/RecyclerView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "canvas",
            "parent"
        }
    .end annotation

    .line 234
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxItemDecoration;->needsHorizontalDecoration()Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    return-void

    .line 237
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 238
    .local v0, "layoutManager":Lcom/google/android/flexbox/FlexboxLayoutManager;
    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexDirection()I

    move-result v1

    .line 239
    .local v1, "flexDirection":I
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    .line 240
    .local v2, "parentLeft":I
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getRight()I

    move-result v3

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    .line 241
    .local v3, "parentRight":I
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v4

    .line 242
    .local v4, "childCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_4

    .line 243
    invoke-virtual {p2, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 244
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 247
    .local v7, "lp":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    const/4 v8, 0x3

    if-ne v1, v8, :cond_1

    .line 248
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v8

    iget v9, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    .line 249
    .local v8, "top":I
    iget-object v9, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    add-int/2addr v9, v8

    .local v9, "bottom":I
    goto :goto_1

    .line 251
    .end local v8    # "top":I
    .end local v9    # "bottom":I
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v8

    iget v9, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int v9, v8, v9

    .line 252
    .restart local v9    # "bottom":I
    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    sub-int v8, v9, v8

    .line 256
    .restart local v8    # "top":I
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 257
    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isLayoutRtl()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 258
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v10

    iget v11, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    add-int/2addr v10, v11

    .line 259
    .local v10, "right":I
    invoke-static {v10, v3}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 260
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v11

    iget v12, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int/2addr v11, v12

    .local v11, "left":I
    goto :goto_2

    .line 262
    .end local v10    # "right":I
    .end local v11    # "left":I
    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v10

    iget v11, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    sub-int/2addr v10, v11

    .line 263
    .local v10, "left":I
    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 264
    .end local v10    # "left":I
    .restart local v11    # "left":I
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v10

    iget v12, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v10, v12

    .local v10, "right":I
    goto :goto_2

    .line 267
    .end local v10    # "right":I
    .end local v11    # "left":I
    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v10

    iget v11, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int v11, v10, v11

    .line 268
    .restart local v11    # "left":I
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v10

    iget v12, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v10, v12

    .line 270
    .restart local v10    # "right":I
    :goto_2
    iget-object v12, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v11, v8, v10, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 271
    iget-object v12, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 242
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "lp":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .end local v8    # "top":I
    .end local v9    # "bottom":I
    .end local v10    # "right":I
    .end local v11    # "left":I
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 273
    .end local v5    # "i":I
    :cond_4
    return-void
.end method

.method private drawVerticalDecorations(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroidx/recyclerview/widget/RecyclerView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "canvas",
            "parent"
        }
    .end annotation

    .line 190
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxItemDecoration;->needsVerticalDecoration()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    return-void

    .line 193
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 194
    .local v0, "layoutManager":Lcom/google/android/flexbox/FlexboxLayoutManager;
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getTop()I

    move-result v1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 195
    .local v1, "parentTop":I
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getBottom()I

    move-result v2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    .line 196
    .local v2, "parentBottom":I
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v3

    .line 197
    .local v3, "childCount":I
    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexDirection()I

    move-result v4

    .line 198
    .local v4, "flexDirection":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_4

    .line 199
    invoke-virtual {p2, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 201
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 204
    .local v7, "lp":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 205
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v8

    iget v9, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v8, v9

    .line 206
    .local v8, "left":I
    iget-object v9, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    add-int/2addr v9, v8

    .local v9, "right":I
    goto :goto_1

    .line 208
    .end local v8    # "left":I
    .end local v9    # "right":I
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v8

    iget v9, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int v9, v8, v9

    .line 209
    .restart local v9    # "right":I
    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    sub-int v8, v9, v8

    .line 213
    .restart local v8    # "left":I
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 214
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v10

    iget v11, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v10, v11

    .line 215
    .local v10, "top":I
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v11

    iget v12, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v11, v12

    .local v11, "bottom":I
    goto :goto_2

    .line 217
    .end local v10    # "top":I
    .end local v11    # "bottom":I
    :cond_2
    const/4 v10, 0x3

    if-ne v4, v10, :cond_3

    .line 218
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v10

    iget v11, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    add-int/2addr v10, v11

    .line 219
    .local v10, "bottom":I
    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 220
    .end local v10    # "bottom":I
    .restart local v11    # "bottom":I
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v10

    iget v12, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v10, v12

    .local v10, "top":I
    goto :goto_2

    .line 222
    .end local v10    # "top":I
    .end local v11    # "bottom":I
    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v10

    iget v11, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    sub-int/2addr v10, v11

    .line 223
    .restart local v10    # "top":I
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 224
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v11

    iget v12, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v11, v12

    .line 228
    .restart local v11    # "bottom":I
    :goto_2
    iget-object v12, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v8, v10, v9, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 229
    iget-object v12, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 198
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "lp":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .end local v8    # "left":I
    .end local v9    # "right":I
    .end local v10    # "top":I
    .end local v11    # "bottom":I
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 231
    .end local v5    # "i":I
    :cond_4
    return-void
.end method

.method private isFirstItemInLine(ILjava/util/List;Lcom/google/android/flexbox/FlexboxLayoutManager;)Z
    .locals 6
    .param p1, "position"    # I
    .param p3, "layoutManager"    # Lcom/google/android/flexbox/FlexboxLayoutManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "flexLines",
            "layoutManager"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;",
            "Lcom/google/android/flexbox/FlexboxLayoutManager;",
            ")Z"
        }
    .end annotation

    .line 288
    .local p2, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    invoke-virtual {p3, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPositionToFlexLineIndex(I)I

    move-result v0

    .line 289
    .local v0, "flexLineIndex":I
    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 290
    invoke-virtual {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexLinesInternal()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 291
    invoke-virtual {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexLinesInternal()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/flexbox/FlexLine;

    iget v2, v2, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    if-ne v2, p1, :cond_0

    .line 292
    return v1

    .line 294
    :cond_0
    if-nez p1, :cond_1

    .line 295
    return v1

    .line 297
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 298
    return v3

    .line 303
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/flexbox/FlexLine;

    .line 304
    .local v2, "lastLine":Lcom/google/android/flexbox/FlexLine;
    iget v4, v2, Lcom/google/android/flexbox/FlexLine;->mLastIndex:I

    add-int/lit8 v5, p1, -0x1

    if-ne v4, v5, :cond_3

    goto :goto_0

    :cond_3
    move v1, v3

    :goto_0
    return v1
.end method

.method private needsHorizontalDecoration()Z
    .locals 2

    .line 276
    iget v0, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mOrientation:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private needsVerticalDecoration()Z
    .locals 1

    .line 280
    iget v0, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mOrientation:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setOffsetAlongCrossAxis(Landroid/graphics/Rect;ILcom/google/android/flexbox/FlexboxLayoutManager;Ljava/util/List;)V
    .locals 3
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "position"    # I
    .param p3, "layoutManager"    # Lcom/google/android/flexbox/FlexboxLayoutManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "outRect",
            "position",
            "layoutManager",
            "flexLines"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "I",
            "Lcom/google/android/flexbox/FlexboxLayoutManager;",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;)V"
        }
    .end annotation

    .line 122
    .local p4, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 123
    return-void

    .line 125
    :cond_0
    invoke-virtual {p3, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPositionToFlexLineIndex(I)I

    move-result v0

    .line 126
    .local v0, "flexLineIndex":I
    if-nez v0, :cond_1

    .line 127
    return-void

    .line 130
    :cond_1
    invoke-virtual {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 131
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxItemDecoration;->needsHorizontalDecoration()Z

    move-result v1

    if-nez v1, :cond_2

    .line 132
    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 133
    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 134
    return-void

    .line 136
    :cond_2
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 137
    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 139
    :cond_3
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxItemDecoration;->needsVerticalDecoration()Z

    move-result v1

    if-nez v1, :cond_4

    .line 140
    return-void

    .line 142
    :cond_4
    invoke-virtual {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 143
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 144
    iput v2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 146
    :cond_5
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 147
    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 151
    :goto_0
    return-void
.end method

.method private setOffsetAlongMainAxis(Landroid/graphics/Rect;ILcom/google/android/flexbox/FlexboxLayoutManager;Ljava/util/List;I)V
    .locals 2
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "position"    # I
    .param p3, "layoutManager"    # Lcom/google/android/flexbox/FlexboxLayoutManager;
    .param p5, "flexDirection"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "outRect",
            "position",
            "layoutManager",
            "flexLines",
            "flexDirection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "I",
            "Lcom/google/android/flexbox/FlexboxLayoutManager;",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;I)V"
        }
    .end annotation

    .line 155
    .local p4, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    invoke-direct {p0, p2, p4, p3}, Lcom/google/android/flexbox/FlexboxItemDecoration;->isFirstItemInLine(ILjava/util/List;Lcom/google/android/flexbox/FlexboxLayoutManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    return-void

    .line 159
    :cond_0
    invoke-virtual {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 160
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxItemDecoration;->needsVerticalDecoration()Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 162
    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 163
    return-void

    .line 165
    :cond_1
    invoke-virtual {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 167
    iput v1, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 170
    iput v1, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 173
    :cond_3
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxItemDecoration;->needsHorizontalDecoration()Z

    move-result v0

    if-nez v0, :cond_4

    .line 174
    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 175
    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 176
    return-void

    .line 178
    :cond_4
    const/4 v0, 0x3

    if-ne p5, v0, :cond_5

    .line 179
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 180
    iput v1, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 182
    :cond_5
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 183
    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 187
    :goto_0
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 10
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p4, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "outRect",
            "view",
            "parent",
            "state"
        }
    .end annotation

    .line 105
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v6

    .line 106
    .local v6, "position":I
    if-nez v6, :cond_0

    .line 107
    return-void

    .line 109
    :cond_0
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxItemDecoration;->needsHorizontalDecoration()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxItemDecoration;->needsVerticalDecoration()Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 111
    return-void

    .line 113
    :cond_1
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 114
    .local v7, "layoutManager":Lcom/google/android/flexbox/FlexboxLayoutManager;
    invoke-virtual {v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexLines()Ljava/util/List;

    move-result-object v8

    .line 115
    .local v8, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    invoke-virtual {v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexDirection()I

    move-result v9

    .line 116
    .local v9, "flexDirection":I
    move-object v0, p0

    move-object v1, p1

    move v2, v6

    move-object v3, v7

    move-object v4, v8

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/google/android/flexbox/FlexboxItemDecoration;->setOffsetAlongMainAxis(Landroid/graphics/Rect;ILcom/google/android/flexbox/FlexboxLayoutManager;Ljava/util/List;I)V

    .line 117
    invoke-direct {p0, p1, v6, v7, v8}, Lcom/google/android/flexbox/FlexboxItemDecoration;->setOffsetAlongCrossAxis(Landroid/graphics/Rect;ILcom/google/android/flexbox/FlexboxLayoutManager;Ljava/util/List;)V

    .line 118
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p3, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "parent",
            "state"
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxItemDecoration;->drawHorizontalDecorations(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxItemDecoration;->drawVerticalDecorations(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 97
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    .line 71
    if-eqz p1, :cond_0

    .line 74
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 75
    return-void

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Drawable cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    .line 87
    iput p1, p0, Lcom/google/android/flexbox/FlexboxItemDecoration;->mOrientation:I

    .line 88
    return-void
.end method
