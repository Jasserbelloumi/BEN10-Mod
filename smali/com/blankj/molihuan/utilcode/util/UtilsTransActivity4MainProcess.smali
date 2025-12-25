.class public Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity4MainProcess;
.super Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity;
.source "UtilsTransActivity4MainProcess.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity;-><init>()V

    return-void
.end method

.method public static start(Landroid/app/Activity;Lcom/blankj/molihuan/utilcode/util/Utils$Consumer;Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity$TransActivityDelegate;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p2, "delegate"    # Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity$TransActivityDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/blankj/molihuan/utilcode/util/Utils$Consumer<",
            "Landroid/content/Intent;",
            ">;",
            "Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity$TransActivityDelegate;",
            ")V"
        }
    .end annotation

    .line 33
    .local p1, "consumer":Lcom/blankj/molihuan/utilcode/util/Utils$Consumer;, "Lcom/blankj/molihuan/utilcode/util/Utils$Consumer<Landroid/content/Intent;>;"
    const-class v0, Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity4MainProcess;

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity4MainProcess;->start(Landroid/app/Activity;Lcom/blankj/molihuan/utilcode/util/Utils$Consumer;Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity$TransActivityDelegate;Ljava/lang/Class;)V

    .line 34
    return-void
.end method

.method public static start(Landroid/app/Activity;Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity$TransActivityDelegate;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "delegate"    # Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity$TransActivityDelegate;

    .line 27
    const-class v0, Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity4MainProcess;

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0}, Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity4MainProcess;->start(Landroid/app/Activity;Lcom/blankj/molihuan/utilcode/util/Utils$Consumer;Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity$TransActivityDelegate;Ljava/lang/Class;)V

    .line 28
    return-void
.end method

.method public static start(Lcom/blankj/molihuan/utilcode/util/Utils$Consumer;Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity$TransActivityDelegate;)V
    .locals 2
    .param p1, "delegate"    # Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity$TransActivityDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blankj/molihuan/utilcode/util/Utils$Consumer<",
            "Landroid/content/Intent;",
            ">;",
            "Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity$TransActivityDelegate;",
            ")V"
        }
    .end annotation

    .line 22
    .local p0, "consumer":Lcom/blankj/molihuan/utilcode/util/Utils$Consumer;, "Lcom/blankj/molihuan/utilcode/util/Utils$Consumer<Landroid/content/Intent;>;"
    const-class v0, Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity4MainProcess;

    const/4 v1, 0x0

    invoke-static {v1, p0, p1, v0}, Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity4MainProcess;->start(Landroid/app/Activity;Lcom/blankj/molihuan/utilcode/util/Utils$Consumer;Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity$TransActivityDelegate;Ljava/lang/Class;)V

    .line 23
    return-void
.end method

.method public static start(Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity$TransActivityDelegate;)V
    .locals 2
    .param p0, "delegate"    # Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity$TransActivityDelegate;

    .line 17
    const-class v0, Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity4MainProcess;

    const/4 v1, 0x0

    invoke-static {v1, v1, p0, v0}, Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity4MainProcess;->start(Landroid/app/Activity;Lcom/blankj/molihuan/utilcode/util/Utils$Consumer;Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity$TransActivityDelegate;Ljava/lang/Class;)V

    .line 18
    return-void
.end method
