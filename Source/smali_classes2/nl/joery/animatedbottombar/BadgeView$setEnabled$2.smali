.class public final Lnl/joery/animatedbottombar/BadgeView$setEnabled$2;
.super Ljava/lang/Object;
.source "BadgeView.kt"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/joery/animatedbottombar/BadgeView;->setEnabled(Z)V
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
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0007\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0008\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "nl/joery/animatedbottombar/BadgeView$setEnabled$2",
        "Landroid/animation/Animator$AnimatorListener;",
        "onAnimationCancel",
        "",
        "animation",
        "Landroid/animation/Animator;",
        "onAnimationEnd",
        "onAnimationRepeat",
        "onAnimationStart",
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
.field final synthetic this$0:Lnl/joery/animatedbottombar/BadgeView;


# direct methods
.method constructor <init>(Lnl/joery/animatedbottombar/BadgeView;)V
    .locals 0
    .param p1, "this$0"    # Lnl/joery/animatedbottombar/BadgeView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 201
    iput-object p1, p0, Lnl/joery/animatedbottombar/BadgeView$setEnabled$2;->this$0:Lnl/joery/animatedbottombar/BadgeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 224
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 206
    iget-object v0, p0, Lnl/joery/animatedbottombar/BadgeView$setEnabled$2;->this$0:Lnl/joery/animatedbottombar/BadgeView;

    invoke-virtual {v0}, Lnl/joery/animatedbottombar/BadgeView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lnl/joery/animatedbottombar/BadgeView$setEnabled$2;->this$0:Lnl/joery/animatedbottombar/BadgeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lnl/joery/animatedbottombar/BadgeView;->setVisibility(I)V

    .line 210
    :cond_0
    iget-object v0, p0, Lnl/joery/animatedbottombar/BadgeView$setEnabled$2;->this$0:Lnl/joery/animatedbottombar/BadgeView;

    invoke-virtual {v0}, Lnl/joery/animatedbottombar/BadgeView;->getAnimationType()Lnl/joery/animatedbottombar/AnimatedBottomBar$BadgeAnimation;

    move-result-object v0

    sget-object v1, Lnl/joery/animatedbottombar/BadgeView$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar$BadgeAnimation;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 218
    :pswitch_1
    iget-object v0, p0, Lnl/joery/animatedbottombar/BadgeView$setEnabled$2;->this$0:Lnl/joery/animatedbottombar/BadgeView;

    invoke-virtual {v0, v1}, Lnl/joery/animatedbottombar/BadgeView;->setAlpha(F)V

    goto :goto_0

    .line 214
    :pswitch_2
    iget-object v0, p0, Lnl/joery/animatedbottombar/BadgeView$setEnabled$2;->this$0:Lnl/joery/animatedbottombar/BadgeView;

    invoke-virtual {v0, v1}, Lnl/joery/animatedbottombar/BadgeView;->setScaleX(F)V

    .line 215
    iget-object v0, p0, Lnl/joery/animatedbottombar/BadgeView$setEnabled$2;->this$0:Lnl/joery/animatedbottombar/BadgeView;

    invoke-virtual {v0, v1}, Lnl/joery/animatedbottombar/BadgeView;->setScaleY(F)V

    .line 220
    :goto_0
    nop

    .line 221
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 203
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 227
    iget-object v0, p0, Lnl/joery/animatedbottombar/BadgeView$setEnabled$2;->this$0:Lnl/joery/animatedbottombar/BadgeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnl/joery/animatedbottombar/BadgeView;->setVisibility(I)V

    .line 228
    return-void
.end method
