.class final Lnl/joery/animatedbottombar/TabAdapter$TabHolder$1;
.super Ljava/lang/Object;
.source "TabAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/joery/animatedbottombar/TabAdapter$TabHolder;-><init>(Lnl/joery/animatedbottombar/TabAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnl/joery/animatedbottombar/TabAdapter$TabHolder;


# direct methods
.method constructor <init>(Lnl/joery/animatedbottombar/TabAdapter$TabHolder;)V
    .locals 0

    iput-object p1, p0, Lnl/joery/animatedbottombar/TabAdapter$TabHolder$1;->this$0:Lnl/joery/animatedbottombar/TabAdapter$TabHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "it"    # Landroid/view/View;

    .line 156
    iget-object v0, p0, Lnl/joery/animatedbottombar/TabAdapter$TabHolder$1;->this$0:Lnl/joery/animatedbottombar/TabAdapter$TabHolder;

    iget-object v0, v0, Lnl/joery/animatedbottombar/TabAdapter$TabHolder;->this$0:Lnl/joery/animatedbottombar/TabAdapter;

    iget-object v1, p0, Lnl/joery/animatedbottombar/TabAdapter$TabHolder$1;->this$0:Lnl/joery/animatedbottombar/TabAdapter$TabHolder;

    iget-object v1, v1, Lnl/joery/animatedbottombar/TabAdapter$TabHolder;->this$0:Lnl/joery/animatedbottombar/TabAdapter;

    invoke-virtual {v1}, Lnl/joery/animatedbottombar/TabAdapter;->getTabs()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lnl/joery/animatedbottombar/TabAdapter$TabHolder$1;->this$0:Lnl/joery/animatedbottombar/TabAdapter$TabHolder;

    invoke-virtual {v2}, Lnl/joery/animatedbottombar/TabAdapter$TabHolder;->getAdapterPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "tabs[adapterPosition]"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lnl/joery/animatedbottombar/TabAdapter;->selectTab(Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;Z)V

    .line 157
    return-void
.end method
