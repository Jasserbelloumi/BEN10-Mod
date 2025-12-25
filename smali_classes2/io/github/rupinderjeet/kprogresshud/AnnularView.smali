.class Lio/github/rupinderjeet/kprogresshud/AnnularView;
.super Landroid/view/View;
.source "AnnularView.java"

# interfaces
.implements Lio/github/rupinderjeet/kprogresshud/Determinate;


# instance fields
.field private mBound:Landroid/graphics/RectF;

.field private mGreyPaint:Landroid/graphics/Paint;

.field private mMax:I

.field private mProgress:I

.field private mWhitePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 32
    const/16 v0, 0x64

    iput v0, p0, Lio/github/rupinderjeet/kprogresshud/AnnularView;->mMax:I

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lio/github/rupinderjeet/kprogresshud/AnnularView;->mProgress:I

    .line 37
    invoke-direct {p0, p1}, Lio/github/rupinderjeet/kprogresshud/AnnularView;->init(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/16 v0, 0x64

    iput v0, p0, Lio/github/rupinderjeet/kprogresshud/AnnularView;->mMax:I

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lio/github/rupinderjeet/kprogresshud/AnnularView;->mProgress:I

    .line 42
    invoke-direct {p0, p1}, Lio/github/rupinderjeet/kprogresshud/AnnularView;->init(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const/16 v0, 0x64

    iput v0, p0, Lio/github/rupinderjeet/kprogresshud/AnnularView;->mMax:I

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lio/github/rupinderjeet/kprogresshud/AnnularView;->mProgress:I

    .line 47
    invoke-direct {p0, p1}, Lio/github/rupinderjeet/kprogresshud/AnnularView;->init(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lio/github/rupinderjeet/kprogresshud/AnnularView;->mWhitePaint:Landroid/graphics/Paint;

    .line 52
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/AnnularView;->mWhitePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lio/github/rupinderjeet/kprogresshud/AnnularView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3, v2}, Lio/github/rupinderjeet/kprogresshud/Helper;->dpToPixel(FLandroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 54
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/AnnularView;->mWhitePaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lio/github/rupinderjeet/kprogresshud/AnnularView;->mGreyPaint:Landroid/graphics/Paint;

    .line 57
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/AnnularView;->mGreyPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lio/github/rupinderjeet/kprogresshud/AnnularView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v3, v1}, Lio/github/rupinderjeet/kprogresshud/Helper;->dpToPixel(FLandroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 59
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/AnnularView;->mGreyPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/github/rupinderjeet/kprogresshud/R$color;->kprogresshud_grey_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lio/github/rupinderjeet/kprogresshud/AnnularView;->mBound:Landroid/graphics/RectF;

    .line 62
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 73
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 74
    iget v1, v0, Lio/github/rupinderjeet/kprogresshud/AnnularView;->mProgress:I

    int-to-float v1, v1

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v1, v2

    iget v3, v0, Lio/github/rupinderjeet/kprogresshud/AnnularView;->mMax:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 75
    .local v1, "mAngle":F
    iget-object v5, v0, Lio/github/rupinderjeet/kprogresshud/AnnularView;->mBound:Landroid/graphics/RectF;

    iget-object v9, v0, Lio/github/rupinderjeet/kprogresshud/AnnularView;->mWhitePaint:Landroid/graphics/Paint;

    const/high16 v6, 0x43870000    # 270.0f

    const/4 v8, 0x0

    move-object/from16 v4, p1

    move v7, v1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 76
    iget-object v11, v0, Lio/github/rupinderjeet/kprogresshud/AnnularView;->mBound:Landroid/graphics/RectF;

    const/high16 v3, 0x43870000    # 270.0f

    add-float v12, v1, v3

    sub-float v13, v2, v1

    iget-object v15, v0, Lio/github/rupinderjeet/kprogresshud/AnnularView;->mGreyPaint:Landroid/graphics/Paint;

    const/4 v14, 0x0

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 77
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 81
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 82
    invoke-virtual {p0}, Lio/github/rupinderjeet/kprogresshud/AnnularView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v1, v0}, Lio/github/rupinderjeet/kprogresshud/Helper;->dpToPixel(FLandroid/content/Context;)I

    move-result v0

    .line 83
    .local v0, "dimension":I
    invoke-virtual {p0, v0, v0}, Lio/github/rupinderjeet/kprogresshud/AnnularView;->setMeasuredDimension(II)V

    .line 84
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 66
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 67
    invoke-virtual {p0}, Lio/github/rupinderjeet/kprogresshud/AnnularView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1, v0}, Lio/github/rupinderjeet/kprogresshud/Helper;->dpToPixel(FLandroid/content/Context;)I

    move-result v0

    .line 68
    .local v0, "padding":I
    iget-object v1, p0, Lio/github/rupinderjeet/kprogresshud/AnnularView;->mBound:Landroid/graphics/RectF;

    int-to-float v2, v0

    int-to-float v3, v0

    sub-int v4, p1, v0

    int-to-float v4, v4

    sub-int v5, p2, v0

    int-to-float v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 69
    return-void
.end method

.method public setMax(I)V
    .locals 0
    .param p1, "max"    # I

    .line 88
    iput p1, p0, Lio/github/rupinderjeet/kprogresshud/AnnularView;->mMax:I

    .line 89
    return-void
.end method

.method public setProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .line 93
    iput p1, p0, Lio/github/rupinderjeet/kprogresshud/AnnularView;->mProgress:I

    .line 94
    invoke-virtual {p0}, Lio/github/rupinderjeet/kprogresshud/AnnularView;->invalidate()V

    .line 95
    return-void
.end method
