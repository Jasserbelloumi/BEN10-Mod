.class Lpubgm/loader/floating/FloatService$12;
.super Ljava/lang/Object;
.source "FloatService.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpubgm/loader/floating/FloatService;->visual(Landroid/view/View;)V
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

    .line 808
    iput-object p1, p0, Lpubgm/loader/floating/FloatService$12;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 811
    if-eqz p2, :cond_0

    .line 812
    iget-object v0, p0, Lpubgm/loader/floating/FloatService$12;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-static {v0}, Lpubgm/loader/floating/FloatService;->access$1200(Lpubgm/loader/floating/FloatService;)V

    goto :goto_0

    .line 814
    :cond_0
    iget-object v0, p0, Lpubgm/loader/floating/FloatService$12;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-static {v0}, Lpubgm/loader/floating/FloatService;->access$1300(Lpubgm/loader/floating/FloatService;)V

    .line 815
    iget-object v0, p0, Lpubgm/loader/floating/FloatService$12;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-static {v0}, Lpubgm/loader/floating/FloatService;->access$1400(Lpubgm/loader/floating/FloatService;)V

    .line 816
    iget-object v0, p0, Lpubgm/loader/floating/FloatService$12;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-static {v0}, Lpubgm/loader/floating/FloatService;->access$1500(Lpubgm/loader/floating/FloatService;)V

    .line 817
    iget-object v0, p0, Lpubgm/loader/floating/FloatService$12;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-static {v0}, Lpubgm/loader/floating/FloatService;->access$1600(Lpubgm/loader/floating/FloatService;)V

    .line 819
    :goto_0
    return-void
.end method
