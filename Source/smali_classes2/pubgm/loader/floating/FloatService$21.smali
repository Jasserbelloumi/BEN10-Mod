.class Lpubgm/loader/floating/FloatService$21;
.super Ljava/lang/Object;
.source "FloatService.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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


# direct methods
.method constructor <init>(Lpubgm/loader/floating/FloatService;)V
    .locals 0
    .param p1, "this$0"    # Lpubgm/loader/floating/FloatService;

    .line 1620
    iput-object p1, p0, Lpubgm/loader/floating/FloatService$21;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 1623
    if-eqz p2, :cond_0

    .line 1624
    iget-object v0, p0, Lpubgm/loader/floating/FloatService$21;->this$0:Lpubgm/loader/floating/FloatService;

    const-wide v1, -0x71458c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpubgm/loader/floating/FloatService;->Execc(Ljava/lang/String;)V

    .line 1625
    iget-object v0, p0, Lpubgm/loader/floating/FloatService$21;->this$0:Lpubgm/loader/floating/FloatService;

    const-wide v1, -0x714f8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpubgm/loader/floating/FloatService;->Execc(Ljava/lang/String;)V

    .line 1627
    :cond_0
    return-void
.end method
