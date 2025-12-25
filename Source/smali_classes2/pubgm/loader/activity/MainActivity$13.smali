.class Lpubgm/loader/activity/MainActivity$13;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpubgm/loader/activity/MainActivity;->addAdditionalApp(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpubgm/loader/activity/MainActivity;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lpubgm/loader/activity/MainActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lpubgm/loader/activity/MainActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1291
    iput-object p1, p0, Lpubgm/loader/activity/MainActivity$13;->this$0:Lpubgm/loader/activity/MainActivity;

    iput-object p2, p0, Lpubgm/loader/activity/MainActivity$13;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1294
    invoke-static {}, Lpubgm/loader/libhelper/ApkEnv;->getInstance()Lpubgm/loader/libhelper/ApkEnv;

    move-result-object v0

    iget-object v1, p0, Lpubgm/loader/activity/MainActivity$13;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lpubgm/loader/libhelper/ApkEnv;->isInstalled(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1295
    iget-object v0, p0, Lpubgm/loader/activity/MainActivity$13;->this$0:Lpubgm/loader/activity/MainActivity;

    invoke-virtual {v0, v1}, Lpubgm/loader/activity/MainActivity;->doShowProgress(Z)V

    goto :goto_0

    .line 1299
    :cond_0
    :try_start_0
    invoke-static {}, Lpubgm/loader/libhelper/ApkEnv;->getInstance()Lpubgm/loader/libhelper/ApkEnv;

    move-result-object v0

    iget-object v2, p0, Lpubgm/loader/activity/MainActivity$13;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lpubgm/loader/libhelper/ApkEnv;->installByPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1300
    iget-object v0, p0, Lpubgm/loader/activity/MainActivity$13;->this$0:Lpubgm/loader/activity/MainActivity;

    invoke-virtual {v0, v1}, Lpubgm/loader/activity/MainActivity;->doShowProgress(Z)V

    .line 1302
    const v0, 0x7f080163

    const-wide v1, -0x7de68c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lpubgm/loader/utils/ActivityCompat;->toastImage(ILjava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1307
    :cond_1
    goto :goto_0

    .line 1304
    :catch_0
    move-exception v0

    .line 1305
    .local v0, "err":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpubgm/loader/utils/FLog;->error(Ljava/lang/String;)V

    .line 1306
    iget-object v1, p0, Lpubgm/loader/activity/MainActivity$13;->this$0:Lpubgm/loader/activity/MainActivity;

    invoke-virtual {v1}, Lpubgm/loader/activity/MainActivity;->doHideProgress()V

    .line 1309
    .end local v0    # "err":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
