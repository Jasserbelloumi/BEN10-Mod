.class final Lnl/joery/animatedbottombar/AnimatedBottomBar$initAdapter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AnimatedBottomBar.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/joery/animatedbottombar/AnimatedBottomBar;->initAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Integer;",
        "Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "newIndex",
        "",
        "newTab",
        "Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;",
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
.field final synthetic this$0:Lnl/joery/animatedbottombar/AnimatedBottomBar;


# direct methods
.method constructor <init>(Lnl/joery/animatedbottombar/AnimatedBottomBar;)V
    .locals 0

    iput-object p1, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar$initAdapter$2;->this$0:Lnl/joery/animatedbottombar/AnimatedBottomBar;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    invoke-virtual {p0, p1, p2}, Lnl/joery/animatedbottombar/AnimatedBottomBar$initAdapter$2;->invoke(ILnl/joery/animatedbottombar/AnimatedBottomBar$Tab;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ILnl/joery/animatedbottombar/AnimatedBottomBar$Tab;)V
    .locals 1
    .param p1, "newIndex"    # I
    .param p2, "newTab"    # Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    const-string v0, "newTab"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar$initAdapter$2;->this$0:Lnl/joery/animatedbottombar/AnimatedBottomBar;

    invoke-static {v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->access$getOnTabSelectListener$p(Lnl/joery/animatedbottombar/AnimatedBottomBar;)Lnl/joery/animatedbottombar/AnimatedBottomBar$OnTabSelectListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lnl/joery/animatedbottombar/AnimatedBottomBar$OnTabSelectListener;->onTabReselected(ILnl/joery/animatedbottombar/AnimatedBottomBar$Tab;)V

    .line 253
    :cond_0
    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar$initAdapter$2;->this$0:Lnl/joery/animatedbottombar/AnimatedBottomBar;

    invoke-virtual {v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getOnTabReselected()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-interface {v0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    return-void
.end method
