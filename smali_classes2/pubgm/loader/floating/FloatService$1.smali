.class Lpubgm/loader/floating/FloatService$1;
.super Ljava/lang/Object;
.source "FloatService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpubgm/loader/floating/FloatService;->InitShowMainView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpubgm/loader/floating/FloatService;


# direct methods
.method constructor <init>(Lpubgm/loader/floating/FloatService;)V
    .locals 0
    .param p1, "this$0"    # Lpubgm/loader/floating/FloatService;

    .line 206
    iput-object p1, p0, Lpubgm/loader/floating/FloatService$1;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "p1"    # Landroid/view/View;

    .line 209
    iget-object v0, p0, Lpubgm/loader/floating/FloatService$1;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-static {v0}, Lpubgm/loader/floating/FloatService;->access$000(Lpubgm/loader/floating/FloatService;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lpubgm/loader/floating/FloatService$1;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-static {v0}, Lpubgm/loader/floating/FloatService;->access$100(Lpubgm/loader/floating/FloatService;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 211
    return-void
.end method
