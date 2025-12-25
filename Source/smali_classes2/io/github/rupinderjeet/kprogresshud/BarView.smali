.class Lio/github/rupinderjeet/kprogresshud/BarView;
.super Landroid/view/View;
.source "BarView.java"

# interfaces
.implements Lio/github/rupinderjeet/kprogresshud/Determinate;


# instance fields
.field private mBound:Landroid/graphics/RectF;

.field private mBoundGap:F

.field private mInBound:Landroid/graphics/RectF;

.field private mInnerPaint:Landroid/graphics/Paint;

.field private mMax:I

.field private mOuterPaint:Landroid/graphics/Paint;

.field private mProgress:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    const/16 v0, 0x64

    iput v0, p0, Lio/github/rupinderjeet/kprogresshud/BarView;->mMax:I

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lio/github/rupinderjeet/kprogresshud/BarView;->mProgress:I

    .line 39
    invoke-direct {p0}, Lio/github/rupinderjeet/kprogresshud/BarView;->init()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/16 v0, 0x64

    iput v0, p0, Lio/github/rupinderjeet/kprogresshud/BarView;->mMax:I

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lio/github/rupinderjeet/kprogresshud/BarView;->mProgress:I

    .line 44
    invoke-direct {p0}, Lio/github/rupinderjeet/kprogresshud/BarView;->init()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    const/16 v0, 0x64

    iput v0, p0, Lio/github/rupinderjeet/kprogresshud/BarView;->mMax:I

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lio/github/rupinderjeet/kprogresshud/BarView;->mProgress:I

    .line 49
    invoke-direct {p0}, Lio/github/rupinderjeet/kprogresshud/BarView;->init()V

    .line 50
    return-void
.end method

.method private init()V
    .locals 5

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lio/github/rupinderjeet/kprogresshud/BarView;->mOuterPaint:Landroid/graphics/Paint;

    .line 54
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/BarView;->mOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lio/github/rupinderjeet/kprogresshud/BarView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3, v2}, Lio/github/rupinderjeet/kprogresshud/Helper;->dpToPixel(FLandroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 56
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/BarView;->mOuterPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lio/github/rupinderjeet/kprogresshud/BarView;->mInnerPaint:Landroid/graphics/Paint;

    .line 59
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/BarView;->mInnerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    invoke-virtual {p0}, Lio/github/rupinderjeet/kprogresshud/BarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v1, v0}, Lio/github/rupinderjeet/kprogresshud/Helper;->dpToPixel(FLandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lio/github/rupinderjeet/kprogresshud/BarView;->mBoundGap:F

    .line 63
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lio/github/rupinderjeet/kprogresshud/BarView;->mBoundGap:F

    .line 64
    invoke-virtual {p0}, Lio/github/rupinderjeet/kprogresshud/BarView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lio/github/rupinderjeet/kprogresshud/BarView;->mBoundGap:F

    sub-float/2addr v2, v3

    iget v3, p0, Lio/github/rupinderjeet/kprogresshud/BarView;->mProgress:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lio/github/rupinderjeet/kprogresshud/BarView;->mMax:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p0}, Lio/github/rupinderjeet/kprogresshud/BarView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lio/github/rupinderjeet/kprogresshud/BarView;->mBoundGap:F

    sub-float/2addr v3, v4

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lio/github/rupinderjeet/kprogresshud/BarView;->mInBound:Landroid/graphics/RectF;

    .line 66
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lio/github/rupinderjeet/kprogresshud/BarView;->mBound:Landroid/graphics/RectF;

    .line 67
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 78
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 79
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/BarView;->mBound:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v3, p0, Lio/github/rupinderjeet/kprogresshud/BarView;->mBound:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v2

    iget-object v4, p0, Lio/github/rupinderjeet/kprogresshud/BarView;->mOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 80
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/BarView;->mInBound:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v2

    iget-object v3, p0, Lio/github/rupinderjeet/kprogresshud/BarView;->mInBound:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v2

    iget-object v2, p0, Lio/github/rupinderjeet/kprogresshud/BarView;->mInnerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 81
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 85
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 86
    invoke-virtual {p0}, Lio/github/rupinderjeet/kprogresshud/BarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v1, v0}, Lio/github/rupinderjeet/kprogresshud/Helper;->dpToPixel(FLandroid/content/Context;)I

    move-result v0

    .line 87
    .local v0, "widthDimension":I
    invoke-virtual {p0}, Lio/github/rupinderjeet/kprogresshud/BarView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2, v1}, Lio/github/rupinderjeet/kprogresshud/Helper;->dpToPixel(FLandroid/content/Context;)I

    move-result v1

    .line 88
    .local v1, "heightDimension":I
    invoke-virtual {p0, v0, v1}, Lio/github/rupinderjeet/kprogresshud/BarView;->setMeasuredDimension(II)V

    .line 89
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 71
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 72
    invoke-virtual {p0}, Lio/github/rupinderjeet/kprogresshud/BarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1, v0}, Lio/github/rupinderjeet/kprogresshud/Helper;->dpToPixel(FLandroid/content/Context;)I

    move-result v0

    .line 73
    .local v0, "padding":I
    iget-object v1, p0, Lio/github/rupinderjeet/kprogresshud/BarView;->mBound:Landroid/graphics/RectF;

    int-to-float v2, v0

    int-to-float v3, v0

    sub-int v4, p1, v0

    int-to-float v4, v4

    sub-int v5, p2, v0

    int-to-float v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 74
    return-void
.end method

.method public setMax(I)V
    .locals 0
    .param p1, "max"    # I

    .line 93
    iput p1, p0, Lio/github/rupinderjeet/kprogresshud/BarView;->mMax:I

    .line 94
    return-void
.end method

.method public setProgress(I)V
    .locals 5
    .param p1, "progress"    # I

    .line 98
    iput p1, p0, Lio/github/rupinderjeet/kprogresshud/BarView;->mProgress:I

    .line 99
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/BarView;->mInBound:Landroid/graphics/RectF;

    iget v1, p0, Lio/github/rupinderjeet/kprogresshud/BarView;->mBoundGap:F

    .line 100
    invoke-virtual {p0}, Lio/github/rupinderjeet/kprogresshud/BarView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lio/github/rupinderjeet/kprogresshud/BarView;->mBoundGap:F

    sub-float/2addr v2, v3

    iget v3, p0, Lio/github/rupinderjeet/kprogresshud/BarView;->mProgress:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lio/github/rupinderjeet/kprogresshud/BarView;->mMax:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p0}, Lio/github/rupinderjeet/kprogresshud/BarView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lio/github/rupinderjeet/kprogresshud/BarView;->mBoundGap:F

    sub-float/2addr v3, v4

    .line 99
    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 101
    invoke-virtual {p0}, Lio/github/rupinderjeet/kprogresshud/BarView;->invalidate()V

    .line 102
    return-void
.end method
