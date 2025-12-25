.class Lpubgm/loader/floating/FloatService$13;
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

    .line 825
    iput-object p1, p0, Lpubgm/loader/floating/FloatService$13;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 828
    if-eqz p2, :cond_0

    .line 829
    iget-object v0, p0, Lpubgm/loader/floating/FloatService$13;->this$0:Lpubgm/loader/floating/FloatService;

    const-wide v1, -0x71928c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lpubgm/loader/floating/FloatService$13;->this$0:Lpubgm/loader/floating/FloatService;

    const v3, 0x7f130144

    invoke-virtual {v2, v3}, Lpubgm/loader/floating/FloatService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lpubgm/loader/floating/FloatService;->Exec(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 831
    :cond_0
    iget-object v0, p0, Lpubgm/loader/floating/FloatService$13;->this$0:Lpubgm/loader/floating/FloatService;

    const-wide v1, -0x719b8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lpubgm/loader/floating/FloatService$13;->this$0:Lpubgm/loader/floating/FloatService;

    const v3, 0x7f130145

    invoke-virtual {v2, v3}, Lpubgm/loader/floating/FloatService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lpubgm/loader/floating/FloatService;->Exec(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    :goto_0
    return-void
.end method
