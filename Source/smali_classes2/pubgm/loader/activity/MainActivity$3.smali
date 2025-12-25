.class Lpubgm/loader/activity/MainActivity$3;
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

.field final synthetic val$FaceBook:Ljava/lang/String;

.field final synthetic val$installFbButton:Landroidx/appcompat/widget/AppCompatButton;


# direct methods
.method constructor <init>(Lpubgm/loader/activity/MainActivity;Ljava/lang/String;Landroidx/appcompat/widget/AppCompatButton;)V
    .locals 0
    .param p1, "this$0"    # Lpubgm/loader/activity/MainActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 550
    iput-object p1, p0, Lpubgm/loader/activity/MainActivity$3;->this$0:Lpubgm/loader/activity/MainActivity;

    iput-object p2, p0, Lpubgm/loader/activity/MainActivity$3;->val$FaceBook:Ljava/lang/String;

    iput-object p3, p0, Lpubgm/loader/activity/MainActivity$3;->val$installFbButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 553
    invoke-static {}, Lpubgm/loader/libhelper/ApkEnv;->getInstance()Lpubgm/loader/libhelper/ApkEnv;

    move-result-object v0

    iget-object v1, p0, Lpubgm/loader/activity/MainActivity$3;->val$FaceBook:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lpubgm/loader/libhelper/ApkEnv;->isInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lpubgm/loader/activity/MainActivity$3;->val$installFbButton:Landroidx/appcompat/widget/AppCompatButton;

    const-wide v1, -0x7d048c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 555
    invoke-static {}, Lpubgm/loader/libhelper/ApkEnv;->getInstance()Lpubgm/loader/libhelper/ApkEnv;

    move-result-object v0

    iget-object v1, p0, Lpubgm/loader/activity/MainActivity$3;->val$FaceBook:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lpubgm/loader/libhelper/ApkEnv;->launchApk(Ljava/lang/String;)V

    goto :goto_1

    .line 557
    :cond_0
    sget-boolean v0, Lpubgm/loader/service/MainService;->isRunning:Z

    if-eqz v0, :cond_1

    .line 558
    iget-object v0, p0, Lpubgm/loader/activity/MainActivity$3;->val$installFbButton:Landroidx/appcompat/widget/AppCompatButton;

    const-wide v1, -0x7d0d8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 559
    iget-object v0, p0, Lpubgm/loader/activity/MainActivity$3;->this$0:Lpubgm/loader/activity/MainActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lpubgm/loader/activity/MainActivity$3;->val$FaceBook:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lpubgm/loader/activity/MainActivity;->addAdditionalApp(ZLjava/lang/String;)V

    .line 560
    iget-object v0, p0, Lpubgm/loader/activity/MainActivity$3;->val$installFbButton:Landroidx/appcompat/widget/AppCompatButton;

    const-wide v1, -0x7d358c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 562
    :cond_1
    iget-object v0, p0, Lpubgm/loader/activity/MainActivity$3;->val$installFbButton:Landroidx/appcompat/widget/AppCompatButton;

    const-wide v1, -0x7d3e8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 563
    sget-boolean v0, Lpubgm/loader/service/MainService;->isRunning:Z

    if-eqz v0, :cond_3

    .line 564
    iget-object v0, p0, Lpubgm/loader/activity/MainActivity$3;->this$0:Lpubgm/loader/activity/MainActivity;

    iget-object v1, p0, Lpubgm/loader/activity/MainActivity$3;->val$FaceBook:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lpubgm/loader/activity/MainActivity;->stopRunningApp(Ljava/lang/String;)V

    .line 565
    iget-object v0, p0, Lpubgm/loader/activity/MainActivity$3;->this$0:Lpubgm/loader/activity/MainActivity;

    invoke-static {v0}, Lpubgm/loader/activity/MainActivity;->access$000(Lpubgm/loader/activity/MainActivity;)V

    .line 566
    iget-object v0, p0, Lpubgm/loader/activity/MainActivity$3;->val$installFbButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-static {}, Lpubgm/loader/libhelper/ApkEnv;->getInstance()Lpubgm/loader/libhelper/ApkEnv;

    move-result-object v1

    iget-object v2, p0, Lpubgm/loader/activity/MainActivity$3;->val$FaceBook:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lpubgm/loader/libhelper/ApkEnv;->isInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-wide v1, -0x7d218c1d73e5L

    goto :goto_0

    :cond_2
    const-wide v1, -0x7d2a8c1d73e5L

    :goto_0
    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 570
    :cond_3
    :goto_1
    return-void
.end method
