.class public final Lnl/joery/animatedbottombar/TabView$updateAnimations$$inlined$apply$lambda$2;
.super Ljava/lang/Object;
.source "TabView.kt"

# interfaces
.implements Lnl/joery/animatedbottombar/TabView$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/joery/animatedbottombar/TabView;->updateAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0006\u00b8\u0006\u0000"
    }
    d2 = {
        "nl/joery/animatedbottombar/TabView$updateAnimations$2$1",
        "Lnl/joery/animatedbottombar/TabView$AnimationListener;",
        "onAnimationEnd",
        "",
        "animation",
        "Landroid/view/animation/Animation;",
        "nl.joery.animatedbottombar.library"
    }
    k = 0x1
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

    iput-object p1, p0, Lnl/joery/animatedbottombar/TabView$updateAnimations$$inlined$apply$lambda$2;->this$0:Lnl/joery/animatedbottombar/TabView;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 243
    iget-object v0, p0, Lnl/joery/animatedbottombar/TabView$updateAnimations$$inlined$apply$lambda$2;->this$0:Lnl/joery/animatedbottombar/TabView;

    invoke-static {v0}, Lnl/joery/animatedbottombar/TabView;->access$getSelectedAnimatedView$p(Lnl/joery/animatedbottombar/TabView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 244
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 241
    invoke-static {p0, p1}, Lnl/joery/animatedbottombar/TabView$AnimationListener$DefaultImpls;->onAnimationRepeat(Lnl/joery/animatedbottombar/TabView$AnimationListener;Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 241
    invoke-static {p0, p1}, Lnl/joery/animatedbottombar/TabView$AnimationListener$DefaultImpls;->onAnimationStart(Lnl/joery/animatedbottombar/TabView$AnimationListener;Landroid/view/animation/Animation;)V

    return-void
.end method
