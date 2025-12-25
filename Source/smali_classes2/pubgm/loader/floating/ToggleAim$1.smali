.class Lpubgm/loader/floating/ToggleAim$1;
.super Ljava/lang/Object;
.source "ToggleAim.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpubgm/loader/floating/ToggleAim;->InitShowMainView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private initialTouchX:F

.field private initialTouchY:F

.field private initialX:I

.field private initialY:I

.field final synthetic this$0:Lpubgm/loader/floating/ToggleAim;

.field final synthetic val$myImageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lpubgm/loader/floating/ToggleAim;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lpubgm/loader/floating/ToggleAim;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lpubgm/loader/floating/ToggleAim$1;->this$0:Lpubgm/loader/floating/ToggleAim;

    iput-object p2, p0, Lpubgm/loader/floating/ToggleAim$1;->val$myImageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 103
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 137
    return v1

    .line 132
    :pswitch_0
    iget-object v0, p0, Lpubgm/loader/floating/ToggleAim$1;->this$0:Lpubgm/loader/floating/ToggleAim;

    invoke-static {v0}, Lpubgm/loader/floating/ToggleAim;->access$000(Lpubgm/loader/floating/ToggleAim;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ToggleAim$1;->initialX:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v4, p0, Lpubgm/loader/floating/ToggleAim$1;->initialTouchX:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 133
    iget-object v0, p0, Lpubgm/loader/floating/ToggleAim$1;->this$0:Lpubgm/loader/floating/ToggleAim;

    invoke-static {v0}, Lpubgm/loader/floating/ToggleAim;->access$000(Lpubgm/loader/floating/ToggleAim;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ToggleAim$1;->initialY:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, p0, Lpubgm/loader/floating/ToggleAim$1;->initialTouchY:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 134
    iget-object v0, p0, Lpubgm/loader/floating/ToggleAim$1;->this$0:Lpubgm/loader/floating/ToggleAim;

    invoke-static {v0}, Lpubgm/loader/floating/ToggleAim;->access$400(Lpubgm/loader/floating/ToggleAim;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lpubgm/loader/floating/ToggleAim$1;->this$0:Lpubgm/loader/floating/ToggleAim;

    invoke-static {v1}, Lpubgm/loader/floating/ToggleAim;->access$300(Lpubgm/loader/floating/ToggleAim;)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lpubgm/loader/floating/ToggleAim$1;->this$0:Lpubgm/loader/floating/ToggleAim;

    invoke-static {v3}, Lpubgm/loader/floating/ToggleAim;->access$000(Lpubgm/loader/floating/ToggleAim;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    return v2

    .line 112
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v3, p0, Lpubgm/loader/floating/ToggleAim$1;->initialTouchX:F

    sub-float/2addr v0, v3

    float-to-int v0, v0

    .line 113
    .local v0, "Xdiff":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, p0, Lpubgm/loader/floating/ToggleAim$1;->initialTouchY:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 114
    .local v3, "Ydiff":I
    const/4 v4, 0x5

    if-ge v0, v4, :cond_1

    if-ge v3, v4, :cond_1

    .line 115
    iget-object v4, p0, Lpubgm/loader/floating/ToggleAim$1;->this$0:Lpubgm/loader/floating/ToggleAim;

    invoke-static {v4}, Lpubgm/loader/floating/ToggleAim;->access$100(Lpubgm/loader/floating/ToggleAim;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 116
    iget-object v4, p0, Lpubgm/loader/floating/ToggleAim$1;->this$0:Lpubgm/loader/floating/ToggleAim;

    invoke-static {v4}, Lpubgm/loader/floating/ToggleAim;->access$200(Lpubgm/loader/floating/ToggleAim;)Z

    move-result v4

    const/4 v5, 0x0

    const/high16 v6, -0x3dcc0000    # -45.0f

    if-nez v4, :cond_0

    .line 117
    iget-object v1, p0, Lpubgm/loader/floating/ToggleAim$1;->this$0:Lpubgm/loader/floating/ToggleAim;

    invoke-static {v1, v2}, Lpubgm/loader/floating/ToggleAim;->access$202(Lpubgm/loader/floating/ToggleAim;Z)Z

    .line 118
    iget-object v1, p0, Lpubgm/loader/floating/ToggleAim$1;->this$0:Lpubgm/loader/floating/ToggleAim;

    invoke-virtual {v1, v2}, Lpubgm/loader/floating/ToggleAim;->ToggleAim(Z)V

    .line 119
    iget-object v1, p0, Lpubgm/loader/floating/ToggleAim$1;->val$myImageView:Landroid/widget/ImageView;

    const v4, 0x7f0800df

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    iget-object v1, p0, Lpubgm/loader/floating/ToggleAim$1;->val$myImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->rotationBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 122
    :cond_0
    iget-object v4, p0, Lpubgm/loader/floating/ToggleAim$1;->this$0:Lpubgm/loader/floating/ToggleAim;

    invoke-static {v4, v1}, Lpubgm/loader/floating/ToggleAim;->access$202(Lpubgm/loader/floating/ToggleAim;Z)Z

    .line 123
    iget-object v4, p0, Lpubgm/loader/floating/ToggleAim$1;->this$0:Lpubgm/loader/floating/ToggleAim;

    invoke-virtual {v4, v1}, Lpubgm/loader/floating/ToggleAim;->ToggleAim(Z)V

    .line 124
    iget-object v1, p0, Lpubgm/loader/floating/ToggleAim$1;->val$myImageView:Landroid/widget/ImageView;

    const v4, 0x7f08010f

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 125
    iget-object v1, p0, Lpubgm/loader/floating/ToggleAim$1;->val$myImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->rotationBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    .line 129
    :cond_1
    :goto_0
    return v2

    .line 105
    .end local v0    # "Xdiff":I
    .end local v3    # "Ydiff":I
    :pswitch_2
    iget-object v0, p0, Lpubgm/loader/floating/ToggleAim$1;->this$0:Lpubgm/loader/floating/ToggleAim;

    invoke-static {v0}, Lpubgm/loader/floating/ToggleAim;->access$000(Lpubgm/loader/floating/ToggleAim;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, p0, Lpubgm/loader/floating/ToggleAim$1;->initialX:I

    .line 106
    iget-object v0, p0, Lpubgm/loader/floating/ToggleAim$1;->this$0:Lpubgm/loader/floating/ToggleAim;

    invoke-static {v0}, Lpubgm/loader/floating/ToggleAim;->access$000(Lpubgm/loader/floating/ToggleAim;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, p0, Lpubgm/loader/floating/ToggleAim$1;->initialY:I

    .line 107
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lpubgm/loader/floating/ToggleAim$1;->initialTouchX:F

    .line 108
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lpubgm/loader/floating/ToggleAim$1;->initialTouchY:F

    .line 109
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
