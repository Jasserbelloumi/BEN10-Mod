.class Lpubgm/loader/floating/FloatService$11;
.super Ljava/lang/Object;
.source "FloatService.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpubgm/loader/floating/FloatService;->setupSeekBar(Landroid/widget/SeekBar;Landroid/widget/TextView;ILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpubgm/loader/floating/FloatService;

.field final synthetic val$onChangeFunction:Ljava/lang/Runnable;

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lpubgm/loader/floating/FloatService;Landroid/widget/TextView;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lpubgm/loader/floating/FloatService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 725
    iput-object p1, p0, Lpubgm/loader/floating/FloatService$11;->this$0:Lpubgm/loader/floating/FloatService;

    iput-object p2, p0, Lpubgm/loader/floating/FloatService$11;->val$textView:Landroid/widget/TextView;

    iput-object p3, p0, Lpubgm/loader/floating/FloatService$11;->val$onChangeFunction:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .line 728
    iget-object v0, p0, Lpubgm/loader/floating/FloatService$11;->val$textView:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 729
    iget-object v0, p0, Lpubgm/loader/floating/FloatService$11;->val$onChangeFunction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 730
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 734
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 738
    return-void
.end method
