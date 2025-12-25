.class Lpubgm/loader/floating/FloatService$6;
.super Ljava/lang/Object;
.source "FloatService.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpubgm/loader/floating/FloatService;->setaim(Landroid/widget/Switch;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpubgm/loader/floating/FloatService;

.field final synthetic val$a:Landroid/widget/Switch;

.field final synthetic val$b:I


# direct methods
.method constructor <init>(Lpubgm/loader/floating/FloatService;Landroid/widget/Switch;I)V
    .locals 0
    .param p1, "this$0"    # Lpubgm/loader/floating/FloatService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 659
    iput-object p1, p0, Lpubgm/loader/floating/FloatService$6;->this$0:Lpubgm/loader/floating/FloatService;

    iput-object p2, p0, Lpubgm/loader/floating/FloatService$6;->val$a:Landroid/widget/Switch;

    iput p3, p0, Lpubgm/loader/floating/FloatService$6;->val$b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "p1"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 662
    iget-object v0, p0, Lpubgm/loader/floating/FloatService$6;->this$0:Lpubgm/loader/floating/FloatService;

    iget-object v1, p0, Lpubgm/loader/floating/FloatService$6;->val$a:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lpubgm/loader/floating/FloatService$6;->val$a:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lpubgm/loader/floating/FloatService;->access$1100(Lpubgm/loader/floating/FloatService;Ljava/lang/String;Z)V

    .line 663
    iget-object v0, p0, Lpubgm/loader/floating/FloatService$6;->this$0:Lpubgm/loader/floating/FloatService;

    iget v1, p0, Lpubgm/loader/floating/FloatService$6;->val$b:I

    iget-object v2, p0, Lpubgm/loader/floating/FloatService$6;->val$a:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lpubgm/loader/floating/FloatService;->SettingAim(IZ)V

    .line 664
    return-void
.end method
