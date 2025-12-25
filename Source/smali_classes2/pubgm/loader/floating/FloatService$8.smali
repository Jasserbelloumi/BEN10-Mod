.class Lpubgm/loader/floating/FloatService$8;
.super Ljava/lang/Object;
.source "FloatService.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpubgm/loader/floating/FloatService;->itemss(Landroid/widget/CheckBox;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpubgm/loader/floating/FloatService;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lpubgm/loader/floating/FloatService;Landroid/widget/CheckBox;)V
    .locals 0
    .param p1, "this$0"    # Lpubgm/loader/floating/FloatService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 680
    iput-object p1, p0, Lpubgm/loader/floating/FloatService$8;->this$0:Lpubgm/loader/floating/FloatService;

    iput-object p2, p0, Lpubgm/loader/floating/FloatService$8;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 683
    iget-object v0, p0, Lpubgm/loader/floating/FloatService$8;->this$0:Lpubgm/loader/floating/FloatService;

    iget-object v1, p0, Lpubgm/loader/floating/FloatService$8;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lpubgm/loader/floating/FloatService$8;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lpubgm/loader/floating/FloatService;->access$1100(Lpubgm/loader/floating/FloatService;Ljava/lang/String;Z)V

    .line 684
    return-void
.end method
