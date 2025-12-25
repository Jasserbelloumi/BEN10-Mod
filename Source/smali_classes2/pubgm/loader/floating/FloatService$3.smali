.class Lpubgm/loader/floating/FloatService$3;
.super Ljava/lang/Object;
.source "FloatService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpubgm/loader/floating/FloatService;->onTouchListener()Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final collapsedView:Landroid/view/View;

.field final expandedView:Landroid/view/View;

.field private initialTouchX:F

.field private initialTouchY:F

.field private initialX:I

.field private initialY:I

.field final synthetic this$0:Lpubgm/loader/floating/FloatService;


# direct methods
.method constructor <init>(Lpubgm/loader/floating/FloatService;)V
    .locals 1
    .param p1, "this$0"    # Lpubgm/loader/floating/FloatService;

    .line 308
    iput-object p1, p0, Lpubgm/loader/floating/FloatService$3;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    invoke-static {p1}, Lpubgm/loader/floating/FloatService;->access$100(Lpubgm/loader/floating/FloatService;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/FloatService$3;->collapsedView:Landroid/view/View;

    .line 310
    invoke-static {p1}, Lpubgm/loader/floating/FloatService;->access$000(Lpubgm/loader/floating/FloatService;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/FloatService$3;->expandedView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 319
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 343
    return v1

    .line 337
    :pswitch_0
    iget-object v0, p0, Lpubgm/loader/floating/FloatService$3;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-static {v0}, Lpubgm/loader/floating/FloatService;->access$800(Lpubgm/loader/floating/FloatService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/FloatService$3;->initialX:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v4, p0, Lpubgm/loader/floating/FloatService$3;->initialTouchX:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 338
    iget-object v0, p0, Lpubgm/loader/floating/FloatService$3;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-static {v0}, Lpubgm/loader/floating/FloatService;->access$800(Lpubgm/loader/floating/FloatService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/FloatService$3;->initialY:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, p0, Lpubgm/loader/floating/FloatService$3;->initialTouchY:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 339
    iget-object v0, p0, Lpubgm/loader/floating/FloatService$3;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-static {v0}, Lpubgm/loader/floating/FloatService;->access$1000(Lpubgm/loader/floating/FloatService;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lpubgm/loader/floating/FloatService$3;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-static {v1}, Lpubgm/loader/floating/FloatService;->access$200(Lpubgm/loader/floating/FloatService;)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lpubgm/loader/floating/FloatService$3;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-static {v3}, Lpubgm/loader/floating/FloatService;->access$800(Lpubgm/loader/floating/FloatService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
    return v2

    .line 327
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v3, p0, Lpubgm/loader/floating/FloatService$3;->initialTouchX:F

    sub-float/2addr v0, v3

    float-to-int v0, v0

    .line 328
    .local v0, "Xdiff":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, p0, Lpubgm/loader/floating/FloatService$3;->initialTouchY:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 329
    .local v3, "Ydiff":I
    const/16 v4, 0xa

    if-ge v0, v4, :cond_0

    if-ge v3, v4, :cond_0

    .line 330
    iget-object v4, p0, Lpubgm/loader/floating/FloatService$3;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-static {v4}, Lpubgm/loader/floating/FloatService;->access$900(Lpubgm/loader/floating/FloatService;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 331
    iget-object v4, p0, Lpubgm/loader/floating/FloatService$3;->collapsedView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 332
    iget-object v4, p0, Lpubgm/loader/floating/FloatService$3;->expandedView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 335
    :cond_0
    return v2

    .line 321
    .end local v0    # "Xdiff":I
    .end local v3    # "Ydiff":I
    :pswitch_2
    iget-object v0, p0, Lpubgm/loader/floating/FloatService$3;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-static {v0}, Lpubgm/loader/floating/FloatService;->access$800(Lpubgm/loader/floating/FloatService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, p0, Lpubgm/loader/floating/FloatService$3;->initialX:I

    .line 322
    iget-object v0, p0, Lpubgm/loader/floating/FloatService$3;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-static {v0}, Lpubgm/loader/floating/FloatService;->access$800(Lpubgm/loader/floating/FloatService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, p0, Lpubgm/loader/floating/FloatService$3;->initialY:I

    .line 323
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lpubgm/loader/floating/FloatService$3;->initialTouchX:F

    .line 324
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lpubgm/loader/floating/FloatService$3;->initialTouchY:F

    .line 325
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
