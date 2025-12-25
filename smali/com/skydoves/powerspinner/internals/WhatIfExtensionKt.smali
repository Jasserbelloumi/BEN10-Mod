.class public final Lcom/skydoves/powerspinner/internals/WhatIfExtensionKt;
.super Ljava/lang/Object;
.source "WhatIfExtension.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWhatIfExtension.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WhatIfExtension.kt\ncom/skydoves/powerspinner/internals/WhatIfExtensionKt\n*L\n1#1,54:1\n48#1,6:55\n*S KotlinDebug\n*F\n+ 1 WhatIfExtension.kt\ncom/skydoves/powerspinner/internals/WhatIfExtensionKt\n*L\n32#1:55,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a&\u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u00022\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u0004H\u0080\u0008\u00f8\u0001\u0000\u001a4\u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u00022\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0006H\u0080\u0008\u00f8\u0001\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0007"
    }
    d2 = {
        "whatIfNotNullOrEmpty",
        "",
        "",
        "whatIf",
        "Lkotlin/Function1;",
        "whatIfNot",
        "Lkotlin/Function0;",
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
.method public static final synthetic whatIfNotNullOrEmpty(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p0, "$this$whatIfNotNullOrEmpty"    # Ljava/lang/String;
    .param p1, "whatIf"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "whatIf"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 32
    .local v0, "$i$f$whatIfNotNullOrEmpty":I
    move-object v1, p0

    .local v1, "$this$whatIfNotNullOrEmpty$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 55
    .local v2, "$i$f$whatIfNotNullOrEmpty":I
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_2

    .line 56
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 58
    :cond_2
    const/4 v3, 0x0

    .line 34
    .local v3, "$i$a$-whatIfNotNullOrEmpty-WhatIfExtensionKt$whatIfNotNullOrEmpty$1":I
    nop

    .line 60
    .end local v3    # "$i$a$-whatIfNotNullOrEmpty-WhatIfExtensionKt$whatIfNotNullOrEmpty$1":I
    :goto_2
    nop

    .line 36
    .end local v1    # "$this$whatIfNotNullOrEmpty$iv":Ljava/lang/String;
    .end local v2    # "$i$f$whatIfNotNullOrEmpty":I
    return-void
.end method

.method public static final synthetic whatIfNotNullOrEmpty(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .param p0, "$this$whatIfNotNullOrEmpty"    # Ljava/lang/String;
    .param p1, "whatIf"    # Lkotlin/jvm/functions/Function1;
    .param p2, "whatIfNot"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "whatIf"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "whatIfNot"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 48
    .local v0, "$i$f$whatIfNotNullOrEmpty":I
    move-object v1, p0

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_2

    .line 49
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 51
    :cond_2
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 53
    :goto_2
    return-void
.end method
