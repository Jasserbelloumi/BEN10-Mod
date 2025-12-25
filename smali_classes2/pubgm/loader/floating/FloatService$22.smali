.class Lpubgm/loader/floating/FloatService$22;
.super Ljava/lang/Object;
.source "FloatService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpubgm/loader/floating/FloatService;->memory(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpubgm/loader/floating/FloatService;

.field final synthetic val$wideviewSeekBar:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Lpubgm/loader/floating/FloatService;Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "this$0"    # Lpubgm/loader/floating/FloatService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1631
    iput-object p1, p0, Lpubgm/loader/floating/FloatService$22;->this$0:Lpubgm/loader/floating/FloatService;

    iput-object p2, p0, Lpubgm/loader/floating/FloatService$22;->val$wideviewSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1634
    iget-object v0, p0, Lpubgm/loader/floating/FloatService$22;->this$0:Lpubgm/loader/floating/FloatService;

    iget-object v1, p0, Lpubgm/loader/floating/FloatService$22;->val$wideviewSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lpubgm/loader/floating/FloatService;->WideView(I)V

    .line 1635
    iget-object v0, p0, Lpubgm/loader/floating/FloatService$22;->this$0:Lpubgm/loader/floating/FloatService;

    iget-object v1, p0, Lpubgm/loader/floating/FloatService$22;->val$wideviewSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-static {v0, v1}, Lpubgm/loader/floating/FloatService;->access$2500(Lpubgm/loader/floating/FloatService;I)V

    .line 1636
    return-void
.end method
