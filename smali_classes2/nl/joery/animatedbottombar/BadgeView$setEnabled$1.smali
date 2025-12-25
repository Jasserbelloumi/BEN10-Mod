.class final Lnl/joery/animatedbottombar/BadgeView$setEnabled$1;
.super Ljava/lang/Object;
.source "BadgeView.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/joery/animatedbottombar/BadgeView;->setEnabled(Z)V
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
        "Landroid/animation/ValueAnimator;",
        "kotlin.jvm.PlatformType",
        "onAnimationUpdate"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnl/joery/animatedbottombar/BadgeView;


# direct methods
.method constructor <init>(Lnl/joery/animatedbottombar/BadgeView;)V
    .locals 0

    iput-object p1, p0, Lnl/joery/animatedbottombar/BadgeView$setEnabled$1;->this$0:Lnl/joery/animatedbottombar/BadgeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "it"    # Landroid/animation/ValueAnimator;

    .line 184
    iget-object v0, p0, Lnl/joery/animatedbottombar/BadgeView$setEnabled$1;->this$0:Lnl/joery/animatedbottombar/BadgeView;

    invoke-virtual {v0}, Lnl/joery/animatedbottombar/BadgeView;->getScaleLayout()Z

    move-result v0

    if-nez v0, :cond_3

    .line 185
    iget-object v0, p0, Lnl/joery/animatedbottombar/BadgeView$setEnabled$1;->this$0:Lnl/joery/animatedbottombar/BadgeView;

    invoke-virtual {v0}, Lnl/joery/animatedbottombar/BadgeView;->getAnimationType()Lnl/joery/animatedbottombar/AnimatedBottomBar$BadgeAnimation;

    move-result-object v0

    sget-object v1, Lnl/joery/animatedbottombar/BadgeView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar$BadgeAnimation;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const-string v1, "null cannot be cast to non-null type kotlin.Float"

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 193
    :pswitch_1
    iget-object v0, p0, Lnl/joery/animatedbottombar/BadgeView$setEnabled$1;->this$0:Lnl/joery/animatedbottombar/BadgeView;

    invoke-static {v0}, Lnl/joery/animatedbottombar/BadgeView;->access$getAnimator$p(Lnl/joery/animatedbottombar/BadgeView;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lnl/joery/animatedbottombar/BadgeView;->setAlpha(F)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :pswitch_2
    iget-object v0, p0, Lnl/joery/animatedbottombar/BadgeView$setEnabled$1;->this$0:Lnl/joery/animatedbottombar/BadgeView;

    invoke-static {v0}, Lnl/joery/animatedbottombar/BadgeView;->access$getAnimator$p(Lnl/joery/animatedbottombar/BadgeView;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, v2}, Lnl/joery/animatedbottombar/BadgeView;->setScaleX(F)V

    .line 190
    iget-object v0, p0, Lnl/joery/animatedbottombar/BadgeView$setEnabled$1;->this$0:Lnl/joery/animatedbottombar/BadgeView;

    invoke-static {v0}, Lnl/joery/animatedbottombar/BadgeView;->access$getAnimator$p(Lnl/joery/animatedbottombar/BadgeView;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lnl/joery/animatedbottombar/BadgeView;->setScaleY(F)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_3
    :goto_0
    nop

    .line 198
    iget-object v0, p0, Lnl/joery/animatedbottombar/BadgeView$setEnabled$1;->this$0:Lnl/joery/animatedbottombar/BadgeView;

    invoke-virtual {v0}, Lnl/joery/animatedbottombar/BadgeView;->requestLayout()V

    .line 199
    iget-object v0, p0, Lnl/joery/animatedbottombar/BadgeView$setEnabled$1;->this$0:Lnl/joery/animatedbottombar/BadgeView;

    invoke-virtual {v0}, Lnl/joery/animatedbottombar/BadgeView;->postInvalidate()V

    .line 200
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
