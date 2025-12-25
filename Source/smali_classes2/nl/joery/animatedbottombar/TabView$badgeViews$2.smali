.class final Lnl/joery/animatedbottombar/TabView$badgeViews$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TabView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/joery/animatedbottombar/TabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/ArrayList<",
        "Lnl/joery/animatedbottombar/BadgeView;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\"\u0012\u000c\u0012\n \u0003*\u0004\u0018\u00010\u00020\u00020\u0001j\u0010\u0012\u000c\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002`\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Ljava/util/ArrayList;",
        "Lnl/joery/animatedbottombar/BadgeView;",
        "kotlin.jvm.PlatformType",
        "Lkotlin/collections/ArrayList;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnl/joery/animatedbottombar/TabView;


# direct methods
.method constructor <init>(Lnl/joery/animatedbottombar/TabView;)V
    .locals 0

    iput-object p1, p0, Lnl/joery/animatedbottombar/TabView$badgeViews$2;->this$0:Lnl/joery/animatedbottombar/TabView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/TabView$badgeViews$2;->invoke()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lnl/joery/animatedbottombar/BadgeView;",
            ">;"
        }
    .end annotation

    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [Lnl/joery/animatedbottombar/BadgeView;

    iget-object v1, p0, Lnl/joery/animatedbottombar/TabView$badgeViews$2;->this$0:Lnl/joery/animatedbottombar/TabView;

    sget v2, Lnl/joery/animatedbottombar/R$id;->text_badge:I

    invoke-virtual {v1, v2}, Lnl/joery/animatedbottombar/TabView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnl/joery/animatedbottombar/BadgeView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lnl/joery/animatedbottombar/TabView$badgeViews$2;->this$0:Lnl/joery/animatedbottombar/TabView;

    sget v2, Lnl/joery/animatedbottombar/R$id;->icon_badge:I

    invoke-virtual {v1, v2}, Lnl/joery/animatedbottombar/TabView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnl/joery/animatedbottombar/BadgeView;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
