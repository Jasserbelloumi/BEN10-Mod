.class Lcom/google/android/flexbox/FlexboxHelper;
.super Ljava/lang/Object;
.source "FlexboxHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;,
        Lcom/google/android/flexbox/FlexboxHelper$Order;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final INITIAL_CAPACITY:I = 0xa

.field private static final MEASURE_SPEC_WIDTH_MASK:J = 0xffffffffL


# instance fields
.field private mChildrenFrozen:[Z

.field private final mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

.field mIndexToFlexLine:[I

.field mMeasureSpecCache:[J

.field private mMeasuredSizeCache:[J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 47
    return-void
.end method

.method constructor <init>(Lcom/google/android/flexbox/FlexContainer;)V
    .locals 0
    .param p1, "flexContainer"    # Lcom/google/android/flexbox/FlexContainer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flexContainer"
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 105
    return-void
.end method

.method private addFlexLine(Ljava/util/List;Lcom/google/android/flexbox/FlexLine;II)V
    .locals 1
    .param p2, "flexLine"    # Lcom/google/android/flexbox/FlexLine;
    .param p3, "viewIndex"    # I
    .param p4, "usedCrossSizeSoFar"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "flexLines",
            "flexLine",
            "viewIndex",
            "usedCrossSizeSoFar"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;",
            "Lcom/google/android/flexbox/FlexLine;",
            "II)V"
        }
    .end annotation

    .line 899
    .local p1, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    iput p4, p2, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    .line 900
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0, p2}, Lcom/google/android/flexbox/FlexContainer;->onNewFlexLineAdded(Lcom/google/android/flexbox/FlexLine;)V

    .line 901
    iput p3, p2, Lcom/google/android/flexbox/FlexLine;->mLastIndex:I

    .line 902
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 903
    return-void
.end method

.method private checkSizeConstraints(Landroid/view/View;I)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "index"
        }
    .end annotation

    .line 914
    const/4 v0, 0x0

    .line 915
    .local v0, "needsMeasure":Z
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/google/android/flexbox/FlexItem;

    .line 916
    .local v1, "flexItem":Lcom/google/android/flexbox/FlexItem;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 917
    .local v2, "childWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 919
    .local v3, "childHeight":I
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 920
    const/4 v0, 0x1

    .line 921
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v2

    goto :goto_0

    .line 922
    :cond_0
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v4

    if-le v2, v4, :cond_1

    .line 923
    const/4 v0, 0x1

    .line 924
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v2

    .line 927
    :cond_1
    :goto_0
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 928
    const/4 v0, 0x1

    .line 929
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v3

    goto :goto_1

    .line 930
    :cond_2
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v4

    if-le v3, v4, :cond_3

    .line 931
    const/4 v0, 0x1

    .line 932
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v3

    .line 934
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 935
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 936
    .local v5, "widthSpec":I
    nop

    .line 937
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 938
    .local v4, "heightSpec":I
    invoke-virtual {p1, v5, v4}, Landroid/view/View;->measure(II)V

    .line 939
    invoke-direct {p0, p2, v5, v4, p1}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 940
    iget-object v6, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v6, p2, p1}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    .line 942
    .end local v4    # "heightSpec":I
    .end local v5    # "widthSpec":I
    :cond_4
    return-void
.end method

.method private constructFlexLinesForAlignContentCenter(Ljava/util/List;II)Ljava/util/List;
    .locals 7
    .param p2, "size"    # I
    .param p3, "totalCrossSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "flexLines",
            "size",
            "totalCrossSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;II)",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;"
        }
    .end annotation

    .line 1583
    .local p1, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    sub-int v0, p2, p3

    .line 1584
    .local v0, "spaceAboveAndBottom":I
    div-int/lit8 v0, v0, 0x2

    .line 1585
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1586
    .local v1, "newFlexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    new-instance v2, Lcom/google/android/flexbox/FlexLine;

    invoke-direct {v2}, Lcom/google/android/flexbox/FlexLine;-><init>()V

    .line 1587
    .local v2, "dummySpaceFlexLine":Lcom/google/android/flexbox/FlexLine;
    iput v0, v2, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 1588
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "flexLineSize":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 1589
    if-nez v3, :cond_0

    .line 1590
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1592
    :cond_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/flexbox/FlexLine;

    .line 1593
    .local v5, "flexLine":Lcom/google/android/flexbox/FlexLine;
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1594
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v3, v6, :cond_1

    .line 1595
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1588
    .end local v5    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1598
    .end local v3    # "i":I
    .end local v4    # "flexLineSize":I
    :cond_2
    return-object v1
.end method

.method private createOrders(I)Ljava/util/List;
    .locals 6
    .param p1, "childCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "childCount"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexboxHelper$Order;",
            ">;"
        }
    .end annotation

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 165
    .local v0, "orders":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexboxHelper$Order;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 166
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v2, v1}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemAt(I)Landroid/view/View;

    move-result-object v2

    .line 167
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/google/android/flexbox/FlexItem;

    .line 168
    .local v3, "flexItem":Lcom/google/android/flexbox/FlexItem;
    new-instance v4, Lcom/google/android/flexbox/FlexboxHelper$Order;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/flexbox/FlexboxHelper$Order;-><init>(Lcom/google/android/flexbox/FlexboxHelper$1;)V

    .line 169
    .local v4, "order":Lcom/google/android/flexbox/FlexboxHelper$Order;
    invoke-interface {v3}, Lcom/google/android/flexbox/FlexItem;->getOrder()I

    move-result v5

    iput v5, v4, Lcom/google/android/flexbox/FlexboxHelper$Order;->order:I

    .line 170
    iput v1, v4, Lcom/google/android/flexbox/FlexboxHelper$Order;->index:I

    .line 171
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "flexItem":Lcom/google/android/flexbox/FlexItem;
    .end local v4    # "order":Lcom/google/android/flexbox/FlexboxHelper$Order;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private ensureChildrenFrozen(I)V
    .locals 2
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 1018
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    if-nez v0, :cond_0

    .line 1019
    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    goto :goto_0

    .line 1020
    :cond_0
    array-length v1, v0

    if-ge v1, p1, :cond_1

    .line 1021
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 1022
    .local v0, "newCapacity":I
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    .line 1023
    .end local v0    # "newCapacity":I
    goto :goto_0

    .line 1024
    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 1026
    :goto_0
    return-void
.end method

.method private evaluateMinimumSizeForCompoundButton(Landroid/widget/CompoundButton;)V
    .locals 8
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "compoundButton"
        }
    .end annotation

    .line 646
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    .line 647
    .local v0, "flexItem":Lcom/google/android/flexbox/FlexItem;
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v1

    .line 648
    .local v1, "minWidth":I
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v2

    .line 650
    .local v2, "minHeight":I
    invoke-static {p1}, Landroidx/core/widget/CompoundButtonCompat;->getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 651
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    .line 652
    .local v5, "drawableMinWidth":I
    :goto_0
    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    .line 653
    .local v4, "drawableMinHeight":I
    :goto_1
    const/4 v6, -0x1

    if-ne v1, v6, :cond_2

    move v7, v5

    goto :goto_2

    :cond_2
    move v7, v1

    :goto_2
    invoke-interface {v0, v7}, Lcom/google/android/flexbox/FlexItem;->setMinWidth(I)V

    .line 654
    if-ne v2, v6, :cond_3

    move v6, v4

    goto :goto_3

    :cond_3
    move v6, v2

    :goto_3
    invoke-interface {v0, v6}, Lcom/google/android/flexbox/FlexItem;->setMinHeight(I)V

    .line 655
    return-void
.end method

.method private expandFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V
    .locals 24
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .param p3, "flexLine"    # Lcom/google/android/flexbox/FlexLine;
    .param p4, "maxMainSize"    # I
    .param p5, "paddingAlongMainAxis"    # I
    .param p6, "calledRecursively"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec",
            "flexLine",
            "maxMainSize",
            "paddingAlongMainAxis",
            "calledRecursively"
        }
    .end annotation

    .line 1043
    move-object/from16 v7, p0

    move-object/from16 v8, p3

    move/from16 v9, p4

    iget v0, v8, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_17

    iget v0, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-ge v9, v0, :cond_0

    goto/16 :goto_e

    .line 1046
    :cond_0
    iget v10, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 1047
    .local v10, "sizeBeforeExpand":I
    const/4 v0, 0x0

    .line 1048
    .local v0, "needsReexpand":Z
    iget v2, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int v2, v9, v2

    int-to-float v2, v2

    iget v3, v8, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    div-float v11, v2, v3

    .line 1049
    .local v11, "unitSpace":F
    iget v2, v8, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    add-int v2, p5, v2

    iput v2, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 1060
    const/4 v2, 0x0

    .line 1061
    .local v2, "largestCrossSize":I
    if-nez p6, :cond_1

    .line 1062
    const/high16 v3, -0x80000000

    iput v3, v8, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 1064
    :cond_1
    const/4 v3, 0x0

    .line 1065
    .local v3, "accumulatedRoundError":F
    const/4 v4, 0x0

    move v12, v0

    move v13, v2

    move v14, v3

    .end local v0    # "needsReexpand":Z
    .end local v2    # "largestCrossSize":I
    .end local v3    # "accumulatedRoundError":F
    .local v4, "i":I
    .local v12, "needsReexpand":Z
    .local v13, "largestCrossSize":I
    .local v14, "accumulatedRoundError":F
    :goto_0
    iget v0, v8, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    if-ge v4, v0, :cond_14

    .line 1066
    iget v0, v8, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    add-int/2addr v0, v4

    .line 1067
    .local v0, "index":I
    iget-object v2, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v2, v0}, Lcom/google/android/flexbox/FlexContainer;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v2

    .line 1068
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_13

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-ne v3, v5, :cond_2

    .line 1069
    move/from16 v6, p2

    move/from16 v19, v10

    move v10, v13

    move v13, v12

    goto/16 :goto_b

    .line 1071
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/google/android/flexbox/FlexItem;

    .line 1072
    .local v3, "flexItem":Lcom/google/android/flexbox/FlexItem;
    iget-object v5, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v5}, Lcom/google/android/flexbox/FlexContainer;->getFlexDirection()I

    move-result v5

    .line 1073
    .local v5, "flexDirection":I
    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    const/4 v6, 0x1

    if-eqz v5, :cond_b

    if-ne v5, v6, :cond_3

    move/from16 v19, v10

    goto/16 :goto_5

    .line 1138
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    .line 1139
    .local v19, "childMeasuredHeight":I
    iget-object v15, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v15, :cond_4

    .line 1145
    move-object/from16 v22, v2

    .end local v2    # "child":Landroid/view/View;
    .local v22, "child":Landroid/view/View;
    aget-wide v1, v15, v0

    .line 1146
    invoke-virtual {v7, v1, v2}, Lcom/google/android/flexbox/FlexboxHelper;->extractHigherInt(J)I

    move-result v19

    move/from16 v1, v19

    goto :goto_1

    .line 1139
    .end local v22    # "child":Landroid/view/View;
    .restart local v2    # "child":Landroid/view/View;
    :cond_4
    move-object/from16 v22, v2

    .end local v2    # "child":Landroid/view/View;
    .restart local v22    # "child":Landroid/view/View;
    move/from16 v1, v19

    .line 1148
    .end local v19    # "childMeasuredHeight":I
    .local v1, "childMeasuredHeight":I
    :goto_1
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1149
    .local v2, "childMeasuredWidth":I
    iget-object v15, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v15, :cond_5

    .line 1151
    move/from16 v19, v10

    .end local v10    # "sizeBeforeExpand":I
    .local v19, "sizeBeforeExpand":I
    aget-wide v9, v15, v0

    .line 1152
    invoke-virtual {v7, v9, v10}, Lcom/google/android/flexbox/FlexboxHelper;->extractLowerInt(J)I

    move-result v2

    goto :goto_2

    .line 1149
    .end local v19    # "sizeBeforeExpand":I
    .restart local v10    # "sizeBeforeExpand":I
    :cond_5
    move/from16 v19, v10

    .line 1154
    .end local v10    # "sizeBeforeExpand":I
    .restart local v19    # "sizeBeforeExpand":I
    :goto_2
    iget-object v9, v7, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aget-boolean v9, v9, v0

    if-nez v9, :cond_a

    invoke-interface {v3}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_a

    .line 1155
    int-to-float v9, v1

    .line 1156
    invoke-interface {v3}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v10

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    .line 1157
    .local v9, "rawCalculatedHeight":F
    iget v10, v8, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    sub-int/2addr v10, v6

    if-ne v4, v10, :cond_6

    .line 1158
    add-float/2addr v9, v14

    .line 1159
    const/4 v14, 0x0

    .line 1161
    :cond_6
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 1162
    .local v10, "newHeight":I
    invoke-interface {v3}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v15

    if-le v10, v15, :cond_7

    .line 1169
    const/4 v12, 0x1

    .line 1170
    invoke-interface {v3}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v10

    .line 1171
    iget-object v15, v7, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aput-boolean v6, v15, v0

    .line 1172
    iget v6, v8, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    invoke-interface {v3}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v15

    sub-float/2addr v6, v15

    iput v6, v8, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    move v15, v1

    move/from16 v23, v2

    goto :goto_3

    .line 1174
    :cond_7
    int-to-float v6, v10

    sub-float v6, v9, v6

    add-float/2addr v14, v6

    .line 1175
    move v15, v1

    move/from16 v23, v2

    .end local v1    # "childMeasuredHeight":I
    .end local v2    # "childMeasuredWidth":I
    .local v15, "childMeasuredHeight":I
    .local v23, "childMeasuredWidth":I
    float-to-double v1, v14

    cmpl-double v1, v1, v17

    if-lez v1, :cond_8

    .line 1176
    add-int/lit8 v10, v10, 0x1

    .line 1177
    float-to-double v1, v14

    sub-double v1, v1, v17

    double-to-float v1, v1

    move v14, v1

    .end local v14    # "accumulatedRoundError":F
    .local v1, "accumulatedRoundError":F
    goto :goto_3

    .line 1178
    .end local v1    # "accumulatedRoundError":F
    .restart local v14    # "accumulatedRoundError":F
    :cond_8
    float-to-double v1, v14

    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    cmpg-double v1, v1, v20

    if-gez v1, :cond_9

    .line 1179
    add-int/lit8 v10, v10, -0x1

    .line 1180
    float-to-double v1, v14

    add-double v1, v1, v17

    double-to-float v1, v1

    move v14, v1

    .line 1183
    :cond_9
    :goto_3
    iget v1, v8, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    move/from16 v2, p1

    invoke-direct {v7, v2, v3, v1}, Lcom/google/android/flexbox/FlexboxHelper;->getChildWidthMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I

    move-result v1

    .line 1185
    .local v1, "childWidthMeasureSpec":I
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v10, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1187
    .local v6, "childHeightMeasureSpec":I
    move-object/from16 v2, v22

    .end local v22    # "child":Landroid/view/View;
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2, v1, v6}, Landroid/view/View;->measure(II)V

    .line 1188
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    .line 1189
    .end local v23    # "childMeasuredWidth":I
    .local v17, "childMeasuredWidth":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 1190
    invoke-direct {v7, v0, v1, v6, v2}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 1192
    move/from16 v18, v1

    .end local v1    # "childWidthMeasureSpec":I
    .local v18, "childWidthMeasureSpec":I
    iget-object v1, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1, v0, v2}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    move v1, v15

    goto :goto_4

    .line 1154
    .end local v6    # "childHeightMeasureSpec":I
    .end local v9    # "rawCalculatedHeight":F
    .end local v10    # "newHeight":I
    .end local v15    # "childMeasuredHeight":I
    .end local v17    # "childMeasuredWidth":I
    .end local v18    # "childWidthMeasureSpec":I
    .local v1, "childMeasuredHeight":I
    .local v2, "childMeasuredWidth":I
    .restart local v22    # "child":Landroid/view/View;
    :cond_a
    move v15, v1

    move/from16 v23, v2

    move-object/from16 v2, v22

    .line 1194
    .end local v1    # "childMeasuredHeight":I
    .end local v22    # "child":Landroid/view/View;
    .local v2, "child":Landroid/view/View;
    .restart local v15    # "childMeasuredHeight":I
    .restart local v23    # "childMeasuredWidth":I
    move v1, v15

    move/from16 v17, v23

    .end local v15    # "childMeasuredHeight":I
    .end local v23    # "childMeasuredWidth":I
    .restart local v1    # "childMeasuredHeight":I
    .restart local v17    # "childMeasuredWidth":I
    :goto_4
    nop

    .line 1195
    invoke-interface {v3}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v6

    add-int v6, v17, v6

    invoke-interface {v3}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v9

    add-int/2addr v6, v9

    iget-object v9, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 1196
    invoke-interface {v9, v2}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v9

    add-int/2addr v6, v9

    .line 1194
    invoke-static {v13, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1197
    .end local v13    # "largestCrossSize":I
    .local v6, "largestCrossSize":I
    iget v9, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    invoke-interface {v3}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v10

    add-int/2addr v10, v1

    .line 1198
    invoke-interface {v3}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v13

    add-int/2addr v10, v13

    add-int/2addr v9, v10

    iput v9, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    move/from16 v22, v5

    move v5, v6

    move/from16 v6, p2

    goto/16 :goto_a

    .line 1073
    .end local v1    # "childMeasuredHeight":I
    .end local v6    # "largestCrossSize":I
    .end local v17    # "childMeasuredWidth":I
    .end local v19    # "sizeBeforeExpand":I
    .local v10, "sizeBeforeExpand":I
    .restart local v13    # "largestCrossSize":I
    :cond_b
    move/from16 v19, v10

    .line 1076
    .end local v10    # "sizeBeforeExpand":I
    .restart local v19    # "sizeBeforeExpand":I
    :goto_5
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 1077
    .local v1, "childMeasuredWidth":I
    iget-object v9, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v9, :cond_c

    .line 1083
    move v10, v12

    move v15, v13

    .end local v12    # "needsReexpand":Z
    .end local v13    # "largestCrossSize":I
    .local v10, "needsReexpand":Z
    .local v15, "largestCrossSize":I
    aget-wide v12, v9, v0

    invoke-virtual {v7, v12, v13}, Lcom/google/android/flexbox/FlexboxHelper;->extractLowerInt(J)I

    move-result v1

    goto :goto_6

    .line 1077
    .end local v10    # "needsReexpand":Z
    .end local v15    # "largestCrossSize":I
    .restart local v12    # "needsReexpand":Z
    .restart local v13    # "largestCrossSize":I
    :cond_c
    move v10, v12

    move v15, v13

    .line 1085
    .end local v12    # "needsReexpand":Z
    .end local v13    # "largestCrossSize":I
    .restart local v10    # "needsReexpand":Z
    .restart local v15    # "largestCrossSize":I
    :goto_6
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 1086
    .local v9, "childMeasuredHeight":I
    iget-object v12, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v12, :cond_d

    .line 1088
    move/from16 v22, v9

    move v13, v10

    .end local v9    # "childMeasuredHeight":I
    .end local v10    # "needsReexpand":Z
    .local v13, "needsReexpand":Z
    .local v22, "childMeasuredHeight":I
    aget-wide v9, v12, v0

    invoke-virtual {v7, v9, v10}, Lcom/google/android/flexbox/FlexboxHelper;->extractHigherInt(J)I

    move-result v9

    .end local v22    # "childMeasuredHeight":I
    .restart local v9    # "childMeasuredHeight":I
    goto :goto_7

    .line 1086
    .end local v13    # "needsReexpand":Z
    .restart local v10    # "needsReexpand":Z
    :cond_d
    move/from16 v22, v9

    move v13, v10

    .line 1090
    .end local v10    # "needsReexpand":Z
    .restart local v13    # "needsReexpand":Z
    :goto_7
    iget-object v10, v7, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aget-boolean v10, v10, v0

    if-nez v10, :cond_12

    invoke-interface {v3}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v10

    const/4 v12, 0x0

    cmpl-float v10, v10, v12

    if-lez v10, :cond_12

    .line 1091
    int-to-float v10, v1

    .line 1092
    invoke-interface {v3}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v16

    mul-float v16, v16, v11

    add-float v10, v10, v16

    .line 1093
    .local v10, "rawCalculatedWidth":F
    iget v12, v8, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    sub-int/2addr v12, v6

    if-ne v4, v12, :cond_e

    .line 1094
    add-float/2addr v10, v14

    .line 1095
    const/4 v14, 0x0

    .line 1097
    :cond_e
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 1098
    .local v12, "newWidth":I
    invoke-interface {v3}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v6

    if-le v12, v6, :cond_f

    .line 1105
    const/4 v6, 0x1

    .line 1106
    .end local v13    # "needsReexpand":Z
    .local v6, "needsReexpand":Z
    invoke-interface {v3}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v12

    .line 1107
    iget-object v13, v7, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    const/16 v17, 0x1

    aput-boolean v17, v13, v0

    .line 1108
    iget v13, v8, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    invoke-interface {v3}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v17

    sub-float v13, v13, v17

    iput v13, v8, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    move/from16 v22, v5

    move v13, v6

    goto :goto_8

    .line 1110
    .end local v6    # "needsReexpand":Z
    .restart local v13    # "needsReexpand":Z
    :cond_f
    int-to-float v6, v12

    sub-float v6, v10, v6

    add-float/2addr v14, v6

    .line 1111
    move/from16 v22, v5

    .end local v5    # "flexDirection":I
    .local v22, "flexDirection":I
    float-to-double v5, v14

    cmpl-double v5, v5, v17

    if-lez v5, :cond_10

    .line 1112
    add-int/lit8 v12, v12, 0x1

    .line 1113
    float-to-double v5, v14

    sub-double v5, v5, v17

    double-to-float v5, v5

    move v14, v5

    .end local v14    # "accumulatedRoundError":F
    .local v5, "accumulatedRoundError":F
    goto :goto_8

    .line 1114
    .end local v5    # "accumulatedRoundError":F
    .restart local v14    # "accumulatedRoundError":F
    :cond_10
    float-to-double v5, v14

    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    cmpg-double v5, v5, v20

    if-gez v5, :cond_11

    .line 1115
    add-int/lit8 v12, v12, -0x1

    .line 1116
    float-to-double v5, v14

    add-double v5, v5, v17

    double-to-float v5, v5

    move v14, v5

    .line 1119
    :cond_11
    :goto_8
    iget v5, v8, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    move/from16 v6, p2

    invoke-direct {v7, v6, v3, v5}, Lcom/google/android/flexbox/FlexboxHelper;->getChildHeightMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I

    move-result v5

    .line 1121
    .local v5, "childHeightMeasureSpec":I
    move/from16 v17, v1

    const/high16 v1, 0x40000000    # 2.0f

    .end local v1    # "childMeasuredWidth":I
    .restart local v17    # "childMeasuredWidth":I
    invoke-static {v12, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1123
    .local v1, "childWidthMeasureSpec":I
    invoke-virtual {v2, v1, v5}, Landroid/view/View;->measure(II)V

    .line 1124
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    .line 1125
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 1126
    invoke-direct {v7, v0, v1, v5, v2}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 1128
    move/from16 v18, v1

    .end local v1    # "childWidthMeasureSpec":I
    .restart local v18    # "childWidthMeasureSpec":I
    iget-object v1, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1, v0, v2}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    move v12, v13

    move/from16 v1, v17

    goto :goto_9

    .line 1090
    .end local v10    # "rawCalculatedWidth":F
    .end local v12    # "newWidth":I
    .end local v17    # "childMeasuredWidth":I
    .end local v18    # "childWidthMeasureSpec":I
    .end local v22    # "flexDirection":I
    .local v1, "childMeasuredWidth":I
    .local v5, "flexDirection":I
    :cond_12
    move/from16 v6, p2

    move/from16 v17, v1

    move/from16 v22, v5

    .line 1130
    .end local v1    # "childMeasuredWidth":I
    .end local v5    # "flexDirection":I
    .restart local v17    # "childMeasuredWidth":I
    .restart local v22    # "flexDirection":I
    move v12, v13

    move/from16 v1, v17

    .end local v13    # "needsReexpand":Z
    .end local v17    # "childMeasuredWidth":I
    .restart local v1    # "childMeasuredWidth":I
    .local v12, "needsReexpand":Z
    :goto_9
    nop

    .line 1131
    invoke-interface {v3}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v5

    add-int/2addr v5, v9

    invoke-interface {v3}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v10

    add-int/2addr v5, v10

    iget-object v10, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 1132
    invoke-interface {v10, v2}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v10

    add-int/2addr v5, v10

    .line 1130
    move v10, v15

    .end local v15    # "largestCrossSize":I
    .local v10, "largestCrossSize":I
    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1133
    .end local v10    # "largestCrossSize":I
    .local v5, "largestCrossSize":I
    iget v10, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    invoke-interface {v3}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v13

    add-int/2addr v13, v1

    .line 1134
    invoke-interface {v3}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v15

    add-int/2addr v13, v15

    add-int/2addr v10, v13

    iput v10, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 1135
    .end local v1    # "childMeasuredWidth":I
    .end local v9    # "childMeasuredHeight":I
    nop

    .line 1200
    :goto_a
    iget v1, v8, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v8, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    move v13, v5

    goto :goto_c

    .line 1068
    .end local v3    # "flexItem":Lcom/google/android/flexbox/FlexItem;
    .end local v5    # "largestCrossSize":I
    .end local v19    # "sizeBeforeExpand":I
    .end local v22    # "flexDirection":I
    .local v10, "sizeBeforeExpand":I
    .local v13, "largestCrossSize":I
    :cond_13
    move/from16 v6, p2

    move/from16 v19, v10

    move v10, v13

    move v13, v12

    .line 1065
    .end local v0    # "index":I
    .end local v2    # "child":Landroid/view/View;
    .end local v12    # "needsReexpand":Z
    .local v10, "largestCrossSize":I
    .local v13, "needsReexpand":Z
    .restart local v19    # "sizeBeforeExpand":I
    :goto_b
    move v12, v13

    move v13, v10

    .end local v10    # "largestCrossSize":I
    .restart local v12    # "needsReexpand":Z
    .local v13, "largestCrossSize":I
    :goto_c
    add-int/lit8 v4, v4, 0x1

    move/from16 v9, p4

    move/from16 v10, v19

    const/4 v1, 0x0

    goto/16 :goto_0

    .end local v19    # "sizeBeforeExpand":I
    .local v10, "sizeBeforeExpand":I
    :cond_14
    move/from16 v6, p2

    move/from16 v19, v10

    move v10, v13

    move v13, v12

    .line 1203
    .end local v4    # "i":I
    .end local v12    # "needsReexpand":Z
    .local v10, "largestCrossSize":I
    .local v13, "needsReexpand":Z
    .restart local v19    # "sizeBeforeExpand":I
    if-eqz v13, :cond_15

    iget v0, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    move/from16 v9, v19

    .end local v19    # "sizeBeforeExpand":I
    .local v9, "sizeBeforeExpand":I
    if-eq v9, v0, :cond_16

    .line 1206
    const/4 v12, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/google/android/flexbox/FlexboxHelper;->expandFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V

    goto :goto_d

    .line 1203
    .end local v9    # "sizeBeforeExpand":I
    .restart local v19    # "sizeBeforeExpand":I
    :cond_15
    move/from16 v9, v19

    .line 1209
    .end local v19    # "sizeBeforeExpand":I
    .restart local v9    # "sizeBeforeExpand":I
    :cond_16
    :goto_d
    return-void

    .line 1044
    .end local v9    # "sizeBeforeExpand":I
    .end local v10    # "largestCrossSize":I
    .end local v11    # "unitSpace":F
    .end local v13    # "needsReexpand":Z
    .end local v14    # "accumulatedRoundError":F
    :cond_17
    :goto_e
    return-void
.end method

.method private getChildHeightMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I
    .locals 4
    .param p1, "heightMeasureSpec"    # I
    .param p2, "flexItem"    # Lcom/google/android/flexbox/FlexItem;
    .param p3, "padding"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "heightMeasureSpec",
            "flexItem",
            "padding"
        }
    .end annotation

    .line 1410
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 1411
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v2}, Lcom/google/android/flexbox/FlexContainer;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 1412
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    .line 1413
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getHeight()I

    move-result v2

    .line 1410
    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/flexbox/FlexContainer;->getChildHeightMeasureSpec(III)I

    move-result v0

    .line 1414
    .local v0, "childHeightMeasureSpec":I
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1415
    .local v1, "childHeight":I
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 1416
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v2

    .line 1417
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1416
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    .line 1418
    :cond_0
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1419
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v2

    .line 1420
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1419
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1422
    :cond_1
    :goto_0
    return v0
.end method

.method private getChildWidthMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "flexItem"    # Lcom/google/android/flexbox/FlexItem;
    .param p3, "padding"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "flexItem",
            "padding"
        }
    .end annotation

    .line 1393
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 1394
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v2}, Lcom/google/android/flexbox/FlexContainer;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    .line 1395
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    .line 1396
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getWidth()I

    move-result v2

    .line 1393
    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/flexbox/FlexContainer;->getChildWidthMeasureSpec(III)I

    move-result v0

    .line 1397
    .local v0, "childWidthMeasureSpec":I
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1398
    .local v1, "childWidth":I
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 1399
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v2

    .line 1400
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1399
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    .line 1401
    :cond_0
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1402
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v2

    .line 1403
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1402
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1405
    :cond_1
    :goto_0
    return v0
.end method

.method private getFlexItemMarginEndCross(Lcom/google/android/flexbox/FlexItem;Z)I
    .locals 1
    .param p1, "flexItem"    # Lcom/google/android/flexbox/FlexItem;
    .param p2, "isMainHorizontal"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "flexItem",
            "isMainHorizontal"
        }
    .end annotation

    .line 843
    if-eqz p2, :cond_0

    .line 844
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v0

    return v0

    .line 847
    :cond_0
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v0

    return v0
.end method

.method private getFlexItemMarginEndMain(Lcom/google/android/flexbox/FlexItem;Z)I
    .locals 1
    .param p1, "flexItem"    # Lcom/google/android/flexbox/FlexItem;
    .param p2, "isMainHorizontal"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "flexItem",
            "isMainHorizontal"
        }
    .end annotation

    .line 805
    if-eqz p2, :cond_0

    .line 806
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v0

    return v0

    .line 809
    :cond_0
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v0

    return v0
.end method

.method private getFlexItemMarginStartCross(Lcom/google/android/flexbox/FlexItem;Z)I
    .locals 1
    .param p1, "flexItem"    # Lcom/google/android/flexbox/FlexItem;
    .param p2, "isMainHorizontal"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "flexItem",
            "isMainHorizontal"
        }
    .end annotation

    .line 824
    if-eqz p2, :cond_0

    .line 825
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v0

    return v0

    .line 828
    :cond_0
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v0

    return v0
.end method

.method private getFlexItemMarginStartMain(Lcom/google/android/flexbox/FlexItem;Z)I
    .locals 1
    .param p1, "flexItem"    # Lcom/google/android/flexbox/FlexItem;
    .param p2, "isMainHorizontal"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "flexItem",
            "isMainHorizontal"
        }
    .end annotation

    .line 786
    if-eqz p2, :cond_0

    .line 787
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v0

    return v0

    .line 790
    :cond_0
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v0

    return v0
.end method

.method private getFlexItemSizeCross(Lcom/google/android/flexbox/FlexItem;Z)I
    .locals 1
    .param p1, "flexItem"    # Lcom/google/android/flexbox/FlexItem;
    .param p2, "isMainHorizontal"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "flexItem",
            "isMainHorizontal"
        }
    .end annotation

    .line 766
    if-eqz p2, :cond_0

    .line 767
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getHeight()I

    move-result v0

    return v0

    .line 770
    :cond_0
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getWidth()I

    move-result v0

    return v0
.end method

.method private getFlexItemSizeMain(Lcom/google/android/flexbox/FlexItem;Z)I
    .locals 1
    .param p1, "flexItem"    # Lcom/google/android/flexbox/FlexItem;
    .param p2, "isMainHorizontal"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "flexItem",
            "isMainHorizontal"
        }
    .end annotation

    .line 751
    if-eqz p2, :cond_0

    .line 752
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getWidth()I

    move-result v0

    return v0

    .line 755
    :cond_0
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getHeight()I

    move-result v0

    return v0
.end method

.method private getPaddingEndCross(Z)I
    .locals 1
    .param p1, "isMainHorizontal"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isMainHorizontal"
        }
    .end annotation

    .line 706
    if-eqz p1, :cond_0

    .line 707
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingBottom()I

    move-result v0

    return v0

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingEnd()I

    move-result v0

    return v0
.end method

.method private getPaddingEndMain(Z)I
    .locals 1
    .param p1, "isMainHorizontal"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isMainHorizontal"
        }
    .end annotation

    .line 678
    if-eqz p1, :cond_0

    .line 679
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingEnd()I

    move-result v0

    return v0

    .line 682
    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingBottom()I

    move-result v0

    return v0
.end method

.method private getPaddingStartCross(Z)I
    .locals 1
    .param p1, "isMainHorizontal"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isMainHorizontal"
        }
    .end annotation

    .line 692
    if-eqz p1, :cond_0

    .line 693
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingTop()I

    move-result v0

    return v0

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingStart()I

    move-result v0

    return v0
.end method

.method private getPaddingStartMain(Z)I
    .locals 1
    .param p1, "isMainHorizontal"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isMainHorizontal"
        }
    .end annotation

    .line 664
    if-eqz p1, :cond_0

    .line 665
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingStart()I

    move-result v0

    return v0

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method private getViewMeasuredSizeCross(Landroid/view/View;Z)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isMainHorizontal"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "isMainHorizontal"
        }
    .end annotation

    .line 736
    if-eqz p2, :cond_0

    .line 737
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0

    .line 740
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method private getViewMeasuredSizeMain(Landroid/view/View;Z)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isMainHorizontal"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "isMainHorizontal"
        }
    .end annotation

    .line 721
    if-eqz p2, :cond_0

    .line 722
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0

    .line 725
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method private isLastFlexItem(IILcom/google/android/flexbox/FlexLine;)Z
    .locals 1
    .param p1, "childIndex"    # I
    .param p2, "childCount"    # I
    .param p3, "flexLine"    # Lcom/google/android/flexbox/FlexLine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "childIndex",
            "childCount",
            "flexLine"
        }
    .end annotation

    .line 894
    add-int/lit8 v0, p2, -0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p3}, Lcom/google/android/flexbox/FlexLine;->getItemCountNotGone()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isWrapRequired(Landroid/view/View;IIIILcom/google/android/flexbox/FlexItem;III)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "mode"    # I
    .param p3, "maxSize"    # I
    .param p4, "currentLength"    # I
    .param p5, "childLength"    # I
    .param p6, "flexItem"    # Lcom/google/android/flexbox/FlexItem;
    .param p7, "index"    # I
    .param p8, "indexInFlexLine"    # I
    .param p9, "flexLinesSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "mode",
            "maxSize",
            "currentLength",
            "childLength",
            "flexItem",
            "index",
            "indexInFlexLine",
            "flexLinesSize"
        }
    .end annotation

    .line 869
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexWrap()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 870
    return v1

    .line 872
    :cond_0
    invoke-interface {p6}, Lcom/google/android/flexbox/FlexItem;->isWrapBefore()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 873
    return v2

    .line 875
    :cond_1
    if-nez p2, :cond_2

    .line 876
    return v1

    .line 878
    :cond_2
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getMaxLine()I

    move-result v0

    .line 881
    .local v0, "maxLine":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    add-int/lit8 v3, p9, 0x1

    if-gt v0, v3, :cond_3

    .line 882
    return v1

    .line 884
    :cond_3
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 885
    invoke-interface {v3, p1, p7, p8}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthMainAxis(Landroid/view/View;II)I

    move-result v3

    .line 886
    .local v3, "decorationLength":I
    if-lez v3, :cond_4

    .line 887
    add-int/2addr p5, v3

    .line 889
    :cond_4
    add-int v4, p4, p5

    if-ge p3, v4, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method

.method private shrinkFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V
    .locals 23
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .param p3, "flexLine"    # Lcom/google/android/flexbox/FlexLine;
    .param p4, "maxMainSize"    # I
    .param p5, "paddingAlongMainAxis"    # I
    .param p6, "calledRecursively"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec",
            "flexLine",
            "maxMainSize",
            "paddingAlongMainAxis",
            "calledRecursively"
        }
    .end annotation

    .line 1226
    move-object/from16 v7, p0

    move-object/from16 v8, p3

    move/from16 v9, p4

    iget v10, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 1227
    .local v10, "sizeBeforeShrink":I
    iget v0, v8, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_17

    iget v0, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-le v9, v0, :cond_0

    move v9, v10

    goto/16 :goto_e

    .line 1230
    :cond_0
    const/4 v0, 0x0

    .line 1231
    .local v0, "needsReshrink":Z
    iget v2, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int/2addr v2, v9

    int-to-float v2, v2

    iget v3, v8, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    div-float v11, v2, v3

    .line 1232
    .local v11, "unitShrink":F
    const/4 v2, 0x0

    .line 1233
    .local v2, "accumulatedRoundError":F
    iget v3, v8, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    add-int v3, p5, v3

    iput v3, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 1244
    const/4 v3, 0x0

    .line 1245
    .local v3, "largestCrossSize":I
    if-nez p6, :cond_1

    .line 1246
    const/high16 v4, -0x80000000

    iput v4, v8, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 1248
    :cond_1
    const/4 v4, 0x0

    move v12, v0

    move v13, v2

    move v14, v3

    .end local v0    # "needsReshrink":Z
    .end local v2    # "accumulatedRoundError":F
    .end local v3    # "largestCrossSize":I
    .local v4, "i":I
    .local v12, "needsReshrink":Z
    .local v13, "accumulatedRoundError":F
    .local v14, "largestCrossSize":I
    :goto_0
    iget v0, v8, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    if-ge v4, v0, :cond_14

    .line 1249
    iget v0, v8, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    add-int/2addr v0, v4

    .line 1250
    .local v0, "index":I
    iget-object v2, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v2, v0}, Lcom/google/android/flexbox/FlexContainer;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v2

    .line 1251
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_13

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-ne v3, v5, :cond_2

    .line 1252
    move/from16 v6, p2

    move/from16 v20, v10

    move v10, v14

    goto/16 :goto_b

    .line 1254
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/google/android/flexbox/FlexItem;

    .line 1255
    .local v3, "flexItem":Lcom/google/android/flexbox/FlexItem;
    iget-object v5, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v5}, Lcom/google/android/flexbox/FlexContainer;->getFlexDirection()I

    move-result v5

    .line 1256
    .local v5, "flexDirection":I
    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    const/high16 v19, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    if-eqz v5, :cond_b

    if-ne v5, v6, :cond_3

    move/from16 v20, v10

    goto/16 :goto_5

    .line 1322
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    .line 1323
    .local v20, "childMeasuredHeight":I
    iget-object v15, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v15, :cond_4

    .line 1329
    move-object/from16 v21, v2

    .end local v2    # "child":Landroid/view/View;
    .local v21, "child":Landroid/view/View;
    aget-wide v1, v15, v0

    .line 1330
    invoke-virtual {v7, v1, v2}, Lcom/google/android/flexbox/FlexboxHelper;->extractHigherInt(J)I

    move-result v20

    move/from16 v1, v20

    goto :goto_1

    .line 1323
    .end local v21    # "child":Landroid/view/View;
    .restart local v2    # "child":Landroid/view/View;
    :cond_4
    move-object/from16 v21, v2

    .end local v2    # "child":Landroid/view/View;
    .restart local v21    # "child":Landroid/view/View;
    move/from16 v1, v20

    .line 1332
    .end local v20    # "childMeasuredHeight":I
    .local v1, "childMeasuredHeight":I
    :goto_1
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1333
    .local v2, "childMeasuredWidth":I
    iget-object v15, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v15, :cond_5

    .line 1335
    move/from16 v20, v10

    .end local v10    # "sizeBeforeShrink":I
    .local v20, "sizeBeforeShrink":I
    aget-wide v9, v15, v0

    .line 1336
    invoke-virtual {v7, v9, v10}, Lcom/google/android/flexbox/FlexboxHelper;->extractLowerInt(J)I

    move-result v2

    goto :goto_2

    .line 1333
    .end local v20    # "sizeBeforeShrink":I
    .restart local v10    # "sizeBeforeShrink":I
    :cond_5
    move/from16 v20, v10

    .line 1338
    .end local v10    # "sizeBeforeShrink":I
    .restart local v20    # "sizeBeforeShrink":I
    :goto_2
    iget-object v9, v7, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aget-boolean v9, v9, v0

    if-nez v9, :cond_a

    invoke-interface {v3}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_a

    .line 1339
    int-to-float v9, v1

    .line 1340
    invoke-interface {v3}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v10

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    .line 1341
    .local v9, "rawCalculatedHeight":F
    iget v10, v8, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    sub-int/2addr v10, v6

    if-ne v4, v10, :cond_6

    .line 1342
    add-float/2addr v9, v13

    .line 1343
    const/4 v13, 0x0

    .line 1345
    :cond_6
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 1346
    .local v10, "newHeight":I
    invoke-interface {v3}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v15

    if-ge v10, v15, :cond_7

    .line 1348
    const/4 v12, 0x1

    .line 1349
    invoke-interface {v3}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v10

    .line 1350
    iget-object v15, v7, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aput-boolean v6, v15, v0

    .line 1351
    iget v6, v8, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    invoke-interface {v3}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v15

    sub-float/2addr v6, v15

    iput v6, v8, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    move v15, v1

    move/from16 v22, v2

    goto :goto_3

    .line 1353
    :cond_7
    int-to-float v6, v10

    sub-float v6, v9, v6

    add-float/2addr v13, v6

    .line 1354
    move v15, v1

    move/from16 v22, v2

    .end local v1    # "childMeasuredHeight":I
    .end local v2    # "childMeasuredWidth":I
    .local v15, "childMeasuredHeight":I
    .local v22, "childMeasuredWidth":I
    float-to-double v1, v13

    cmpl-double v1, v1, v17

    if-lez v1, :cond_8

    .line 1355
    add-int/lit8 v10, v10, 0x1

    .line 1356
    sub-float v13, v13, v19

    goto :goto_3

    .line 1357
    :cond_8
    float-to-double v1, v13

    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    cmpg-double v1, v1, v17

    if-gez v1, :cond_9

    .line 1358
    add-int/lit8 v10, v10, -0x1

    .line 1359
    add-float v13, v13, v19

    .line 1362
    :cond_9
    :goto_3
    iget v1, v8, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    move/from16 v2, p1

    invoke-direct {v7, v2, v3, v1}, Lcom/google/android/flexbox/FlexboxHelper;->getChildWidthMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I

    move-result v1

    .line 1364
    .local v1, "childWidthMeasureSpec":I
    nop

    .line 1365
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v10, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1366
    .local v6, "childHeightMeasureSpec":I
    move-object/from16 v2, v21

    .end local v21    # "child":Landroid/view/View;
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2, v1, v6}, Landroid/view/View;->measure(II)V

    .line 1368
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    .line 1369
    .end local v22    # "childMeasuredWidth":I
    .local v17, "childMeasuredWidth":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 1370
    invoke-direct {v7, v0, v1, v6, v2}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 1372
    move/from16 v18, v1

    .end local v1    # "childWidthMeasureSpec":I
    .local v18, "childWidthMeasureSpec":I
    iget-object v1, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1, v0, v2}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    move v1, v15

    move/from16 v22, v17

    goto :goto_4

    .line 1338
    .end local v6    # "childHeightMeasureSpec":I
    .end local v9    # "rawCalculatedHeight":F
    .end local v10    # "newHeight":I
    .end local v15    # "childMeasuredHeight":I
    .end local v17    # "childMeasuredWidth":I
    .end local v18    # "childWidthMeasureSpec":I
    .local v1, "childMeasuredHeight":I
    .local v2, "childMeasuredWidth":I
    .restart local v21    # "child":Landroid/view/View;
    :cond_a
    move v15, v1

    move/from16 v22, v2

    move-object/from16 v2, v21

    .line 1374
    .end local v1    # "childMeasuredHeight":I
    .end local v21    # "child":Landroid/view/View;
    .local v2, "child":Landroid/view/View;
    .restart local v15    # "childMeasuredHeight":I
    .restart local v22    # "childMeasuredWidth":I
    move v1, v15

    .end local v15    # "childMeasuredHeight":I
    .restart local v1    # "childMeasuredHeight":I
    :goto_4
    nop

    .line 1375
    invoke-interface {v3}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v6

    add-int v6, v22, v6

    invoke-interface {v3}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v9

    add-int/2addr v6, v9

    iget-object v9, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 1376
    invoke-interface {v9, v2}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v9

    add-int/2addr v6, v9

    .line 1374
    invoke-static {v14, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1377
    .end local v14    # "largestCrossSize":I
    .local v6, "largestCrossSize":I
    iget v9, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    invoke-interface {v3}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v10

    add-int/2addr v10, v1

    .line 1378
    invoke-interface {v3}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v14

    add-int/2addr v10, v14

    add-int/2addr v9, v10

    iput v9, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    move/from16 v21, v5

    move v5, v6

    move/from16 v6, p2

    goto/16 :goto_a

    .line 1256
    .end local v1    # "childMeasuredHeight":I
    .end local v6    # "largestCrossSize":I
    .end local v20    # "sizeBeforeShrink":I
    .end local v22    # "childMeasuredWidth":I
    .local v10, "sizeBeforeShrink":I
    .restart local v14    # "largestCrossSize":I
    :cond_b
    move/from16 v20, v10

    .line 1259
    .end local v10    # "sizeBeforeShrink":I
    .restart local v20    # "sizeBeforeShrink":I
    :goto_5
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 1260
    .local v1, "childMeasuredWidth":I
    iget-object v9, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v9, :cond_c

    .line 1266
    move v10, v14

    .end local v14    # "largestCrossSize":I
    .local v10, "largestCrossSize":I
    aget-wide v14, v9, v0

    invoke-virtual {v7, v14, v15}, Lcom/google/android/flexbox/FlexboxHelper;->extractLowerInt(J)I

    move-result v1

    goto :goto_6

    .line 1260
    .end local v10    # "largestCrossSize":I
    .restart local v14    # "largestCrossSize":I
    :cond_c
    move v10, v14

    .line 1268
    .end local v14    # "largestCrossSize":I
    .restart local v10    # "largestCrossSize":I
    :goto_6
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 1269
    .local v9, "childMeasuredHeight":I
    iget-object v14, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v14, :cond_d

    .line 1271
    move/from16 v21, v9

    move v15, v10

    .end local v9    # "childMeasuredHeight":I
    .end local v10    # "largestCrossSize":I
    .local v15, "largestCrossSize":I
    .local v21, "childMeasuredHeight":I
    aget-wide v9, v14, v0

    invoke-virtual {v7, v9, v10}, Lcom/google/android/flexbox/FlexboxHelper;->extractHigherInt(J)I

    move-result v9

    .end local v21    # "childMeasuredHeight":I
    .restart local v9    # "childMeasuredHeight":I
    goto :goto_7

    .line 1269
    .end local v15    # "largestCrossSize":I
    .restart local v10    # "largestCrossSize":I
    :cond_d
    move/from16 v21, v9

    move v15, v10

    .line 1273
    .end local v10    # "largestCrossSize":I
    .restart local v15    # "largestCrossSize":I
    :goto_7
    iget-object v10, v7, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aget-boolean v10, v10, v0

    if-nez v10, :cond_12

    invoke-interface {v3}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v10

    const/4 v14, 0x0

    cmpl-float v10, v10, v14

    if-lez v10, :cond_12

    .line 1274
    int-to-float v10, v1

    .line 1275
    invoke-interface {v3}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v16

    mul-float v16, v16, v11

    sub-float v10, v10, v16

    .line 1276
    .local v10, "rawCalculatedWidth":F
    iget v14, v8, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    sub-int/2addr v14, v6

    if-ne v4, v14, :cond_e

    .line 1277
    add-float/2addr v10, v13

    .line 1278
    const/4 v13, 0x0

    .line 1280
    :cond_e
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 1281
    .local v14, "newWidth":I
    invoke-interface {v3}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v6

    if-ge v14, v6, :cond_f

    .line 1288
    const/4 v6, 0x1

    .line 1289
    .end local v12    # "needsReshrink":Z
    .local v6, "needsReshrink":Z
    invoke-interface {v3}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v14

    .line 1290
    iget-object v12, v7, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    const/16 v17, 0x1

    aput-boolean v17, v12, v0

    .line 1291
    iget v12, v8, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    invoke-interface {v3}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v17

    sub-float v12, v12, v17

    iput v12, v8, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    move/from16 v21, v5

    move v12, v6

    goto :goto_8

    .line 1293
    .end local v6    # "needsReshrink":Z
    .restart local v12    # "needsReshrink":Z
    :cond_f
    int-to-float v6, v14

    sub-float v6, v10, v6

    add-float/2addr v13, v6

    .line 1294
    move/from16 v21, v5

    .end local v5    # "flexDirection":I
    .local v21, "flexDirection":I
    float-to-double v5, v13

    cmpl-double v5, v5, v17

    if-lez v5, :cond_10

    .line 1295
    add-int/lit8 v14, v14, 0x1

    .line 1296
    sub-float v13, v13, v19

    goto :goto_8

    .line 1297
    :cond_10
    float-to-double v5, v13

    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    cmpg-double v5, v5, v17

    if-gez v5, :cond_11

    .line 1298
    add-int/lit8 v14, v14, -0x1

    .line 1299
    add-float v13, v13, v19

    .line 1302
    :cond_11
    :goto_8
    iget v5, v8, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    move/from16 v6, p2

    invoke-direct {v7, v6, v3, v5}, Lcom/google/android/flexbox/FlexboxHelper;->getChildHeightMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I

    move-result v5

    .line 1304
    .local v5, "childHeightMeasureSpec":I
    nop

    .line 1305
    move/from16 v17, v1

    const/high16 v1, 0x40000000    # 2.0f

    .end local v1    # "childMeasuredWidth":I
    .restart local v17    # "childMeasuredWidth":I
    invoke-static {v14, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1306
    .local v1, "childWidthMeasureSpec":I
    invoke-virtual {v2, v1, v5}, Landroid/view/View;->measure(II)V

    .line 1308
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    .line 1309
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 1310
    invoke-direct {v7, v0, v1, v5, v2}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 1312
    move/from16 v18, v1

    .end local v1    # "childWidthMeasureSpec":I
    .restart local v18    # "childWidthMeasureSpec":I
    iget-object v1, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1, v0, v2}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    move/from16 v1, v17

    goto :goto_9

    .line 1273
    .end local v10    # "rawCalculatedWidth":F
    .end local v14    # "newWidth":I
    .end local v17    # "childMeasuredWidth":I
    .end local v18    # "childWidthMeasureSpec":I
    .end local v21    # "flexDirection":I
    .local v1, "childMeasuredWidth":I
    .local v5, "flexDirection":I
    :cond_12
    move/from16 v6, p2

    move/from16 v17, v1

    move/from16 v21, v5

    .line 1314
    .end local v1    # "childMeasuredWidth":I
    .end local v5    # "flexDirection":I
    .restart local v17    # "childMeasuredWidth":I
    .restart local v21    # "flexDirection":I
    move/from16 v1, v17

    .end local v17    # "childMeasuredWidth":I
    .restart local v1    # "childMeasuredWidth":I
    :goto_9
    nop

    .line 1315
    invoke-interface {v3}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v5

    add-int/2addr v5, v9

    invoke-interface {v3}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v10

    add-int/2addr v5, v10

    iget-object v10, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 1316
    invoke-interface {v10, v2}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v10

    add-int/2addr v5, v10

    .line 1314
    move v10, v15

    .end local v15    # "largestCrossSize":I
    .local v10, "largestCrossSize":I
    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1317
    .end local v10    # "largestCrossSize":I
    .local v5, "largestCrossSize":I
    iget v10, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    invoke-interface {v3}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v14

    add-int/2addr v14, v1

    .line 1318
    invoke-interface {v3}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v10, v14

    iput v10, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 1319
    .end local v1    # "childMeasuredWidth":I
    .end local v9    # "childMeasuredHeight":I
    nop

    .line 1380
    :goto_a
    iget v1, v8, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v8, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    move v14, v5

    goto :goto_c

    .line 1251
    .end local v3    # "flexItem":Lcom/google/android/flexbox/FlexItem;
    .end local v5    # "largestCrossSize":I
    .end local v20    # "sizeBeforeShrink":I
    .end local v21    # "flexDirection":I
    .local v10, "sizeBeforeShrink":I
    .local v14, "largestCrossSize":I
    :cond_13
    move/from16 v6, p2

    move/from16 v20, v10

    move v10, v14

    .line 1248
    .end local v0    # "index":I
    .end local v2    # "child":Landroid/view/View;
    .end local v14    # "largestCrossSize":I
    .local v10, "largestCrossSize":I
    .restart local v20    # "sizeBeforeShrink":I
    :goto_b
    move v14, v10

    .end local v10    # "largestCrossSize":I
    .restart local v14    # "largestCrossSize":I
    :goto_c
    add-int/lit8 v4, v4, 0x1

    move/from16 v9, p4

    move/from16 v10, v20

    const/4 v1, 0x0

    goto/16 :goto_0

    .end local v20    # "sizeBeforeShrink":I
    .local v10, "sizeBeforeShrink":I
    :cond_14
    move/from16 v6, p2

    move/from16 v20, v10

    move v10, v14

    .line 1383
    .end local v4    # "i":I
    .end local v14    # "largestCrossSize":I
    .local v10, "largestCrossSize":I
    .restart local v20    # "sizeBeforeShrink":I
    if-eqz v12, :cond_15

    iget v0, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    move/from16 v9, v20

    .end local v20    # "sizeBeforeShrink":I
    .local v9, "sizeBeforeShrink":I
    if-eq v9, v0, :cond_16

    .line 1386
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/google/android/flexbox/FlexboxHelper;->shrinkFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V

    goto :goto_d

    .line 1383
    .end local v9    # "sizeBeforeShrink":I
    .restart local v20    # "sizeBeforeShrink":I
    :cond_15
    move/from16 v9, v20

    .line 1389
    .end local v20    # "sizeBeforeShrink":I
    .restart local v9    # "sizeBeforeShrink":I
    :cond_16
    :goto_d
    return-void

    .line 1227
    .end local v9    # "sizeBeforeShrink":I
    .end local v11    # "unitShrink":F
    .end local v12    # "needsReshrink":Z
    .end local v13    # "accumulatedRoundError":F
    .local v10, "sizeBeforeShrink":I
    :cond_17
    move v9, v10

    .line 1228
    .end local v10    # "sizeBeforeShrink":I
    .restart local v9    # "sizeBeforeShrink":I
    :goto_e
    return-void
.end method

.method private sortOrdersIntoReorderedIndices(ILjava/util/List;Landroid/util/SparseIntArray;)[I
    .locals 6
    .param p1, "childCount"    # I
    .param p3, "orderCache"    # Landroid/util/SparseIntArray;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "childCount",
            "orders",
            "orderCache"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexboxHelper$Order;",
            ">;",
            "Landroid/util/SparseIntArray;",
            ")[I"
        }
    .end annotation

    .line 202
    .local p2, "orders":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexboxHelper$Order;>;"
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 203
    invoke-virtual {p3}, Landroid/util/SparseIntArray;->clear()V

    .line 204
    new-array v0, p1, [I

    .line 205
    .local v0, "reorderedIndices":[I
    const/4 v1, 0x0

    .line 206
    .local v1, "i":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/flexbox/FlexboxHelper$Order;

    .line 207
    .local v3, "order":Lcom/google/android/flexbox/FlexboxHelper$Order;
    iget v4, v3, Lcom/google/android/flexbox/FlexboxHelper$Order;->index:I

    aput v4, v0, v1

    .line 208
    iget v4, v3, Lcom/google/android/flexbox/FlexboxHelper$Order;->index:I

    iget v5, v3, Lcom/google/android/flexbox/FlexboxHelper$Order;->order:I

    invoke-virtual {p3, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 209
    nop

    .end local v3    # "order":Lcom/google/android/flexbox/FlexboxHelper$Order;
    add-int/lit8 v1, v1, 0x1

    .line 210
    goto :goto_0

    .line 211
    :cond_0
    return-object v0
.end method

.method private stretchViewHorizontally(Landroid/view/View;II)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "crossSize"    # I
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "crossSize",
            "index"
        }
    .end annotation

    .line 1724
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    .line 1725
    .local v0, "flexItem":Lcom/google/android/flexbox/FlexItem;
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v1

    sub-int v1, p2, v1

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 1726
    invoke-interface {v2, p1}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 1727
    .local v1, "newWidth":I
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1728
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1731
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v2, :cond_0

    .line 1737
    aget-wide v3, v2, p3

    invoke-virtual {p0, v3, v4}, Lcom/google/android/flexbox/FlexboxHelper;->extractHigherInt(J)I

    move-result v2

    .local v2, "measuredHeight":I
    goto :goto_0

    .line 1739
    .end local v2    # "measuredHeight":I
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 1741
    .restart local v2    # "measuredHeight":I
    :goto_0
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1743
    .local v4, "childHeightSpec":I
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1744
    .local v3, "childWidthSpec":I
    invoke-virtual {p1, v3, v4}, Landroid/view/View;->measure(II)V

    .line 1746
    invoke-direct {p0, p3, v3, v4, p1}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 1747
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v5, p3, p1}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    .line 1748
    return-void
.end method

.method private stretchViewVertically(Landroid/view/View;II)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "crossSize"    # I
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "crossSize",
            "index"
        }
    .end annotation

    .line 1689
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    .line 1690
    .local v0, "flexItem":Lcom/google/android/flexbox/FlexItem;
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v1

    sub-int v1, p2, v1

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 1691
    invoke-interface {v2, p1}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 1692
    .local v1, "newHeight":I
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1693
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1696
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v2, :cond_0

    .line 1702
    aget-wide v3, v2, p3

    invoke-virtual {p0, v3, v4}, Lcom/google/android/flexbox/FlexboxHelper;->extractLowerInt(J)I

    move-result v2

    .local v2, "measuredWidth":I
    goto :goto_0

    .line 1704
    .end local v2    # "measuredWidth":I
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1706
    .restart local v2    # "measuredWidth":I
    :goto_0
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1709
    .local v4, "childWidthSpec":I
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1710
    .local v3, "childHeightSpec":I
    invoke-virtual {p1, v4, v3}, Landroid/view/View;->measure(II)V

    .line 1712
    invoke-direct {p0, p3, v4, v3, p1}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 1713
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v5, p3, p1}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    .line 1714
    return-void
.end method

.method private updateMeasureCache(IIILandroid/view/View;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I
    .param p4, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "widthMeasureSpec",
            "heightMeasureSpec",
            "view"
        }
    .end annotation

    .line 1966
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    if-eqz v0, :cond_0

    .line 1967
    invoke-virtual {p0, p2, p3}, Lcom/google/android/flexbox/FlexboxHelper;->makeCombinedLong(II)J

    move-result-wide v1

    aput-wide v1, v0, p1

    .line 1971
    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v0, :cond_1

    .line 1972
    nop

    .line 1973
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 1974
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 1972
    invoke-virtual {p0, v1, v2}, Lcom/google/android/flexbox/FlexboxHelper;->makeCombinedLong(II)J

    move-result-wide v1

    aput-wide v1, v0, p1

    .line 1976
    :cond_1
    return-void
.end method


# virtual methods
.method calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V
    .locals 38
    .param p1, "result"    # Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;
    .param p2, "mainMeasureSpec"    # I
    .param p3, "crossMeasureSpec"    # I
    .param p4, "needsCalcAmount"    # I
    .param p5, "fromIndex"    # I
    .param p6, "toIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "result",
            "mainMeasureSpec",
            "crossMeasureSpec",
            "needsCalcAmount",
            "fromIndex",
            "toIndex",
            "existingLines"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;",
            "IIIII",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;)V"
        }
    .end annotation

    .line 392
    .local p7, "existingLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p6

    iget-object v0, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->isMainAxisDirectionHorizontal()Z

    move-result v15

    .line 394
    .local v15, "isMainHorizontal":Z
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 395
    .local v9, "mainMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 397
    .local v8, "mainSize":I
    const/4 v0, 0x0

    .line 400
    .local v0, "childState":I
    if-nez p7, :cond_0

    .line 401
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v1

    .local v1, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    goto :goto_0

    .line 403
    .end local v1    # "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    :cond_0
    move-object/from16 v1, p7

    move-object v7, v1

    .line 406
    .local v7, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    :goto_0
    iput-object v7, v11, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->mFlexLines:Ljava/util/List;

    .line 408
    const/4 v6, -0x1

    if-ne v14, v6, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 410
    .local v1, "reachedToIndex":Z
    :goto_1
    invoke-direct {v10, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getPaddingStartMain(Z)I

    move-result v16

    .line 411
    .local v16, "mainPaddingStart":I
    invoke-direct {v10, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getPaddingEndMain(Z)I

    move-result v17

    .line 412
    .local v17, "mainPaddingEnd":I
    invoke-direct {v10, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getPaddingStartCross(Z)I

    move-result v18

    .line 413
    .local v18, "crossPaddingStart":I
    invoke-direct {v10, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getPaddingEndCross(Z)I

    move-result v19

    .line 415
    .local v19, "crossPaddingEnd":I
    const/high16 v2, -0x80000000

    .line 418
    .local v2, "largestSizeInCross":I
    const/4 v3, 0x0

    .line 421
    .local v3, "sumCrossSize":I
    const/16 v20, 0x0

    .line 423
    .local v20, "indexInFlexLine":I
    new-instance v21, Lcom/google/android/flexbox/FlexLine;

    invoke-direct/range {v21 .. v21}, Lcom/google/android/flexbox/FlexLine;-><init>()V

    move-object/from16 v22, v21

    .line 424
    .local v22, "flexLine":Lcom/google/android/flexbox/FlexLine;
    move/from16 v5, p5

    move-object/from16 v6, v22

    .end local v22    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    .local v6, "flexLine":Lcom/google/android/flexbox/FlexLine;
    iput v5, v6, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    .line 425
    add-int v4, v16, v17

    iput v4, v6, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 427
    iget-object v4, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v4

    .line 428
    .local v4, "childCount":I
    move/from16 v24, p5

    move/from16 v25, v20

    move/from16 v20, v1

    move/from16 v36, v24

    move/from16 v24, v2

    move/from16 v2, v36

    move-object/from16 v37, v6

    move v6, v3

    move-object/from16 v3, v37

    .end local v1    # "reachedToIndex":Z
    .local v2, "i":I
    .local v3, "flexLine":Lcom/google/android/flexbox/FlexLine;
    .local v6, "sumCrossSize":I
    .local v20, "reachedToIndex":Z
    .local v24, "largestSizeInCross":I
    .local v25, "indexInFlexLine":I
    :goto_2
    if-ge v2, v4, :cond_19

    .line 429
    iget-object v1, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1, v2}, Lcom/google/android/flexbox/FlexContainer;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v1

    .line 431
    .local v1, "child":Landroid/view/View;
    if-nez v1, :cond_2

    .line 432
    invoke-direct {v10, v2, v4, v3}, Lcom/google/android/flexbox/FlexboxHelper;->isLastFlexItem(IILcom/google/android/flexbox/FlexLine;)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 433
    invoke-direct {v10, v7, v3, v2, v6}, Lcom/google/android/flexbox/FlexboxHelper;->addFlexLine(Ljava/util/List;Lcom/google/android/flexbox/FlexLine;II)V

    goto :goto_3

    .line 436
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v11, 0x8

    if-ne v5, v11, :cond_4

    .line 437
    iget v5, v3, Lcom/google/android/flexbox/FlexLine;->mGoneItemCount:I

    const/4 v11, 0x1

    add-int/2addr v5, v11

    iput v5, v3, Lcom/google/android/flexbox/FlexLine;->mGoneItemCount:I

    .line 438
    iget v5, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    add-int/2addr v5, v11

    iput v5, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 439
    invoke-direct {v10, v2, v4, v3}, Lcom/google/android/flexbox/FlexboxHelper;->isLastFlexItem(IILcom/google/android/flexbox/FlexLine;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 440
    invoke-direct {v10, v7, v3, v2, v6}, Lcom/google/android/flexbox/FlexboxHelper;->addFlexLine(Ljava/util/List;Lcom/google/android/flexbox/FlexLine;II)V

    .line 428
    .end local v1    # "child":Landroid/view/View;
    :cond_3
    :goto_3
    move v1, v2

    move-object v12, v7

    move/from16 v27, v8

    move/from16 v28, v9

    move v8, v14

    const/4 v9, -0x1

    const/16 v21, 0x1

    const/16 v26, 0x0

    move/from16 v14, p4

    move v7, v4

    goto/16 :goto_e

    .line 443
    .restart local v1    # "child":Landroid/view/View;
    :cond_4
    instance-of v5, v1, Landroid/widget/CompoundButton;

    if-eqz v5, :cond_5

    .line 444
    move-object v5, v1

    check-cast v5, Landroid/widget/CompoundButton;

    invoke-direct {v10, v5}, Lcom/google/android/flexbox/FlexboxHelper;->evaluateMinimumSizeForCompoundButton(Landroid/widget/CompoundButton;)V

    .line 447
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Lcom/google/android/flexbox/FlexItem;

    .line 449
    .local v11, "flexItem":Lcom/google/android/flexbox/FlexItem;
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v5

    move/from16 v26, v4

    .end local v4    # "childCount":I
    .local v26, "childCount":I
    const/4 v4, 0x4

    if-ne v5, v4, :cond_6

    .line 450
    iget-object v4, v3, Lcom/google/android/flexbox/FlexLine;->mIndicesAlignSelfStretch:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    :cond_6
    invoke-direct {v10, v11, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemSizeMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v4

    .line 455
    .local v4, "childMainSize":I
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getFlexBasisPercent()F

    move-result v5

    const/high16 v27, -0x40800000    # -1.0f

    cmpl-float v5, v5, v27

    if-eqz v5, :cond_7

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v9, v5, :cond_7

    .line 457
    int-to-float v5, v8

    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getFlexBasisPercent()F

    move-result v27

    mul-float v5, v5, v27

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    move v5, v4

    goto :goto_4

    .line 465
    :cond_7
    move v5, v4

    .end local v4    # "childMainSize":I
    .local v5, "childMainSize":I
    :goto_4
    if-eqz v15, :cond_8

    .line 466
    iget-object v4, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    add-int v27, v16, v17

    .line 468
    const/4 v14, 0x1

    invoke-direct {v10, v11, v14}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v23

    add-int v27, v27, v23

    .line 469
    invoke-direct {v10, v11, v14}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v23

    add-int v14, v27, v23

    .line 466
    invoke-interface {v4, v12, v14, v5}, Lcom/google/android/flexbox/FlexContainer;->getChildWidthMeasureSpec(III)I

    move-result v4

    .line 471
    .local v4, "childMainMeasureSpec":I
    iget-object v14, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    add-int v23, v18, v19

    .line 473
    move/from16 v27, v8

    const/4 v8, 0x1

    .end local v8    # "mainSize":I
    .local v27, "mainSize":I
    invoke-direct {v10, v11, v8}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v28

    add-int v23, v23, v28

    .line 474
    invoke-direct {v10, v11, v8}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v28

    add-int v23, v23, v28

    move/from16 v28, v9

    .end local v9    # "mainMode":I
    .local v28, "mainMode":I
    add-int v9, v23, v6

    .line 476
    move-object/from16 v23, v7

    .end local v7    # "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    .local v23, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    invoke-direct {v10, v11, v8}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemSizeCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v7

    .line 471
    invoke-interface {v14, v13, v9, v7}, Lcom/google/android/flexbox/FlexContainer;->getChildHeightMeasureSpec(III)I

    move-result v7

    .line 477
    .local v7, "childCrossMeasureSpec":I
    invoke-virtual {v1, v4, v7}, Landroid/view/View;->measure(II)V

    .line 478
    invoke-direct {v10, v2, v4, v7, v1}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    move v14, v4

    move/from16 v22, v7

    const/4 v9, 0x0

    goto :goto_5

    .line 480
    .end local v4    # "childMainMeasureSpec":I
    .end local v23    # "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    .end local v27    # "mainSize":I
    .end local v28    # "mainMode":I
    .local v7, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    .restart local v8    # "mainSize":I
    .restart local v9    # "mainMode":I
    :cond_8
    move-object/from16 v23, v7

    move/from16 v27, v8

    move/from16 v28, v9

    const/4 v8, 0x1

    .end local v7    # "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    .end local v8    # "mainSize":I
    .end local v9    # "mainMode":I
    .restart local v23    # "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    .restart local v27    # "mainSize":I
    .restart local v28    # "mainMode":I
    iget-object v4, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    add-int v7, v18, v19

    .line 482
    const/4 v9, 0x0

    invoke-direct {v10, v11, v9}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v14

    add-int/2addr v7, v14

    .line 483
    invoke-direct {v10, v11, v9}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v14

    add-int/2addr v7, v14

    add-int/2addr v7, v6

    .line 484
    invoke-direct {v10, v11, v9}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemSizeCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v14

    .line 480
    invoke-interface {v4, v13, v7, v14}, Lcom/google/android/flexbox/FlexContainer;->getChildWidthMeasureSpec(III)I

    move-result v7

    .line 485
    .local v7, "childCrossMeasureSpec":I
    iget-object v4, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    add-int v14, v16, v17

    .line 487
    invoke-direct {v10, v11, v9}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v22

    add-int v14, v14, v22

    .line 488
    invoke-direct {v10, v11, v9}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v22

    add-int v14, v14, v22

    .line 485
    invoke-interface {v4, v12, v14, v5}, Lcom/google/android/flexbox/FlexContainer;->getChildHeightMeasureSpec(III)I

    move-result v4

    .line 490
    .restart local v4    # "childMainMeasureSpec":I
    invoke-virtual {v1, v7, v4}, Landroid/view/View;->measure(II)V

    .line 491
    invoke-direct {v10, v2, v7, v4, v1}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    move v14, v4

    move/from16 v22, v7

    .line 493
    .end local v4    # "childMainMeasureSpec":I
    .end local v7    # "childCrossMeasureSpec":I
    .local v14, "childMainMeasureSpec":I
    .local v22, "childCrossMeasureSpec":I
    :goto_5
    iget-object v4, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v4, v2, v1}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    .line 501
    invoke-direct {v10, v1, v2}, Lcom/google/android/flexbox/FlexboxHelper;->checkSizeConstraints(Landroid/view/View;I)V

    .line 503
    nop

    .line 504
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v4

    .line 503
    invoke-static {v0, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v29

    .line 506
    .end local v0    # "childState":I
    .local v29, "childState":I
    iget v4, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 507
    invoke-direct {v10, v1, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getViewMeasuredSizeMain(Landroid/view/View;Z)I

    move-result v0

    .line 508
    invoke-direct {v10, v11, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v7

    add-int/2addr v0, v7

    .line 509
    invoke-direct {v10, v11, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v7

    add-int/2addr v7, v0

    .line 510
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v30

    .line 506
    move-object/from16 v0, p0

    move-object/from16 v31, v1

    .end local v1    # "child":Landroid/view/View;
    .local v31, "child":Landroid/view/View;
    move/from16 v32, v2

    .end local v2    # "i":I
    .local v32, "i":I
    move/from16 v2, v28

    move-object/from16 v33, v3

    .end local v3    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    .local v33, "flexLine":Lcom/google/android/flexbox/FlexLine;
    move/from16 v3, v27

    move v12, v8

    move/from16 v8, v26

    .end local v26    # "childCount":I
    .local v8, "childCount":I
    move/from16 v34, v5

    move/from16 v26, v9

    .end local v5    # "childMainSize":I
    .local v34, "childMainSize":I
    move v5, v7

    move v9, v6

    const/4 v7, -0x1

    .end local v6    # "sumCrossSize":I
    .local v9, "sumCrossSize":I
    move-object v6, v11

    move-object/from16 v12, v23

    move/from16 v23, v14

    move v14, v7

    .end local v14    # "childMainMeasureSpec":I
    .local v12, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    .local v23, "childMainMeasureSpec":I
    move/from16 v7, v32

    move/from16 v35, v8

    .end local v8    # "childCount":I
    .local v35, "childCount":I
    move/from16 v8, v25

    move v14, v9

    .end local v9    # "sumCrossSize":I
    .local v14, "sumCrossSize":I
    move/from16 v9, v30

    invoke-direct/range {v0 .. v9}, Lcom/google/android/flexbox/FlexboxHelper;->isWrapRequired(Landroid/view/View;IIIILcom/google/android/flexbox/FlexItem;III)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 511
    invoke-virtual/range {v33 .. v33}, Lcom/google/android/flexbox/FlexLine;->getItemCountNotGone()I

    move-result v0

    if-lez v0, :cond_a

    .line 512
    move/from16 v1, v32

    .end local v32    # "i":I
    .local v1, "i":I
    if-lez v1, :cond_9

    add-int/lit8 v5, v1, -0x1

    goto :goto_6

    :cond_9
    move/from16 v5, v26

    :goto_6
    move-object/from16 v6, v33

    .end local v33    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    .local v6, "flexLine":Lcom/google/android/flexbox/FlexLine;
    invoke-direct {v10, v12, v6, v5, v14}, Lcom/google/android/flexbox/FlexboxHelper;->addFlexLine(Ljava/util/List;Lcom/google/android/flexbox/FlexLine;II)V

    .line 513
    iget v0, v6, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    add-int/2addr v0, v14

    move v14, v0

    .end local v14    # "sumCrossSize":I
    .local v0, "sumCrossSize":I
    goto :goto_7

    .line 511
    .end local v0    # "sumCrossSize":I
    .end local v1    # "i":I
    .end local v6    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    .restart local v14    # "sumCrossSize":I
    .restart local v32    # "i":I
    .restart local v33    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    :cond_a
    move/from16 v1, v32

    move-object/from16 v6, v33

    .line 516
    .end local v32    # "i":I
    .end local v33    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    .restart local v1    # "i":I
    .restart local v6    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    :goto_7
    if-eqz v15, :cond_c

    .line 517
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getHeight()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_b

    .line 525
    iget-object v0, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 527
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingTop()I

    move-result v2

    iget-object v3, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v3}, Lcom/google/android/flexbox/FlexContainer;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    .line 528
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v3

    add-int/2addr v2, v3

    .line 529
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v14

    .line 530
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getHeight()I

    move-result v3

    .line 525
    invoke-interface {v0, v13, v2, v3}, Lcom/google/android/flexbox/FlexContainer;->getChildHeightMeasureSpec(III)I

    move-result v0

    .line 531
    .end local v22    # "childCrossMeasureSpec":I
    .local v0, "childCrossMeasureSpec":I
    move/from16 v4, v23

    move-object/from16 v2, v31

    .end local v23    # "childMainMeasureSpec":I
    .end local v31    # "child":Landroid/view/View;
    .local v2, "child":Landroid/view/View;
    .restart local v4    # "childMainMeasureSpec":I
    invoke-virtual {v2, v4, v0}, Landroid/view/View;->measure(II)V

    .line 532
    invoke-direct {v10, v2, v1}, Lcom/google/android/flexbox/FlexboxHelper;->checkSizeConstraints(Landroid/view/View;I)V

    move/from16 v22, v0

    goto :goto_8

    .line 517
    .end local v0    # "childCrossMeasureSpec":I
    .end local v2    # "child":Landroid/view/View;
    .end local v4    # "childMainMeasureSpec":I
    .restart local v22    # "childCrossMeasureSpec":I
    .restart local v23    # "childMainMeasureSpec":I
    .restart local v31    # "child":Landroid/view/View;
    :cond_b
    move/from16 v4, v23

    move-object/from16 v2, v31

    .end local v23    # "childMainMeasureSpec":I
    .end local v31    # "child":Landroid/view/View;
    .restart local v2    # "child":Landroid/view/View;
    .restart local v4    # "childMainMeasureSpec":I
    goto :goto_8

    .line 535
    .end local v2    # "child":Landroid/view/View;
    .end local v4    # "childMainMeasureSpec":I
    .restart local v23    # "childMainMeasureSpec":I
    .restart local v31    # "child":Landroid/view/View;
    :cond_c
    move/from16 v4, v23

    move-object/from16 v2, v31

    .end local v23    # "childMainMeasureSpec":I
    .end local v31    # "child":Landroid/view/View;
    .restart local v2    # "child":Landroid/view/View;
    .restart local v4    # "childMainMeasureSpec":I
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getWidth()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_d

    .line 543
    iget-object v0, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 545
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingLeft()I

    move-result v3

    iget-object v5, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v5}, Lcom/google/android/flexbox/FlexContainer;->getPaddingRight()I

    move-result v5

    add-int/2addr v3, v5

    .line 546
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v5

    add-int/2addr v3, v5

    .line 547
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v3, v14

    .line 548
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getWidth()I

    move-result v5

    .line 543
    invoke-interface {v0, v13, v3, v5}, Lcom/google/android/flexbox/FlexContainer;->getChildWidthMeasureSpec(III)I

    move-result v0

    .line 549
    .end local v22    # "childCrossMeasureSpec":I
    .restart local v0    # "childCrossMeasureSpec":I
    invoke-virtual {v2, v0, v4}, Landroid/view/View;->measure(II)V

    .line 550
    invoke-direct {v10, v2, v1}, Lcom/google/android/flexbox/FlexboxHelper;->checkSizeConstraints(Landroid/view/View;I)V

    move/from16 v22, v0

    .line 554
    .end local v0    # "childCrossMeasureSpec":I
    .restart local v22    # "childCrossMeasureSpec":I
    :cond_d
    :goto_8
    new-instance v0, Lcom/google/android/flexbox/FlexLine;

    invoke-direct {v0}, Lcom/google/android/flexbox/FlexLine;-><init>()V

    move-object v3, v0

    .line 555
    .end local v6    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    .restart local v3    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    const/4 v0, 0x1

    iput v0, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 556
    add-int v0, v16, v17

    iput v0, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 557
    iput v1, v3, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    .line 558
    const/4 v0, 0x0

    .line 559
    .end local v25    # "indexInFlexLine":I
    .local v0, "indexInFlexLine":I
    const/high16 v24, -0x80000000

    move v5, v0

    move v6, v14

    move/from16 v0, v24

    goto :goto_9

    .line 561
    .end local v0    # "indexInFlexLine":I
    .end local v1    # "i":I
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    .end local v4    # "childMainMeasureSpec":I
    .restart local v23    # "childMainMeasureSpec":I
    .restart local v25    # "indexInFlexLine":I
    .restart local v31    # "child":Landroid/view/View;
    .restart local v32    # "i":I
    .restart local v33    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    :cond_e
    move/from16 v4, v23

    move-object/from16 v2, v31

    move/from16 v1, v32

    move-object/from16 v6, v33

    .end local v23    # "childMainMeasureSpec":I
    .end local v31    # "child":Landroid/view/View;
    .end local v32    # "i":I
    .end local v33    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    .restart local v1    # "i":I
    .restart local v2    # "child":Landroid/view/View;
    .restart local v4    # "childMainMeasureSpec":I
    .restart local v6    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    iget v0, v6, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iput v0, v6, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 562
    add-int/lit8 v25, v25, 0x1

    move-object v3, v6

    move v6, v14

    move/from16 v0, v24

    move/from16 v5, v25

    .line 564
    .end local v14    # "sumCrossSize":I
    .end local v24    # "largestSizeInCross":I
    .end local v25    # "indexInFlexLine":I
    .local v0, "largestSizeInCross":I
    .restart local v3    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    .local v5, "indexInFlexLine":I
    .local v6, "sumCrossSize":I
    :goto_9
    iget-boolean v7, v3, Lcom/google/android/flexbox/FlexLine;->mAnyItemsHaveFlexGrow:Z

    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_f

    const/4 v8, 0x1

    goto :goto_a

    :cond_f
    move/from16 v8, v26

    :goto_a
    or-int/2addr v7, v8

    iput-boolean v7, v3, Lcom/google/android/flexbox/FlexLine;->mAnyItemsHaveFlexGrow:Z

    .line 565
    iget-boolean v7, v3, Lcom/google/android/flexbox/FlexLine;->mAnyItemsHaveFlexShrink:Z

    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v8

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_10

    const/4 v8, 0x1

    goto :goto_b

    :cond_10
    move/from16 v8, v26

    :goto_b
    or-int/2addr v7, v8

    iput-boolean v7, v3, Lcom/google/android/flexbox/FlexLine;->mAnyItemsHaveFlexShrink:Z

    .line 567
    iget-object v7, v10, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    if-eqz v7, :cond_11

    .line 568
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v8

    aput v8, v7, v1

    .line 570
    :cond_11
    iget v7, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    invoke-direct {v10, v2, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getViewMeasuredSizeMain(Landroid/view/View;Z)I

    move-result v8

    .line 571
    invoke-direct {v10, v11, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v9

    add-int/2addr v8, v9

    .line 572
    invoke-direct {v10, v11, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 573
    iget v7, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v8

    add-float/2addr v7, v8

    iput v7, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    .line 574
    iget v7, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v8

    add-float/2addr v7, v8

    iput v7, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    .line 576
    iget-object v7, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v7, v2, v1, v5, v3}, Lcom/google/android/flexbox/FlexContainer;->onNewFlexItemAdded(Landroid/view/View;IILcom/google/android/flexbox/FlexLine;)V

    .line 578
    nop

    .line 579
    invoke-direct {v10, v2, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getViewMeasuredSizeCross(Landroid/view/View;Z)I

    move-result v7

    .line 580
    invoke-direct {v10, v11, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v8

    add-int/2addr v7, v8

    .line 581
    invoke-direct {v10, v11, v15}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 582
    invoke-interface {v8, v2}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v8

    add-int/2addr v7, v8

    .line 578
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 586
    iget v7, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 588
    if-eqz v15, :cond_13

    .line 589
    iget-object v7, v10, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v7}, Lcom/google/android/flexbox/FlexContainer;->getFlexWrap()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_12

    .line 590
    iget v7, v3, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    .line 591
    invoke-virtual {v2}, Landroid/view/View;->getBaseline()I

    move-result v8

    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v9

    add-int/2addr v8, v9

    .line 590
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v3, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    goto :goto_c

    .line 596
    :cond_12
    iget v7, v3, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    .line 597
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {v2}, Landroid/view/View;->getBaseline()I

    move-result v9

    sub-int/2addr v8, v9

    .line 598
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v9

    add-int/2addr v8, v9

    .line 596
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v3, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    .line 602
    :cond_13
    :goto_c
    move/from16 v7, v35

    .end local v35    # "childCount":I
    .local v7, "childCount":I
    invoke-direct {v10, v1, v7, v3}, Lcom/google/android/flexbox/FlexboxHelper;->isLastFlexItem(IILcom/google/android/flexbox/FlexLine;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 603
    invoke-direct {v10, v12, v3, v1, v6}, Lcom/google/android/flexbox/FlexboxHelper;->addFlexLine(Ljava/util/List;Lcom/google/android/flexbox/FlexLine;II)V

    .line 604
    iget v8, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    add-int/2addr v6, v8

    .line 607
    :cond_14
    move/from16 v8, p6

    const/4 v9, -0x1

    if-eq v8, v9, :cond_16

    .line 608
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_15

    .line 609
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    const/16 v21, 0x1

    add-int/lit8 v14, v14, -0x1

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/flexbox/FlexLine;

    iget v14, v14, Lcom/google/android/flexbox/FlexLine;->mLastIndex:I

    if-lt v14, v8, :cond_17

    if-lt v1, v8, :cond_17

    if-nez v20, :cond_17

    .line 617
    invoke-virtual {v3}, Lcom/google/android/flexbox/FlexLine;->getCrossSize()I

    move-result v14

    neg-int v6, v14

    .line 618
    const/4 v14, 0x1

    move/from16 v20, v14

    .end local v20    # "reachedToIndex":Z
    .local v14, "reachedToIndex":Z
    goto :goto_d

    .line 608
    .end local v14    # "reachedToIndex":Z
    .restart local v20    # "reachedToIndex":Z
    :cond_15
    const/16 v21, 0x1

    goto :goto_d

    .line 607
    :cond_16
    const/16 v21, 0x1

    .line 620
    :cond_17
    :goto_d
    move/from16 v14, p4

    if-le v6, v14, :cond_18

    if-eqz v20, :cond_18

    .line 628
    move/from16 v24, v0

    move/from16 v25, v5

    move/from16 v0, v29

    goto :goto_f

    .line 428
    .end local v2    # "child":Landroid/view/View;
    .end local v4    # "childMainMeasureSpec":I
    .end local v11    # "flexItem":Lcom/google/android/flexbox/FlexItem;
    .end local v22    # "childCrossMeasureSpec":I
    .end local v34    # "childMainSize":I
    :cond_18
    move/from16 v24, v0

    move/from16 v25, v5

    move/from16 v0, v29

    .end local v5    # "indexInFlexLine":I
    .end local v29    # "childState":I
    .local v0, "childState":I
    .restart local v24    # "largestSizeInCross":I
    .restart local v25    # "indexInFlexLine":I
    :goto_e
    add-int/lit8 v2, v1, 0x1

    move-object/from16 v11, p1

    move/from16 v5, p5

    move v4, v7

    move v14, v8

    move-object v7, v12

    move/from16 v8, v27

    move/from16 v9, v28

    move/from16 v12, p2

    .end local v1    # "i":I
    .local v2, "i":I
    goto/16 :goto_2

    .end local v12    # "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    .end local v27    # "mainSize":I
    .end local v28    # "mainMode":I
    .local v4, "childCount":I
    .local v7, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    .local v8, "mainSize":I
    .local v9, "mainMode":I
    :cond_19
    move v1, v2

    move-object v12, v7

    move/from16 v27, v8

    move/from16 v28, v9

    move v8, v14

    move v7, v4

    move v14, v6

    move-object v6, v3

    .end local v2    # "i":I
    .end local v3    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    .end local v4    # "childCount":I
    .end local v8    # "mainSize":I
    .end local v9    # "mainMode":I
    .restart local v1    # "i":I
    .local v6, "flexLine":Lcom/google/android/flexbox/FlexLine;
    .local v7, "childCount":I
    .restart local v12    # "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    .local v14, "sumCrossSize":I
    .restart local v27    # "mainSize":I
    .restart local v28    # "mainMode":I
    move v6, v14

    .line 632
    .end local v1    # "i":I
    .end local v14    # "sumCrossSize":I
    .restart local v3    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    .local v6, "sumCrossSize":I
    :goto_f
    move-object/from16 v1, p1

    iput v0, v1, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->mChildState:I

    .line 633
    return-void
.end method

.method calculateHorizontalFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;II)V
    .locals 8
    .param p1, "result"    # Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "result",
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    .line 222
    const v4, 0x7fffffff

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    .line 224
    return-void
.end method

.method calculateHorizontalFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIILjava/util/List;)V
    .locals 8
    .param p1, "result"    # Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I
    .param p4, "needsCalcAmount"    # I
    .param p5, "fromIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "result",
            "widthMeasureSpec",
            "heightMeasureSpec",
            "needsCalcAmount",
            "fromIndex",
            "existingLines"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;",
            "IIII",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;)V"
        }
    .end annotation

    .line 249
    .local p6, "existingLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    .line 251
    return-void
.end method

.method calculateHorizontalFlexLinesToIndex(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIILjava/util/List;)V
    .locals 8
    .param p1, "result"    # Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I
    .param p4, "needsCalcAmount"    # I
    .param p5, "toIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "result",
            "widthMeasureSpec",
            "heightMeasureSpec",
            "needsCalcAmount",
            "toIndex",
            "existingLines"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;",
            "IIII",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;)V"
        }
    .end annotation

    .line 280
    .local p6, "existingLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    .line 282
    return-void
.end method

.method calculateVerticalFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;II)V
    .locals 8
    .param p1, "result"    # Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "result",
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    .line 296
    const v4, 0x7fffffff

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p2

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    .line 298
    return-void
.end method

.method calculateVerticalFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIILjava/util/List;)V
    .locals 8
    .param p1, "result"    # Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I
    .param p4, "needsCalcAmount"    # I
    .param p5, "fromIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "result",
            "widthMeasureSpec",
            "heightMeasureSpec",
            "needsCalcAmount",
            "fromIndex",
            "existingLines"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;",
            "IIII",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;)V"
        }
    .end annotation

    .line 323
    .local p6, "existingLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p2

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    .line 325
    return-void
.end method

.method calculateVerticalFlexLinesToIndex(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIILjava/util/List;)V
    .locals 8
    .param p1, "result"    # Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I
    .param p4, "needsCalcAmount"    # I
    .param p5, "toIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "result",
            "widthMeasureSpec",
            "heightMeasureSpec",
            "needsCalcAmount",
            "toIndex",
            "existingLines"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;",
            "IIII",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;)V"
        }
    .end annotation

    .line 354
    .local p6, "existingLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p2

    move v4, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    .line 356
    return-void
.end method

.method clearFlexLines(Ljava/util/List;I)V
    .locals 5
    .param p2, "fromFlexItem"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "flexLines",
            "fromFlexItem"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;I)V"
        }
    .end annotation

    .line 1995
    .local p1, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    if-eqz v0, :cond_5

    .line 1996
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    if-eqz v1, :cond_4

    .line 1998
    aget v0, v0, p2

    .line 1999
    .local v0, "fromFlexLine":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2000
    const/4 v0, 0x0

    .line 2005
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v0, :cond_1

    .line 2006
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 2009
    :cond_1
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    .line 2010
    .local v3, "fillTo":I
    if-le p2, v3, :cond_2

    .line 2011
    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([II)V

    goto :goto_0

    .line 2013
    :cond_2
    invoke-static {v2, p2, v3, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 2016
    :goto_0
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    .line 2017
    .end local v3    # "fillTo":I
    .local v2, "fillTo":I
    const-wide/16 v3, 0x0

    if-le p2, v2, :cond_3

    .line 2018
    invoke-static {v1, v3, v4}, Ljava/util/Arrays;->fill([JJ)V

    goto :goto_1

    .line 2020
    :cond_3
    invoke-static {v1, p2, v2, v3, v4}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 2022
    :goto_1
    return-void

    .line 1996
    .end local v0    # "fromFlexLine":I
    .end local v2    # "fillTo":I
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1995
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method createReorderedIndices(Landroid/util/SparseIntArray;)[I
    .locals 3
    .param p1, "orderCache"    # Landroid/util/SparseIntArray;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orderCache"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v0

    .line 158
    .local v0, "childCount":I
    invoke-direct {p0, v0}, Lcom/google/android/flexbox/FlexboxHelper;->createOrders(I)Ljava/util/List;

    move-result-object v1

    .line 159
    .local v1, "orders":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexboxHelper$Order;>;"
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/flexbox/FlexboxHelper;->sortOrdersIntoReorderedIndices(ILjava/util/List;Landroid/util/SparseIntArray;)[I

    move-result-object v2

    return-object v2
.end method

.method createReorderedIndices(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Landroid/util/SparseIntArray;)[I
    .locals 7
    .param p1, "viewBeforeAdded"    # Landroid/view/View;
    .param p2, "indexForViewBeforeAdded"    # I
    .param p3, "paramsForViewBeforeAdded"    # Landroid/view/ViewGroup$LayoutParams;
    .param p4, "orderCache"    # Landroid/util/SparseIntArray;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "viewBeforeAdded",
            "indexForViewBeforeAdded",
            "paramsForViewBeforeAdded",
            "orderCache"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v0

    .line 123
    .local v0, "childCount":I
    invoke-direct {p0, v0}, Lcom/google/android/flexbox/FlexboxHelper;->createOrders(I)Ljava/util/List;

    move-result-object v1

    .line 124
    .local v1, "orders":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexboxHelper$Order;>;"
    new-instance v2, Lcom/google/android/flexbox/FlexboxHelper$Order;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/flexbox/FlexboxHelper$Order;-><init>(Lcom/google/android/flexbox/FlexboxHelper$1;)V

    .line 125
    .local v2, "orderForViewToBeAdded":Lcom/google/android/flexbox/FlexboxHelper$Order;
    const/4 v3, 0x1

    if-eqz p1, :cond_0

    instance-of v4, p3, Lcom/google/android/flexbox/FlexItem;

    if-eqz v4, :cond_0

    .line 127
    move-object v4, p3

    check-cast v4, Lcom/google/android/flexbox/FlexItem;

    .line 128
    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getOrder()I

    move-result v4

    iput v4, v2, Lcom/google/android/flexbox/FlexboxHelper$Order;->order:I

    goto :goto_0

    .line 130
    :cond_0
    iput v3, v2, Lcom/google/android/flexbox/FlexboxHelper$Order;->order:I

    .line 133
    :goto_0
    const/4 v4, -0x1

    if-eq p2, v4, :cond_4

    if-ne p2, v0, :cond_1

    goto :goto_2

    .line 135
    :cond_1
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v4

    if-ge p2, v4, :cond_3

    .line 136
    iput p2, v2, Lcom/google/android/flexbox/FlexboxHelper$Order;->index:I

    .line 137
    move v4, p2

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_2

    .line 138
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/flexbox/FlexboxHelper$Order;

    iget v6, v5, Lcom/google/android/flexbox/FlexboxHelper$Order;->index:I

    add-int/2addr v6, v3

    iput v6, v5, Lcom/google/android/flexbox/FlexboxHelper$Order;->index:I

    .line 137
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v4    # "i":I
    :cond_2
    goto :goto_3

    .line 143
    :cond_3
    iput v0, v2, Lcom/google/android/flexbox/FlexboxHelper$Order;->index:I

    goto :goto_3

    .line 134
    :cond_4
    :goto_2
    iput v0, v2, Lcom/google/android/flexbox/FlexboxHelper$Order;->index:I

    .line 145
    :goto_3
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    add-int/lit8 v3, v0, 0x1

    invoke-direct {p0, v3, v1, p4}, Lcom/google/android/flexbox/FlexboxHelper;->sortOrdersIntoReorderedIndices(ILjava/util/List;Landroid/util/SparseIntArray;)[I

    move-result-object v3

    return-object v3
.end method

.method determineCrossSize(III)V
    .locals 19
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .param p3, "paddingAlongCrossAxis"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec",
            "paddingAlongCrossAxis"
        }
    .end annotation

    .line 1444
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getFlexDirection()I

    move-result v1

    .line 1445
    .local v1, "flexDirection":I
    packed-switch v1, :pswitch_data_0

    .line 1457
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid flex direction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1453
    :pswitch_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 1454
    .local v2, "mode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 1455
    .local v3, "size":I
    goto :goto_0

    .line 1448
    .end local v2    # "mode":I
    .end local v3    # "size":I
    :pswitch_1
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 1449
    .restart local v2    # "mode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 1450
    .restart local v3    # "size":I
    nop

    .line 1459
    :goto_0
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexContainer;->getFlexLinesInternal()Ljava/util/List;

    move-result-object v4

    .line 1460
    .local v4, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    const/high16 v5, 0x40000000    # 2.0f

    if-ne v2, v5, :cond_e

    .line 1461
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v5}, Lcom/google/android/flexbox/FlexContainer;->getSumOfCrossSize()I

    move-result v5

    add-int v5, v5, p3

    .line 1462
    .local v5, "totalCrossSize":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v6, v8, :cond_0

    .line 1463
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/flexbox/FlexLine;

    sub-int v7, v3, p3

    iput v7, v6, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    goto/16 :goto_8

    .line 1465
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v9, 0x2

    if-lt v6, v9, :cond_e

    .line 1466
    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v6}, Lcom/google/android/flexbox/FlexContainer;->getAlignContent()I

    move-result v6

    const/high16 v10, -0x40800000    # -1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    packed-switch v6, :pswitch_data_1

    goto/16 :goto_8

    .line 1468
    :pswitch_2
    if-lt v5, v3, :cond_1

    .line 1469
    goto/16 :goto_8

    .line 1471
    :cond_1
    sub-int v6, v3, v5

    int-to-float v6, v6

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 1472
    .local v6, "freeSpaceUnit":F
    const/4 v7, 0x0

    .line 1473
    .local v7, "accumulatedError":F
    const/4 v9, 0x0

    .local v9, "i":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    .local v12, "flexLinesSize":I
    :goto_1
    if-ge v9, v12, :cond_5

    .line 1474
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/flexbox/FlexLine;

    .line 1475
    .local v13, "flexLine":Lcom/google/android/flexbox/FlexLine;
    iget v14, v13, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    int-to-float v14, v14

    add-float/2addr v14, v6

    .line 1476
    .local v14, "newCrossSizeAsFloat":F
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v15

    sub-int/2addr v15, v8

    if-ne v9, v15, :cond_2

    .line 1477
    add-float/2addr v14, v7

    .line 1478
    const/4 v7, 0x0

    .line 1480
    :cond_2
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 1481
    .local v15, "newCrossSize":I
    int-to-float v8, v15

    sub-float v8, v14, v8

    add-float/2addr v7, v8

    .line 1482
    cmpl-float v8, v7, v11

    if-lez v8, :cond_3

    .line 1483
    add-int/lit8 v15, v15, 0x1

    .line 1484
    sub-float/2addr v7, v11

    goto :goto_2

    .line 1485
    :cond_3
    cmpg-float v8, v7, v10

    if-gez v8, :cond_4

    .line 1486
    add-int/lit8 v15, v15, -0x1

    .line 1487
    add-float/2addr v7, v11

    .line 1489
    :cond_4
    :goto_2
    iput v15, v13, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 1473
    .end local v13    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    .end local v14    # "newCrossSizeAsFloat":F
    .end local v15    # "newCrossSize":I
    add-int/lit8 v9, v9, 0x1

    const/4 v8, 0x1

    goto :goto_1

    .line 1491
    .end local v9    # "i":I
    .end local v12    # "flexLinesSize":I
    :cond_5
    goto/16 :goto_8

    .line 1494
    .end local v6    # "freeSpaceUnit":F
    .end local v7    # "accumulatedError":F
    :pswitch_3
    if-lt v5, v3, :cond_6

    .line 1497
    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 1498
    invoke-direct {v0, v4, v3, v5}, Lcom/google/android/flexbox/FlexboxHelper;->constructFlexLinesForAlignContentCenter(Ljava/util/List;II)Ljava/util/List;

    move-result-object v7

    .line 1497
    invoke-interface {v6, v7}, Lcom/google/android/flexbox/FlexContainer;->setFlexLines(Ljava/util/List;)V

    .line 1500
    goto/16 :goto_8

    .line 1504
    :cond_6
    sub-int v6, v3, v5

    .line 1506
    .local v6, "spaceTopAndBottom":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    mul-int/2addr v7, v9

    .line 1507
    .local v7, "numberOfSpaces":I
    div-int/2addr v6, v7

    .line 1508
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1509
    .local v8, "newFlexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    new-instance v9, Lcom/google/android/flexbox/FlexLine;

    invoke-direct {v9}, Lcom/google/android/flexbox/FlexLine;-><init>()V

    .line 1510
    .local v9, "dummySpaceFlexLine":Lcom/google/android/flexbox/FlexLine;
    iput v6, v9, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 1511
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/flexbox/FlexLine;

    .line 1512
    .local v11, "flexLine":Lcom/google/android/flexbox/FlexLine;
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1513
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1514
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1515
    .end local v11    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    goto :goto_3

    .line 1516
    :cond_7
    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v10, v8}, Lcom/google/android/flexbox/FlexContainer;->setFlexLines(Ljava/util/List;)V

    .line 1517
    goto/16 :goto_8

    .line 1520
    .end local v6    # "spaceTopAndBottom":I
    .end local v7    # "numberOfSpaces":I
    .end local v8    # "newFlexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    .end local v9    # "dummySpaceFlexLine":Lcom/google/android/flexbox/FlexLine;
    :pswitch_4
    if-lt v5, v3, :cond_8

    .line 1521
    goto/16 :goto_8

    .line 1524
    :cond_8
    sub-int v6, v3, v5

    int-to-float v6, v6

    .line 1525
    .local v6, "spaceBetweenFlexLine":F
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    .line 1526
    .restart local v7    # "numberOfSpaces":I
    int-to-float v8, v7

    div-float/2addr v6, v8

    .line 1527
    const/4 v8, 0x0

    .line 1528
    .local v8, "accumulatedError":F
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1529
    .local v12, "newFlexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    .local v14, "flexLineSize":I
    :goto_4
    if-ge v13, v14, :cond_d

    .line 1530
    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/flexbox/FlexLine;

    .line 1531
    .local v15, "flexLine":Lcom/google/android/flexbox/FlexLine;
    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1533
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v17

    const/16 v16, 0x1

    add-int/lit8 v10, v17, -0x1

    if-eq v13, v10, :cond_c

    .line 1534
    new-instance v10, Lcom/google/android/flexbox/FlexLine;

    invoke-direct {v10}, Lcom/google/android/flexbox/FlexLine;-><init>()V

    .line 1535
    .local v10, "dummySpaceFlexLine":Lcom/google/android/flexbox/FlexLine;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v17

    add-int/lit8 v11, v17, -0x2

    if-ne v13, v11, :cond_9

    .line 1538
    add-float v11, v6, v8

    .line 1539
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    iput v11, v10, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 1540
    const/4 v8, 0x0

    goto :goto_5

    .line 1542
    :cond_9
    nop

    .line 1543
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v11

    iput v11, v10, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 1545
    :goto_5
    iget v11, v10, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    int-to-float v11, v11

    sub-float v11, v6, v11

    add-float/2addr v8, v11

    .line 1547
    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v17, v8, v11

    if-lez v17, :cond_a

    .line 1548
    iget v9, v10, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    const/16 v16, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v10, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 1549
    sub-float/2addr v8, v11

    goto :goto_6

    .line 1550
    :cond_a
    const/16 v16, 0x1

    const/high16 v9, -0x40800000    # -1.0f

    cmpg-float v18, v8, v9

    if-gez v18, :cond_b

    .line 1551
    iget v9, v10, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    add-int/lit8 v9, v9, -0x1

    iput v9, v10, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 1552
    add-float/2addr v8, v11

    .line 1554
    :cond_b
    :goto_6
    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1533
    .end local v10    # "dummySpaceFlexLine":Lcom/google/android/flexbox/FlexLine;
    :cond_c
    const/16 v16, 0x1

    .line 1529
    .end local v15    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    :goto_7
    add-int/lit8 v13, v13, 0x1

    const/4 v9, 0x2

    const/high16 v10, -0x40800000    # -1.0f

    goto :goto_4

    .line 1557
    .end local v13    # "i":I
    .end local v14    # "flexLineSize":I
    :cond_d
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v9, v12}, Lcom/google/android/flexbox/FlexContainer;->setFlexLines(Ljava/util/List;)V

    .line 1558
    goto :goto_8

    .line 1561
    .end local v6    # "spaceBetweenFlexLine":F
    .end local v7    # "numberOfSpaces":I
    .end local v8    # "accumulatedError":F
    .end local v12    # "newFlexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    :pswitch_5
    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 1562
    invoke-direct {v0, v4, v3, v5}, Lcom/google/android/flexbox/FlexboxHelper;->constructFlexLinesForAlignContentCenter(Ljava/util/List;II)Ljava/util/List;

    move-result-object v7

    .line 1561
    invoke-interface {v6, v7}, Lcom/google/android/flexbox/FlexContainer;->setFlexLines(Ljava/util/List;)V

    .line 1564
    goto :goto_8

    .line 1567
    :pswitch_6
    sub-int v6, v3, v5

    .line 1568
    .local v6, "spaceTop":I
    new-instance v8, Lcom/google/android/flexbox/FlexLine;

    invoke-direct {v8}, Lcom/google/android/flexbox/FlexLine;-><init>()V

    .line 1569
    .local v8, "dummySpaceFlexLine":Lcom/google/android/flexbox/FlexLine;
    iput v6, v8, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 1570
    invoke-interface {v4, v7, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1579
    .end local v5    # "totalCrossSize":I
    .end local v6    # "spaceTop":I
    .end local v8    # "dummySpaceFlexLine":Lcom/google/android/flexbox/FlexLine;
    :cond_e
    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method determineMainSize(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    .line 948
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/flexbox/FlexboxHelper;->determineMainSize(III)V

    .line 949
    return-void
.end method

.method determineMainSize(III)V
    .locals 17
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .param p3, "fromIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec",
            "fromIndex"
        }
    .end annotation

    .line 963
    move-object/from16 v7, p0

    move/from16 v8, p3

    iget-object v0, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v0

    invoke-direct {v7, v0}, Lcom/google/android/flexbox/FlexboxHelper;->ensureChildrenFrozen(I)V

    .line 964
    iget-object v0, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v0

    if-lt v8, v0, :cond_0

    .line 965
    return-void

    .line 969
    :cond_0
    iget-object v0, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexDirection()I

    move-result v9

    .line 970
    .local v9, "flexDirection":I
    iget-object v0, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexDirection()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    packed-switch v0, :pswitch_data_0

    .line 997
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid flex direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 986
    :pswitch_0
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 987
    .local v0, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 988
    .local v2, "heightSize":I
    if-ne v0, v1, :cond_1

    .line 989
    move v1, v2

    .local v1, "mainSize":I
    goto :goto_0

    .line 991
    .end local v1    # "mainSize":I
    :cond_1
    iget-object v1, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getLargestMainSize()I

    move-result v1

    .line 993
    .restart local v1    # "mainSize":I
    :goto_0
    iget-object v3, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v3}, Lcom/google/android/flexbox/FlexContainer;->getPaddingTop()I

    move-result v3

    iget-object v4, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 994
    invoke-interface {v4}, Lcom/google/android/flexbox/FlexContainer;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    .line 995
    .local v3, "paddingAlongMainAxis":I
    move v10, v1

    move v11, v3

    goto :goto_2

    .line 973
    .end local v0    # "heightMode":I
    .end local v1    # "mainSize":I
    .end local v2    # "heightSize":I
    .end local v3    # "paddingAlongMainAxis":I
    :pswitch_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 974
    .local v0, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 975
    .local v2, "widthSize":I
    iget-object v3, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v3}, Lcom/google/android/flexbox/FlexContainer;->getLargestMainSize()I

    move-result v3

    .line 976
    .local v3, "largestMainSize":I
    if-ne v0, v1, :cond_2

    .line 977
    move v1, v2

    .restart local v1    # "mainSize":I
    goto :goto_1

    .line 979
    .end local v1    # "mainSize":I
    :cond_2
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 981
    .restart local v1    # "mainSize":I
    :goto_1
    iget-object v4, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexContainer;->getPaddingLeft()I

    move-result v4

    iget-object v5, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 982
    invoke-interface {v5}, Lcom/google/android/flexbox/FlexContainer;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    .line 983
    .local v4, "paddingAlongMainAxis":I
    move v10, v1

    move v11, v4

    .line 1000
    .end local v0    # "widthMode":I
    .end local v1    # "mainSize":I
    .end local v2    # "widthSize":I
    .end local v3    # "largestMainSize":I
    .end local v4    # "paddingAlongMainAxis":I
    .local v10, "mainSize":I
    .local v11, "paddingAlongMainAxis":I
    :goto_2
    const/4 v0, 0x0

    .line 1001
    .local v0, "flexLineIndex":I
    iget-object v1, v7, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    if-eqz v1, :cond_3

    .line 1002
    aget v0, v1, v8

    move v12, v0

    goto :goto_3

    .line 1001
    :cond_3
    move v12, v0

    .line 1004
    .end local v0    # "flexLineIndex":I
    .local v12, "flexLineIndex":I
    :goto_3
    iget-object v0, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexLinesInternal()Ljava/util/List;

    move-result-object v13

    .line 1005
    .local v13, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    move v0, v12

    .local v0, "i":I
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    move v15, v0

    .end local v0    # "i":I
    .local v14, "size":I
    .local v15, "i":I
    :goto_4
    if-ge v15, v14, :cond_6

    .line 1006
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/flexbox/FlexLine;

    .line 1007
    .local v6, "flexLine":Lcom/google/android/flexbox/FlexLine;
    iget v0, v6, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-ge v0, v10, :cond_4

    iget-boolean v0, v6, Lcom/google/android/flexbox/FlexLine;->mAnyItemsHaveFlexGrow:Z

    if-eqz v0, :cond_4

    .line 1008
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v6

    move v4, v10

    move v5, v11

    move-object v7, v6

    .end local v6    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    .local v7, "flexLine":Lcom/google/android/flexbox/FlexLine;
    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/google/android/flexbox/FlexboxHelper;->expandFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V

    goto :goto_5

    .line 1007
    .end local v7    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    .restart local v6    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    :cond_4
    move-object v7, v6

    .line 1010
    .end local v6    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    .restart local v7    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    iget v0, v7, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-le v0, v10, :cond_5

    iget-boolean v0, v7, Lcom/google/android/flexbox/FlexLine;->mAnyItemsHaveFlexShrink:Z

    if-eqz v0, :cond_5

    .line 1011
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v7

    move v4, v10

    move v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/google/android/flexbox/FlexboxHelper;->shrinkFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V

    .line 1005
    .end local v7    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    :cond_5
    :goto_5
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v7, p0

    goto :goto_4

    .line 1015
    .end local v14    # "size":I
    .end local v15    # "i":I
    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method ensureIndexToFlexLine(I)V
    .locals 2
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 1979
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    if-nez v0, :cond_0

    .line 1980
    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    goto :goto_0

    .line 1981
    :cond_0
    array-length v1, v0

    if-ge v1, p1, :cond_1

    .line 1982
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 1983
    .local v0, "newCapacity":I
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1984
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    .line 1986
    .end local v0    # "newCapacity":I
    :cond_1
    :goto_0
    return-void
.end method

.method ensureMeasureSpecCache(I)V
    .locals 2
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 1920
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    if-nez v0, :cond_0

    .line 1921
    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    goto :goto_0

    .line 1922
    :cond_0
    array-length v1, v0

    if-ge v1, p1, :cond_1

    .line 1923
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 1924
    .local v0, "newCapacity":I
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1925
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    .line 1927
    .end local v0    # "newCapacity":I
    :cond_1
    :goto_0
    return-void
.end method

.method ensureMeasuredSizeCache(I)V
    .locals 2
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 1910
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-nez v0, :cond_0

    .line 1911
    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    goto :goto_0

    .line 1912
    :cond_0
    array-length v1, v0

    if-ge v1, p1, :cond_1

    .line 1913
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 1914
    .local v0, "newCapacity":I
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1915
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    .line 1917
    .end local v0    # "newCapacity":I
    :cond_1
    :goto_0
    return-void
.end method

.method extractHigherInt(J)I
    .locals 2
    .param p1, "longValue"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "longValue"
        }
    .end annotation

    .line 1944
    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    return v0
.end method

.method extractLowerInt(J)I
    .locals 1
    .param p1, "longValue"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "longValue"
        }
    .end annotation

    .line 1935
    long-to-int v0, p1

    return v0
.end method

.method isOrderChangedFromLastMeasurement(Landroid/util/SparseIntArray;)Z
    .locals 7
    .param p1, "orderCache"    # Landroid/util/SparseIntArray;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orderCache"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v0

    .line 184
    .local v0, "childCount":I
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v0, :cond_0

    .line 185
    return v2

    .line 187
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 188
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v3, v1}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemAt(I)Landroid/view/View;

    move-result-object v3

    .line 189
    .local v3, "view":Landroid/view/View;
    if-nez v3, :cond_1

    .line 190
    goto :goto_1

    .line 192
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/google/android/flexbox/FlexItem;

    .line 193
    .local v4, "flexItem":Lcom/google/android/flexbox/FlexItem;
    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getOrder()I

    move-result v5

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    if-eq v5, v6, :cond_2

    .line 194
    return v2

    .line 187
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "flexItem":Lcom/google/android/flexbox/FlexItem;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method layoutSingleChildHorizontal(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;IIII)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flexLine"    # Lcom/google/android/flexbox/FlexLine;
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "flexLine",
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    .line 1773
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    .line 1774
    .local v0, "flexItem":Lcom/google/android/flexbox/FlexItem;
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getAlignItems()I

    move-result v1

    .line 1775
    .local v1, "alignItems":I
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1778
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v1

    .line 1780
    :cond_0
    iget v2, p2, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 1781
    .local v2, "crossSize":I
    const/4 v3, 0x2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 1793
    :pswitch_0
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexContainer;->getFlexWrap()I

    move-result v4

    if-eq v4, v3, :cond_1

    .line 1794
    iget v3, p2, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1795
    .local v3, "marginTop":I
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1796
    add-int v4, p4, v3

    add-int v5, p6, v3

    invoke-virtual {p1, p3, v4, p5, v5}, Landroid/view/View;->layout(IIII)V

    .line 1797
    .end local v3    # "marginTop":I
    goto/16 :goto_0

    .line 1798
    :cond_1
    iget v3, p2, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1799
    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result v4

    add-int/2addr v3, v4

    .line 1800
    .local v3, "marginBottom":I
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1801
    sub-int v4, p4, v3

    sub-int v5, p6, v3

    invoke-virtual {p1, p3, v4, p5, v5}, Landroid/view/View;->layout(IIII)V

    .line 1803
    .end local v3    # "marginBottom":I
    goto/16 :goto_0

    .line 1819
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int v4, v2, v4

    .line 1820
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v5

    add-int/2addr v4, v5

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/2addr v4, v3

    .line 1821
    .local v4, "topFromCrossAxis":I
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v5}, Lcom/google/android/flexbox/FlexContainer;->getFlexWrap()I

    move-result v5

    if-eq v5, v3, :cond_2

    .line 1822
    add-int v3, p4, v4

    add-int v5, p4, v4

    .line 1823
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    .line 1822
    invoke-virtual {p1, p3, v3, p5, v5}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1825
    :cond_2
    sub-int v3, p4, v4

    sub-int v5, p4, v4

    .line 1826
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    .line 1825
    invoke-virtual {p1, p3, v3, p5, v5}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1805
    .end local v4    # "topFromCrossAxis":I
    :pswitch_2
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexContainer;->getFlexWrap()I

    move-result v4

    if-eq v4, v3, :cond_3

    .line 1806
    add-int v3, p4, v2

    .line 1807
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v4

    sub-int/2addr v3, v4

    add-int v4, p4, v2

    .line 1808
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 1806
    invoke-virtual {p1, p3, v3, p5, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1812
    :cond_3
    sub-int v3, p4, v2

    .line 1813
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v4, p6, v2

    .line 1814
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 1815
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v5

    add-int/2addr v4, v5

    .line 1812
    invoke-virtual {p1, p3, v3, p5, v4}, Landroid/view/View;->layout(IIII)V

    .line 1817
    goto :goto_0

    .line 1784
    :pswitch_3
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexContainer;->getFlexWrap()I

    move-result v4

    if-eq v4, v3, :cond_4

    .line 1785
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v3

    add-int/2addr v3, p4

    .line 1786
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v4

    add-int/2addr v4, p6

    .line 1785
    invoke-virtual {p1, p3, v3, p5, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1788
    :cond_4
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v3

    sub-int v3, p4, v3

    .line 1789
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v4

    sub-int v4, p6, v4

    .line 1788
    invoke-virtual {p1, p3, v3, p5, v4}, Landroid/view/View;->layout(IIII)V

    .line 1791
    nop

    .line 1830
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method layoutSingleChildVertical(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;ZIIII)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flexLine"    # Lcom/google/android/flexbox/FlexLine;
    .param p3, "isRtl"    # Z
    .param p4, "left"    # I
    .param p5, "top"    # I
    .param p6, "right"    # I
    .param p7, "bottom"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "flexLine",
            "isRtl",
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    .line 1857
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    .line 1858
    .local v0, "flexItem":Lcom/google/android/flexbox/FlexItem;
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getAlignItems()I

    move-result v1

    .line 1859
    .local v1, "alignItems":I
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1862
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v1

    .line 1864
    :cond_0
    iget v2, p2, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 1865
    .local v2, "crossSize":I
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 1895
    :pswitch_0
    nop

    .line 1896
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1897
    .local v3, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v2, v4

    .line 1898
    invoke-static {v3}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1899
    invoke-static {v3}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    .line 1900
    .local v4, "leftFromCrossAxis":I
    if-nez p3, :cond_1

    .line 1901
    add-int v5, p4, v4

    add-int v6, p6, v4

    invoke-virtual {p1, v5, p5, v6, p7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1903
    :cond_1
    sub-int v5, p4, v4

    sub-int v6, p6, v4

    invoke-virtual {p1, v5, p5, v6, p7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1878
    .end local v3    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v4    # "leftFromCrossAxis":I
    :pswitch_1
    if-nez p3, :cond_2

    .line 1879
    add-int v3, p4, v2

    .line 1880
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int v4, p6, v2

    .line 1882
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v5

    sub-int/2addr v4, v5

    .line 1879
    invoke-virtual {p1, v3, p5, v4, p7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1887
    :cond_2
    sub-int v3, p4, v2

    .line 1888
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v4, p6, v2

    .line 1890
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v5

    add-int/2addr v4, v5

    .line 1887
    invoke-virtual {p1, v3, p5, v4, p7}, Landroid/view/View;->layout(IIII)V

    .line 1893
    goto :goto_0

    .line 1869
    :pswitch_2
    if-nez p3, :cond_3

    .line 1870
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v3

    add-int/2addr v3, p4

    .line 1871
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v4

    add-int/2addr v4, p6

    .line 1870
    invoke-virtual {p1, v3, p5, v4, p7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1873
    :cond_3
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v3

    sub-int v3, p4, v3

    .line 1874
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v4

    sub-int v4, p6, v4

    .line 1873
    invoke-virtual {p1, v3, p5, v4, p7}, Landroid/view/View;->layout(IIII)V

    .line 1876
    nop

    .line 1907
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method makeCombinedLong(II)J
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    .line 1961
    int-to-long v0, p2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method stretchViews()V
    .locals 1

    .line 1602
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViews(I)V

    .line 1603
    return-void
.end method

.method stretchViews(I)V
    .locals 16
    .param p1, "fromIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fromIndex"
        }
    .end annotation

    .line 1618
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v2}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 1619
    return-void

    .line 1621
    :cond_0
    iget-object v2, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v2}, Lcom/google/android/flexbox/FlexContainer;->getFlexDirection()I

    move-result v2

    .line 1622
    .local v2, "flexDirection":I
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v3}, Lcom/google/android/flexbox/FlexContainer;->getAlignItems()I

    move-result v3

    const-string v4, "Invalid flex direction: "

    const/4 v5, 0x4

    if-ne v3, v5, :cond_9

    .line 1623
    const/4 v3, 0x0

    .line 1624
    .local v3, "flexLineIndex":I
    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    if-eqz v6, :cond_1

    .line 1625
    aget v3, v6, v1

    .line 1627
    :cond_1
    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v6}, Lcom/google/android/flexbox/FlexContainer;->getFlexLinesInternal()Ljava/util/List;

    move-result-object v6

    .line 1628
    .local v6, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    move v7, v3

    .local v7, "i":I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    .local v8, "size":I
    :goto_0
    if-ge v7, v8, :cond_8

    .line 1629
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/flexbox/FlexLine;

    .line 1630
    .local v9, "flexLine":Lcom/google/android/flexbox/FlexLine;
    const/4 v10, 0x0

    .local v10, "j":I
    iget v11, v9, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .local v11, "itemCount":I
    :goto_1
    if-ge v10, v11, :cond_7

    .line 1631
    iget v12, v9, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    add-int/2addr v12, v10

    .line 1632
    .local v12, "viewIndex":I
    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v13}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v13

    if-lt v10, v13, :cond_2

    .line 1633
    move v15, v5

    goto :goto_2

    .line 1635
    :cond_2
    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v13, v12}, Lcom/google/android/flexbox/FlexContainer;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v13

    .line 1636
    .local v13, "view":Landroid/view/View;
    if-eqz v13, :cond_6

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_3

    .line 1637
    move v15, v5

    goto :goto_2

    .line 1639
    :cond_3
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/google/android/flexbox/FlexItem;

    .line 1640
    .local v14, "flexItem":Lcom/google/android/flexbox/FlexItem;
    invoke-interface {v14}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v15

    const/4 v5, -0x1

    if-eq v15, v5, :cond_4

    .line 1641
    invoke-interface {v14}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v5

    const/4 v15, 0x4

    if-eq v5, v15, :cond_5

    .line 1642
    goto :goto_2

    .line 1640
    :cond_4
    const/4 v15, 0x4

    .line 1644
    :cond_5
    packed-switch v2, :pswitch_data_0

    .line 1654
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1651
    :pswitch_0
    iget v5, v9, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-direct {v0, v13, v5, v12}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViewHorizontally(Landroid/view/View;II)V

    .line 1652
    goto :goto_2

    .line 1647
    :pswitch_1
    iget v5, v9, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-direct {v0, v13, v5, v12}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViewVertically(Landroid/view/View;II)V

    .line 1648
    goto :goto_2

    .line 1636
    .end local v14    # "flexItem":Lcom/google/android/flexbox/FlexItem;
    :cond_6
    move v15, v5

    .line 1630
    .end local v12    # "viewIndex":I
    .end local v13    # "view":Landroid/view/View;
    :goto_2
    add-int/lit8 v10, v10, 0x1

    move v5, v15

    goto :goto_1

    :cond_7
    move v15, v5

    .line 1628
    .end local v9    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    .end local v10    # "j":I
    .end local v11    # "itemCount":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1659
    .end local v3    # "flexLineIndex":I
    .end local v6    # "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    .end local v7    # "i":I
    .end local v8    # "size":I
    :cond_8
    goto :goto_6

    .line 1660
    :cond_9
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v3}, Lcom/google/android/flexbox/FlexContainer;->getFlexLinesInternal()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/flexbox/FlexLine;

    .line 1661
    .local v5, "flexLine":Lcom/google/android/flexbox/FlexLine;
    iget-object v6, v5, Lcom/google/android/flexbox/FlexLine;->mIndicesAlignSelfStretch:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 1662
    .local v7, "index":Ljava/lang/Integer;
    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v8, v9}, Lcom/google/android/flexbox/FlexContainer;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v8

    .line 1663
    .local v8, "view":Landroid/view/View;
    packed-switch v2, :pswitch_data_1

    .line 1673
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1670
    :pswitch_2
    iget v9, v5, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {v0, v8, v9, v10}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViewHorizontally(Landroid/view/View;II)V

    .line 1671
    goto :goto_5

    .line 1666
    :pswitch_3
    iget v9, v5, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {v0, v8, v9, v10}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViewVertically(Landroid/view/View;II)V

    .line 1667
    nop

    .line 1676
    .end local v7    # "index":Ljava/lang/Integer;
    .end local v8    # "view":Landroid/view/View;
    :goto_5
    goto :goto_4

    .line 1677
    .end local v5    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    :cond_a
    goto :goto_3

    .line 1679
    :cond_b
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
