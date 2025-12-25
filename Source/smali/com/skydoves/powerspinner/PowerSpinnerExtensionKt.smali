.class public final Lcom/skydoves/powerspinner/PowerSpinnerExtensionKt;
.super Ljava/lang/Object;
.source "PowerSpinnerExtension.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u001a-\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0017\u0010\u0004\u001a\u0013\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0002\u0008\u0008H\u0087\u0008\u00f8\u0001\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\t"
    }
    d2 = {
        "createPowerSpinnerView",
        "Lcom/skydoves/powerspinner/PowerSpinnerView;",
        "context",
        "Landroid/content/Context;",
        "builder",
        "Lkotlin/Function1;",
        "Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
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
.method public static final synthetic createPowerSpinnerView(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)Lcom/skydoves/powerspinner/PowerSpinnerView;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "builder"    # Lkotlin/jvm/functions/Function1;
    .annotation runtime Lcom/skydoves/powerspinner/internals/PowerSpinnerDsl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/skydoves/powerspinner/PowerSpinnerView;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 31
    .local v0, "$i$f$createPowerSpinnerView":I
    new-instance v1, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    invoke-direct {v1, p0}, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;->build()Lcom/skydoves/powerspinner/PowerSpinnerView;

    move-result-object v1

    return-object v1
.end method
