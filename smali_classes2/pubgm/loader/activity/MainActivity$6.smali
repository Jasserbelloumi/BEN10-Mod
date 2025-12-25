.class Lpubgm/loader/activity/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpubgm/loader/activity/MainActivity;->initMenu2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpubgm/loader/activity/MainActivity;

.field final synthetic val$InstallGlobalBtn:Landroidx/appcompat/widget/AppCompatButton;

.field final synthetic val$packageNameGl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lpubgm/loader/activity/MainActivity;Ljava/lang/String;Landroidx/appcompat/widget/AppCompatButton;)V
    .locals 0
    .param p1, "this$0"    # Lpubgm/loader/activity/MainActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 678
    iput-object p1, p0, Lpubgm/loader/activity/MainActivity$6;->this$0:Lpubgm/loader/activity/MainActivity;

    iput-object p2, p0, Lpubgm/loader/activity/MainActivity$6;->val$packageNameGl:Ljava/lang/String;

    iput-object p3, p0, Lpubgm/loader/activity/MainActivity$6;->val$InstallGlobalBtn:Landroidx/appcompat/widget/AppCompatButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 681
    invoke-static {}, Lpubgm/loader/libhelper/ApkEnv;->getInstance()Lpubgm/loader/libhelper/ApkEnv;

    move-result-object v0

    iget-object v1, p0, Lpubgm/loader/activity/MainActivity$6;->val$packageNameGl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lpubgm/loader/libhelper/ApkEnv;->isInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lpubgm/loader/activity/MainActivity$6;->this$0:Lpubgm/loader/activity/MainActivity;

    iget-object v1, p0, Lpubgm/loader/activity/MainActivity$6;->val$packageNameGl:Ljava/lang/String;

    invoke-static {v0, v1}, Lpubgm/loader/activity/MainActivity;->access$100(Lpubgm/loader/activity/MainActivity;Ljava/lang/String;)V

    .line 683
    iget-object v0, p0, Lpubgm/loader/activity/MainActivity$6;->val$InstallGlobalBtn:Landroidx/appcompat/widget/AppCompatButton;

    const-wide v1, -0x7ec28c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 684
    const/4 v0, 0x1

    return v0

    .line 686
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
