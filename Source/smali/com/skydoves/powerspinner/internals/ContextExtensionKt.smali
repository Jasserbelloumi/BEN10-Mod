.class public final Lcom/skydoves/powerspinner/internals/ContextExtensionKt;
.super Ljava/lang/Object;
.source "ContextExtension.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0004H\u0000\u001a\u0014\u0010\u0005\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0007H\u0000\u001a\u0014\u0010\u0005\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0004H\u0000\u001a\u0014\u0010\u0005\u001a\u00020\u0004*\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u0007H\u0000\u001a\u0014\u0010\u0005\u001a\u00020\u0004*\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u0004H\u0000\u00a8\u0006\t"
    }
    d2 = {
        "contextDrawable",
        "Landroid/graphics/drawable/Drawable;",
        "Landroid/content/Context;",
        "resource",
        "",
        "dp2Px",
        "dp",
        "",
        "Landroid/view/View;",
        "powerspinner_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic contextDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "$this$contextDrawable"    # Landroid/content/Context;
    .param p1, "resource"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic dp2Px(Landroid/content/Context;F)I
    .locals 2
    .param p0, "$this$dp2Px"    # Landroid/content/Context;
    .param p1, "dp"    # F

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 42
    .local v0, "scale":F
    mul-float v1, p1, v0

    float-to-int v1, v1

    return v1
.end method

.method public static final synthetic dp2Px(Landroid/content/Context;I)I
    .locals 2
    .param p0, "$this$dp2Px"    # Landroid/content/Context;
    .param p1, "dp"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 29
    .local v0, "scale":F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method public static final synthetic dp2Px(Landroid/view/View;F)I
    .locals 2
    .param p0, "$this$dp2Px"    # Landroid/view/View;
    .param p1, "dp"    # F

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/skydoves/powerspinner/internals/ContextExtensionKt;->dp2Px(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method public static final synthetic dp2Px(Landroid/view/View;I)I
    .locals 2
    .param p0, "$this$dp2Px"    # Landroid/view/View;
    .param p1, "dp"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/skydoves/powerspinner/internals/ContextExtensionKt;->dp2Px(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method
