.class Lpubgm/loader/floating/ToggleSimulation$1;
.super Ljava/lang/Object;
.source "ToggleSimulation.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpubgm/loader/floating/ToggleSimulation;->InitShowMainView()V
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

.field final synthetic this$0:Lpubgm/loader/floating/ToggleSimulation;

.field final synthetic val$myImageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lpubgm/loader/floating/ToggleSimulation;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lpubgm/loader/floating/ToggleSimulation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 122
    iput-object p1, p0, Lpubgm/loader/floating/ToggleSimulation$1;->this$0:Lpubgm/loader/floating/ToggleSimulation;

    iput-object p2, p0, Lpubgm/loader/floating/ToggleSimulation$1;->val$myImageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 130
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-string v1, " Y:"

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    .line 174
    return v2

    .line 161
    :pswitch_0
    iget-object v0, p0, Lpubgm/loader/floating/ToggleSimulation$1;->this$0:Lpubgm/loader/floating/ToggleSimulation;

    invoke-static {v0}, Lpubgm/loader/floating/ToggleSimulation;->access$000(Lpubgm/loader/floating/ToggleSimulation;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v4, p0, Lpubgm/loader/floating/ToggleSimulation$1;->initialX:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iget v6, p0, Lpubgm/loader/floating/ToggleSimulation$1;->initialTouchX:F

    sub-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 162
    iget-object v0, p0, Lpubgm/loader/floating/ToggleSimulation$1;->this$0:Lpubgm/loader/floating/ToggleSimulation;

    invoke-static {v0}, Lpubgm/loader/floating/ToggleSimulation;->access$000(Lpubgm/loader/floating/ToggleSimulation;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v4, p0, Lpubgm/loader/floating/ToggleSimulation$1;->initialY:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iget v6, p0, Lpubgm/loader/floating/ToggleSimulation$1;->initialTouchY:F

    sub-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 165
    iget-object v0, p0, Lpubgm/loader/floating/ToggleSimulation$1;->this$0:Lpubgm/loader/floating/ToggleSimulation;

    invoke-static {v0}, Lpubgm/loader/floating/ToggleSimulation;->access$000(Lpubgm/loader/floating/ToggleSimulation;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v4, p0, Lpubgm/loader/floating/ToggleSimulation$1;->this$0:Lpubgm/loader/floating/ToggleSimulation;

    invoke-static {v4}, Lpubgm/loader/floating/ToggleSimulation;->access$000(Lpubgm/loader/floating/ToggleSimulation;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v5, p0, Lpubgm/loader/floating/ToggleSimulation$1;->this$0:Lpubgm/loader/floating/ToggleSimulation;

    invoke-static {v5}, Lpubgm/loader/floating/ToggleSimulation;->access$300(Lpubgm/loader/floating/ToggleSimulation;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 166
    iget-object v0, p0, Lpubgm/loader/floating/ToggleSimulation$1;->this$0:Lpubgm/loader/floating/ToggleSimulation;

    invoke-static {v0}, Lpubgm/loader/floating/ToggleSimulation;->access$000(Lpubgm/loader/floating/ToggleSimulation;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v4, p0, Lpubgm/loader/floating/ToggleSimulation$1;->this$0:Lpubgm/loader/floating/ToggleSimulation;

    invoke-static {v4}, Lpubgm/loader/floating/ToggleSimulation;->access$000(Lpubgm/loader/floating/ToggleSimulation;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v5, p0, Lpubgm/loader/floating/ToggleSimulation$1;->this$0:Lpubgm/loader/floating/ToggleSimulation;

    invoke-static {v5}, Lpubgm/loader/floating/ToggleSimulation;->access$400(Lpubgm/loader/floating/ToggleSimulation;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 168
    iget-object v0, p0, Lpubgm/loader/floating/ToggleSimulation$1;->this$0:Lpubgm/loader/floating/ToggleSimulation;

    invoke-static {v0}, Lpubgm/loader/floating/ToggleSimulation;->access$200(Lpubgm/loader/floating/ToggleSimulation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Touch position updated - X:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lpubgm/loader/floating/ToggleSimulation$1;->this$0:Lpubgm/loader/floating/ToggleSimulation;

    invoke-static {v2}, Lpubgm/loader/floating/ToggleSimulation;->access$000(Lpubgm/loader/floating/ToggleSimulation;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lpubgm/loader/floating/ToggleSimulation$1;->this$0:Lpubgm/loader/floating/ToggleSimulation;

    invoke-static {v1}, Lpubgm/loader/floating/ToggleSimulation;->access$000(Lpubgm/loader/floating/ToggleSimulation;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpubgm/loader/utils/FLog;->debug(Ljava/lang/String;)V

    .line 171
    :cond_0
    iget-object v0, p0, Lpubgm/loader/floating/ToggleSimulation$1;->this$0:Lpubgm/loader/floating/ToggleSimulation;

    invoke-static {v0}, Lpubgm/loader/floating/ToggleSimulation;->access$600(Lpubgm/loader/floating/ToggleSimulation;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lpubgm/loader/floating/ToggleSimulation$1;->this$0:Lpubgm/loader/floating/ToggleSimulation;

    invoke-static {v1}, Lpubgm/loader/floating/ToggleSimulation;->access$500(Lpubgm/loader/floating/ToggleSimulation;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lpubgm/loader/floating/ToggleSimulation$1;->this$0:Lpubgm/loader/floating/ToggleSimulation;

    invoke-static {v2}, Lpubgm/loader/floating/ToggleSimulation;->access$000(Lpubgm/loader/floating/ToggleSimulation;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    return v3

    .line 139
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v4, p0, Lpubgm/loader/floating/ToggleSimulation$1;->initialTouchX:F

    sub-float/2addr v0, v4

    float-to-int v0, v0

    .line 140
    .local v0, "Xdiff":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget v5, p0, Lpubgm/loader/floating/ToggleSimulation$1;->initialTouchY:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    .line 141
    .local v4, "Ydiff":I
    const/4 v5, 0x5

    if-ge v0, v5, :cond_2

    if-ge v4, v5, :cond_2

    .line 142
    iget-object v5, p0, Lpubgm/loader/floating/ToggleSimulation$1;->this$0:Lpubgm/loader/floating/ToggleSimulation;

    invoke-static {v5}, Lpubgm/loader/floating/ToggleSimulation;->access$100(Lpubgm/loader/floating/ToggleSimulation;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    .line 143
    iget-object v5, p0, Lpubgm/loader/floating/ToggleSimulation$1;->this$0:Lpubgm/loader/floating/ToggleSimulation;

    invoke-static {v5}, Lpubgm/loader/floating/ToggleSimulation;->access$200(Lpubgm/loader/floating/ToggleSimulation;)Z

    move-result v5

    const/4 v6, 0x0

    const/high16 v7, -0x3dcc0000    # -45.0f

    if-nez v5, :cond_1

    .line 144
    iget-object v2, p0, Lpubgm/loader/floating/ToggleSimulation$1;->this$0:Lpubgm/loader/floating/ToggleSimulation;

    invoke-static {v2, v3}, Lpubgm/loader/floating/ToggleSimulation;->access$202(Lpubgm/loader/floating/ToggleSimulation;Z)Z

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ToggleSimulation enabled - X:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lpubgm/loader/floating/ToggleSimulation$1;->this$0:Lpubgm/loader/floating/ToggleSimulation;

    invoke-static {v5}, Lpubgm/loader/floating/ToggleSimulation;->access$000(Lpubgm/loader/floating/ToggleSimulation;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lpubgm/loader/floating/ToggleSimulation$1;->this$0:Lpubgm/loader/floating/ToggleSimulation;

    invoke-static {v2}, Lpubgm/loader/floating/ToggleSimulation;->access$000(Lpubgm/loader/floating/ToggleSimulation;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Screen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lpubgm/loader/floating/ToggleSimulation$1;->this$0:Lpubgm/loader/floating/ToggleSimulation;

    invoke-static {v2}, Lpubgm/loader/floating/ToggleSimulation;->access$300(Lpubgm/loader/floating/ToggleSimulation;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lpubgm/loader/floating/ToggleSimulation$1;->this$0:Lpubgm/loader/floating/ToggleSimulation;

    invoke-static {v2}, Lpubgm/loader/floating/ToggleSimulation;->access$400(Lpubgm/loader/floating/ToggleSimulation;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpubgm/loader/utils/FLog;->debug(Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lpubgm/loader/floating/ToggleSimulation$1;->this$0:Lpubgm/loader/floating/ToggleSimulation;

    invoke-virtual {v1, v3}, Lpubgm/loader/floating/ToggleSimulation;->ToggleSimulation(Z)V

    .line 147
    iget-object v1, p0, Lpubgm/loader/floating/ToggleSimulation$1;->val$myImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->rotationBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    .line 148
    iget-object v1, p0, Lpubgm/loader/floating/ToggleSimulation$1;->val$myImageView:Landroid/widget/ImageView;

    const v2, 0x7f080116

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 150
    :cond_1
    iget-object v1, p0, Lpubgm/loader/floating/ToggleSimulation$1;->this$0:Lpubgm/loader/floating/ToggleSimulation;

    invoke-static {v1, v2}, Lpubgm/loader/floating/ToggleSimulation;->access$202(Lpubgm/loader/floating/ToggleSimulation;Z)Z

    .line 151
    const-string v1, "ToggleSimulation disabled"

    invoke-static {v1}, Lpubgm/loader/utils/FLog;->debug(Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lpubgm/loader/floating/ToggleSimulation$1;->this$0:Lpubgm/loader/floating/ToggleSimulation;

    invoke-virtual {v1, v2}, Lpubgm/loader/floating/ToggleSimulation;->ToggleSimulation(Z)V

    .line 153
    iget-object v1, p0, Lpubgm/loader/floating/ToggleSimulation$1;->val$myImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/ViewPropertyAnimator;->rotationBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    .line 154
    iget-object v1, p0, Lpubgm/loader/floating/ToggleSimulation$1;->val$myImageView:Landroid/widget/ImageView;

    const v2, 0x7f080115

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 158
    :cond_2
    :goto_0
    return v3

    .line 132
    .end local v0    # "Xdiff":I
    .end local v4    # "Ydiff":I
    :pswitch_2
    iget-object v0, p0, Lpubgm/loader/floating/ToggleSimulation$1;->this$0:Lpubgm/loader/floating/ToggleSimulation;

    invoke-static {v0}, Lpubgm/loader/floating/ToggleSimulation;->access$000(Lpubgm/loader/floating/ToggleSimulation;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, p0, Lpubgm/loader/floating/ToggleSimulation$1;->initialX:I

    .line 133
    iget-object v0, p0, Lpubgm/loader/floating/ToggleSimulation$1;->this$0:Lpubgm/loader/floating/ToggleSimulation;

    invoke-static {v0}, Lpubgm/loader/floating/ToggleSimulation;->access$000(Lpubgm/loader/floating/ToggleSimulation;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, p0, Lpubgm/loader/floating/ToggleSimulation$1;->initialY:I

    .line 134
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lpubgm/loader/floating/ToggleSimulation$1;->initialTouchX:F

    .line 135
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lpubgm/loader/floating/ToggleSimulation$1;->initialTouchY:F

    .line 136
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
