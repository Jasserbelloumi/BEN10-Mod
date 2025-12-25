.class Lpubgm/loader/activity/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$InstallTwitterBtn:Landroidx/appcompat/widget/AppCompatButton;

.field final synthetic val$Twitter:Ljava/lang/String;


# direct methods
.method constructor <init>(Lpubgm/loader/activity/MainActivity;Ljava/lang/String;Landroidx/appcompat/widget/AppCompatButton;)V
    .locals 0
    .param p1, "this$0"    # Lpubgm/loader/activity/MainActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 515
    iput-object p1, p0, Lpubgm/loader/activity/MainActivity$1;->this$0:Lpubgm/loader/activity/MainActivity;

    iput-object p2, p0, Lpubgm/loader/activity/MainActivity$1;->val$Twitter:Ljava/lang/String;

    iput-object p3, p0, Lpubgm/loader/activity/MainActivity$1;->val$InstallTwitterBtn:Landroidx/appcompat/widget/AppCompatButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 518
    invoke-static {}, Lpubgm/loader/libhelper/ApkEnv;->getInstance()Lpubgm/loader/libhelper/ApkEnv;

    move-result-object v0

    iget-object v1, p0, Lpubgm/loader/activity/MainActivity$1;->val$Twitter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lpubgm/loader/libhelper/ApkEnv;->isInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lpubgm/loader/activity/MainActivity$1;->val$InstallTwitterBtn:Landroidx/appcompat/widget/AppCompatButton;

    const-wide v1, -0x7dd88c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 520
    invoke-static {}, Lpubgm/loader/libhelper/ApkEnv;->getInstance()Lpubgm/loader/libhelper/ApkEnv;

    move-result-object v0

    iget-object v1, p0, Lpubgm/loader/activity/MainActivity$1;->val$Twitter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lpubgm/loader/libhelper/ApkEnv;->launchApk(Ljava/lang/String;)V

    goto :goto_1

    .line 522
    :cond_0
    sget-boolean v0, Lpubgm/loader/service/MainService;->isRunning:Z

    if-nez v0, :cond_1

    .line 523
    iget-object v0, p0, Lpubgm/loader/activity/MainActivity$1;->val$InstallTwitterBtn:Landroidx/appcompat/widget/AppCompatButton;

    const-wide v1, -0x7dc18c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 524
    iget-object v0, p0, Lpubgm/loader/activity/MainActivity$1;->this$0:Lpubgm/loader/activity/MainActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lpubgm/loader/activity/MainActivity$1;->val$Twitter:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lpubgm/loader/activity/MainActivity;->addAdditionalApp(ZLjava/lang/String;)V

    .line 525
    iget-object v0, p0, Lpubgm/loader/activity/MainActivity$1;->val$InstallTwitterBtn:Landroidx/appcompat/widget/AppCompatButton;

    const-wide v1, -0x7dc98c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 527
    :cond_1
    iget-object v0, p0, Lpubgm/loader/activity/MainActivity$1;->val$InstallTwitterBtn:Landroidx/appcompat/widget/AppCompatButton;

    const-wide v1, -0x7df28c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 528
    sget-boolean v0, Lpubgm/loader/service/MainService;->isRunning:Z

    if-eqz v0, :cond_3

    .line 529
    iget-object v0, p0, Lpubgm/loader/activity/MainActivity$1;->this$0:Lpubgm/loader/activity/MainActivity;

    iget-object v1, p0, Lpubgm/loader/activity/MainActivity$1;->val$Twitter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lpubgm/loader/activity/MainActivity;->stopRunningApp(Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lpubgm/loader/activity/MainActivity$1;->this$0:Lpubgm/loader/activity/MainActivity;

    invoke-static {v0}, Lpubgm/loader/activity/MainActivity;->access$000(Lpubgm/loader/activity/MainActivity;)V

    .line 531
    iget-object v0, p0, Lpubgm/loader/activity/MainActivity$1;->val$InstallTwitterBtn:Landroidx/appcompat/widget/AppCompatButton;

    invoke-static {}, Lpubgm/loader/libhelper/ApkEnv;->getInstance()Lpubgm/loader/libhelper/ApkEnv;

    move-result-object v1

    iget-object v2, p0, Lpubgm/loader/activity/MainActivity$1;->val$Twitter:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lpubgm/loader/libhelper/ApkEnv;->isInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-wide v1, -0x7df58c1d73e5L

    goto :goto_0

    :cond_2
    const-wide v1, -0x7dfe8c1d73e5L

    :goto_0
    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 535
    :cond_3
    :goto_1
    return-void
.end method
