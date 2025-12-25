.class public final Lnl/joery/animatedbottombar/utils/ExtensionsKt;
.super Ljava/lang/Object;
.source "Extensions.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Extensions.kt\nnl/joery/animatedbottombar/utils/ExtensionsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,51:1\n1#2:52\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\u000c\u0010\u0006\u001a\u00020\u0007*\u00020\u0008H\u0000\u001a\u0016\u0010\t\u001a\u00020\u0001*\u00020\n2\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u0001H\u0001\u001a\u0014\u0010\u000c\u001a\u00020\u0001*\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0001H\u0000\u001a\u0016\u0010\r\u001a\u00020\u0001*\u00020\n2\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u0001H\u0001\"\u0018\u0010\u0000\u001a\u00020\u0001*\u00020\u00018@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0002\u0010\u0003\"\u0018\u0010\u0004\u001a\u00020\u0001*\u00020\u00018@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0003\u00a8\u0006\u000e"
    }
    d2 = {
        "dpPx",
        "",
        "getDpPx",
        "(I)I",
        "spPx",
        "getSpPx",
        "fixDurationScale",
        "",
        "Landroid/animation/ValueAnimator;",
        "getColorResCompat",
        "Landroid/content/Context;",
        "id",
        "getResourceId",
        "getTextColor",
        "nl.joery.animatedbottombar.library"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public static final fixDurationScale(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p0, "$this$fixDurationScale"    # Landroid/animation/ValueAnimator;

    const-string v0, "$this$fixDurationScale"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    nop

    .line 39
    nop

    .line 42
    nop

    .line 39
    :try_start_0
    const-class v0, Landroid/animation/ValueAnimator;

    .line 40
    const-string v1, "setDurationScale"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 41
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 39
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 42
    new-array v1, v2, [Ljava/lang/Object;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    :goto_0
    nop

    .line 45
    return-void
.end method

.method public static final getColorResCompat(Landroid/content/Context;I)I
    .locals 1
    .param p0, "$this$getColorResCompat"    # Landroid/content/Context;
    .param p1, "id"    # I

    const-string v0, "$this$getColorResCompat"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {p0, p1}, Lnl/joery/animatedbottombar/utils/ExtensionsKt;->getResourceId(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static final getDpPx(I)I
    .locals 3
    .param p0, "$this$dpPx"    # I

    .line 48
    int-to-float v0, p0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "Resources.getSystem()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    return v0
.end method

.method public static final getResourceId(Landroid/content/Context;I)I
    .locals 4
    .param p0, "$this$getResourceId"    # Landroid/content/Context;
    .param p1, "id"    # I

    const-string v0, "$this$getResourceId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 33
    .local v0, "resolvedAttr":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 34
    move-object v1, v0

    .line 52
    .local v1, "$this$run":Landroid/util/TypedValue;
    const/4 v2, 0x0

    .line 34
    .local v2, "$i$a$-run-ExtensionsKt$getResourceId$1":I
    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v3, :cond_0

    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0

    :cond_0
    iget v3, v1, Landroid/util/TypedValue;->data:I

    .end local v1    # "$this$run":Landroid/util/TypedValue;
    .end local v2    # "$i$a$-run-ExtensionsKt$getResourceId$1":I
    :goto_0
    return v3
.end method

.method public static final getSpPx(I)I
    .locals 3
    .param p0, "$this$spPx"    # I

    .line 51
    int-to-float v0, p0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "Resources.getSystem()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    return v0
.end method

.method public static final getTextColor(Landroid/content/Context;I)I
    .locals 4
    .param p0, "$this$getTextColor"    # Landroid/content/Context;
    .param p1, "id"    # I

    const-string v0, "$this$getTextColor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 20
    .local v0, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 21
    nop

    .line 22
    iget v1, v0, Landroid/util/TypedValue;->data:I

    new-array v2, v2, [I

    .line 23
    const/4 v3, 0x0

    aput p1, v2, v3

    .line 22
    nop

    .line 21
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 26
    .local v1, "arr":Landroid/content/res/TypedArray;
    const/4 v2, -0x1

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 27
    .local v2, "color":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 28
    return v2
.end method
