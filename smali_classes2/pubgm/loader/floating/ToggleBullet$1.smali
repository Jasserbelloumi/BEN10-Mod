.class Lpubgm/loader/floating/ToggleBullet$1;
.super Ljava/lang/Object;
.source "ToggleBullet.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpubgm/loader/floating/ToggleBullet;->InitShowMainView()V
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

.field final synthetic this$0:Lpubgm/loader/floating/ToggleBullet;

.field final synthetic val$myImageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lpubgm/loader/floating/ToggleBullet;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lpubgm/loader/floating/ToggleBullet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lpubgm/loader/floating/ToggleBullet$1;->this$0:Lpubgm/loader/floating/ToggleBullet;

    iput-object p2, p0, Lpubgm/loader/floating/ToggleBullet$1;->val$myImageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 120
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 156
    return v1

    .line 151
    :pswitch_0
    iget-object v0, p0, Lpubgm/loader/floating/ToggleBullet$1;->this$0:Lpubgm/loader/floating/ToggleBullet;

    invoke-static {v0}, Lpubgm/loader/floating/ToggleBullet;->access$000(Lpubgm/loader/floating/ToggleBullet;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ToggleBullet$1;->initialX:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v4, p0, Lpubgm/loader/floating/ToggleBullet$1;->initialTouchX:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 152
    iget-object v0, p0, Lpubgm/loader/floating/ToggleBullet$1;->this$0:Lpubgm/loader/floating/ToggleBullet;

    invoke-static {v0}, Lpubgm/loader/floating/ToggleBullet;->access$000(Lpubgm/loader/floating/ToggleBullet;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ToggleBullet$1;->initialY:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, p0, Lpubgm/loader/floating/ToggleBullet$1;->initialTouchY:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 153
    iget-object v0, p0, Lpubgm/loader/floating/ToggleBullet$1;->this$0:Lpubgm/loader/floating/ToggleBullet;

    invoke-static {v0}, Lpubgm/loader/floating/ToggleBullet;->access$400(Lpubgm/loader/floating/ToggleBullet;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lpubgm/loader/floating/ToggleBullet$1;->this$0:Lpubgm/loader/floating/ToggleBullet;

    invoke-static {v1}, Lpubgm/loader/floating/ToggleBullet;->access$300(Lpubgm/loader/floating/ToggleBullet;)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lpubgm/loader/floating/ToggleBullet$1;->this$0:Lpubgm/loader/floating/ToggleBullet;

    invoke-static {v3}, Lpubgm/loader/floating/ToggleBullet;->access$000(Lpubgm/loader/floating/ToggleBullet;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    return v2

    .line 129
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v3, p0, Lpubgm/loader/floating/ToggleBullet$1;->initialTouchX:F

    sub-float/2addr v0, v3

    float-to-int v0, v0

    .line 130
    .local v0, "Xdiff":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, p0, Lpubgm/loader/floating/ToggleBullet$1;->initialTouchY:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 131
    .local v3, "Ydiff":I
    const/4 v4, 0x5

    if-ge v0, v4, :cond_1

    if-ge v3, v4, :cond_1

    .line 132
    iget-object v4, p0, Lpubgm/loader/floating/ToggleBullet$1;->this$0:Lpubgm/loader/floating/ToggleBullet;

    invoke-static {v4}, Lpubgm/loader/floating/ToggleBullet;->access$100(Lpubgm/loader/floating/ToggleBullet;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 133
    iget-object v4, p0, Lpubgm/loader/floating/ToggleBullet$1;->this$0:Lpubgm/loader/floating/ToggleBullet;

    invoke-static {v4}, Lpubgm/loader/floating/ToggleBullet;->access$200(Lpubgm/loader/floating/ToggleBullet;)Z

    move-result v4

    const/4 v5, 0x0

    const/high16 v6, -0x3dcc0000    # -45.0f

    if-nez v4, :cond_0

    .line 134
    iget-object v1, p0, Lpubgm/loader/floating/ToggleBullet$1;->this$0:Lpubgm/loader/floating/ToggleBullet;

    invoke-static {v1, v2}, Lpubgm/loader/floating/ToggleBullet;->access$202(Lpubgm/loader/floating/ToggleBullet;Z)Z

    .line 135
    iget-object v1, p0, Lpubgm/loader/floating/ToggleBullet$1;->this$0:Lpubgm/loader/floating/ToggleBullet;

    invoke-virtual {v1, v2}, Lpubgm/loader/floating/ToggleBullet;->ToggleBullet(Z)V

    .line 136
    iget-object v1, p0, Lpubgm/loader/floating/ToggleBullet$1;->val$myImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->rotationBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    .line 137
    iget-object v1, p0, Lpubgm/loader/floating/ToggleBullet$1;->val$myImageView:Landroid/widget/ImageView;

    const v4, 0x7f08007e

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 140
    :cond_0
    iget-object v4, p0, Lpubgm/loader/floating/ToggleBullet$1;->this$0:Lpubgm/loader/floating/ToggleBullet;

    invoke-static {v4, v1}, Lpubgm/loader/floating/ToggleBullet;->access$202(Lpubgm/loader/floating/ToggleBullet;Z)Z

    .line 141
    iget-object v4, p0, Lpubgm/loader/floating/ToggleBullet$1;->this$0:Lpubgm/loader/floating/ToggleBullet;

    invoke-virtual {v4, v1}, Lpubgm/loader/floating/ToggleBullet;->ToggleBullet(Z)V

    .line 142
    iget-object v1, p0, Lpubgm/loader/floating/ToggleBullet$1;->val$myImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->rotationBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    .line 143
    iget-object v1, p0, Lpubgm/loader/floating/ToggleBullet$1;->val$myImageView:Landroid/widget/ImageView;

    const v4, 0x7f08007d

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 148
    :cond_1
    :goto_0
    return v2

    .line 122
    .end local v0    # "Xdiff":I
    .end local v3    # "Ydiff":I
    :pswitch_2
    iget-object v0, p0, Lpubgm/loader/floating/ToggleBullet$1;->this$0:Lpubgm/loader/floating/ToggleBullet;

    invoke-static {v0}, Lpubgm/loader/floating/ToggleBullet;->access$000(Lpubgm/loader/floating/ToggleBullet;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, p0, Lpubgm/loader/floating/ToggleBullet$1;->initialX:I

    .line 123
    iget-object v0, p0, Lpubgm/loader/floating/ToggleBullet$1;->this$0:Lpubgm/loader/floating/ToggleBullet;

    invoke-static {v0}, Lpubgm/loader/floating/ToggleBullet;->access$000(Lpubgm/loader/floating/ToggleBullet;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, p0, Lpubgm/loader/floating/ToggleBullet$1;->initialY:I

    .line 124
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lpubgm/loader/floating/ToggleBullet$1;->initialTouchX:F

    .line 125
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lpubgm/loader/floating/ToggleBullet$1;->initialTouchY:F

    .line 126
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
