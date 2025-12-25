.class Lpubgm/loader/floating/FloatService$14;
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

    .line 838
    iput-object p1, p0, Lpubgm/loader/floating/FloatService$14;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 841
    const/16 v0, 0x72

    if-eqz p2, :cond_0

    .line 842
    iget-object v1, p0, Lpubgm/loader/floating/FloatService$14;->this$0:Lpubgm/loader/floating/FloatService;

    const-wide v2, -0x719c8c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lpubgm/loader/floating/FloatService$14;->this$0:Lpubgm/loader/floating/FloatService;

    const v4, 0x7f130049

    invoke-virtual {v3, v4}, Lpubgm/loader/floating/FloatService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lpubgm/loader/floating/FloatService;->Exec(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    iget-object v1, p0, Lpubgm/loader/floating/FloatService$14;->this$0:Lpubgm/loader/floating/FloatService;

    const-wide v2, -0x71858c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lpubgm/loader/floating/FloatService;->Execc(Ljava/lang/String;)V

    .line 845
    iget-object v1, p0, Lpubgm/loader/floating/FloatService$14;->this$0:Lpubgm/loader/floating/FloatService;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lpubgm/loader/floating/FloatService;->SettingValue(IZ)V

    goto :goto_0

    .line 847
    :cond_0
    iget-object v1, p0, Lpubgm/loader/floating/FloatService$14;->this$0:Lpubgm/loader/floating/FloatService;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lpubgm/loader/floating/FloatService;->SettingValue(IZ)V

    .line 851
    :goto_0
    return-void
.end method
