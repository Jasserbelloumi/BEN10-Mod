.class final Lcom/hjq/permissions/StartActivityManager;
.super Ljava/lang/Object;
.source "StartActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateSupportFragmentImpl;,
        Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateFragmentImpl;,
        Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateActivityImpl;,
        Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateContextImpl;,
        Lcom/hjq/permissions/StartActivityManager$IStartActivityDelegate;
    }
.end annotation


# static fields
.field private static final SUB_INTENT_KEY:Ljava/lang/String; = "sub_intent_key"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addSubIntentToMainIntent(Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p0, "mainIntent"    # Landroid/content/Intent;
    .param p1, "subIntent"    # Landroid/content/Intent;

    .line 39
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    .line 40
    return-object p1

    .line 42
    :cond_0
    if-nez p1, :cond_1

    .line 43
    return-object p0

    .line 45
    :cond_1
    invoke-static {p0}, Lcom/hjq/permissions/StartActivityManager;->getDeepSubIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 46
    .local v0, "deepSubIntent":Landroid/content/Intent;
    const-string/jumbo v1, "sub_intent_key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 47
    return-object p0
.end method

.method static getDeepSubIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p0, "superIntent"    # Landroid/content/Intent;

    .line 31
    invoke-static {p0}, Lcom/hjq/permissions/StartActivityManager;->getSubIntentInMainIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 32
    .local v0, "subIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 33
    invoke-static {v0}, Lcom/hjq/permissions/StartActivityManager;->getDeepSubIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    return-object v1

    .line 35
    :cond_0
    return-object p0
.end method

.method static getSubIntentInMainIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p0, "mainIntent"    # Landroid/content/Intent;

    .line 22
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid13()Z

    move-result v0

    const-string/jumbo v1, "sub_intent_key"

    if-eqz v0, :cond_0

    .line 23
    const-class v0, Landroid/content/Intent;

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .local v0, "subIntent":Landroid/content/Intent;
    goto :goto_0

    .line 25
    .end local v0    # "subIntent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 27
    .restart local v0    # "subIntent":Landroid/content/Intent;
    :goto_0
    return-object v0
.end method

.method static startActivity(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 55
    new-instance v0, Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateActivityImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateActivityImpl;-><init>(Landroid/app/Activity;Lcom/hjq/permissions/StartActivityManager$1;)V

    invoke-static {v0, p1}, Lcom/hjq/permissions/StartActivityManager;->startActivity(Lcom/hjq/permissions/StartActivityManager$IStartActivityDelegate;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static startActivity(Landroid/app/Fragment;Landroid/content/Intent;)Z
    .locals 2
    .param p0, "fragment"    # Landroid/app/Fragment;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 59
    new-instance v0, Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateFragmentImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateFragmentImpl;-><init>(Landroid/app/Fragment;Lcom/hjq/permissions/StartActivityManager$1;)V

    invoke-static {v0, p1}, Lcom/hjq/permissions/StartActivityManager;->startActivity(Lcom/hjq/permissions/StartActivityManager$IStartActivityDelegate;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static startActivity(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 51
    new-instance v0, Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateContextImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateContextImpl;-><init>(Landroid/content/Context;Lcom/hjq/permissions/StartActivityManager$1;)V

    invoke-static {v0, p1}, Lcom/hjq/permissions/StartActivityManager;->startActivity(Lcom/hjq/permissions/StartActivityManager$IStartActivityDelegate;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static startActivity(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)Z
    .locals 2
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 63
    new-instance v0, Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateSupportFragmentImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateSupportFragmentImpl;-><init>(Landroidx/fragment/app/Fragment;Lcom/hjq/permissions/StartActivityManager$1;)V

    invoke-static {v0, p1}, Lcom/hjq/permissions/StartActivityManager;->startActivity(Lcom/hjq/permissions/StartActivityManager$IStartActivityDelegate;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static startActivity(Lcom/hjq/permissions/StartActivityManager$IStartActivityDelegate;Landroid/content/Intent;)Z
    .locals 3
    .param p0, "delegate"    # Lcom/hjq/permissions/StartActivityManager$IStartActivityDelegate;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 68
    :try_start_0
    invoke-interface {p0, p1}, Lcom/hjq/permissions/StartActivityManager$IStartActivityDelegate;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    const/4 v0, 0x1

    return v0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 72
    invoke-static {p1}, Lcom/hjq/permissions/StartActivityManager;->getSubIntentInMainIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    .line 73
    .local v1, "subIntent":Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 74
    const/4 v2, 0x0

    return v2

    .line 76
    :cond_0
    invoke-static {p0, v1}, Lcom/hjq/permissions/StartActivityManager;->startActivity(Lcom/hjq/permissions/StartActivityManager$IStartActivityDelegate;Landroid/content/Intent;)Z

    move-result v2

    return v2
.end method

.method static startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .line 81
    new-instance v0, Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateActivityImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateActivityImpl;-><init>(Landroid/app/Activity;Lcom/hjq/permissions/StartActivityManager$1;)V

    invoke-static {v0, p1, p2}, Lcom/hjq/permissions/StartActivityManager;->startActivityForResult(Lcom/hjq/permissions/StartActivityManager$IStartActivityDelegate;Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method

.method static startActivityForResult(Landroid/app/Fragment;Landroid/content/Intent;I)Z
    .locals 2
    .param p0, "fragment"    # Landroid/app/Fragment;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .line 85
    new-instance v0, Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateFragmentImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateFragmentImpl;-><init>(Landroid/app/Fragment;Lcom/hjq/permissions/StartActivityManager$1;)V

    invoke-static {v0, p1, p2}, Lcom/hjq/permissions/StartActivityManager;->startActivityForResult(Lcom/hjq/permissions/StartActivityManager$IStartActivityDelegate;Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method

.method static startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)Z
    .locals 2
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .line 89
    new-instance v0, Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateSupportFragmentImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateSupportFragmentImpl;-><init>(Landroidx/fragment/app/Fragment;Lcom/hjq/permissions/StartActivityManager$1;)V

    invoke-static {v0, p1, p2}, Lcom/hjq/permissions/StartActivityManager;->startActivityForResult(Lcom/hjq/permissions/StartActivityManager$IStartActivityDelegate;Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method

.method static startActivityForResult(Lcom/hjq/permissions/StartActivityManager$IStartActivityDelegate;Landroid/content/Intent;I)Z
    .locals 3
    .param p0, "delegate"    # Lcom/hjq/permissions/StartActivityManager$IStartActivityDelegate;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .line 94
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/hjq/permissions/StartActivityManager$IStartActivityDelegate;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    const/4 v0, 0x1

    return v0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    invoke-static {p1}, Lcom/hjq/permissions/StartActivityManager;->getSubIntentInMainIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    .line 99
    .local v1, "subIntent":Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 100
    const/4 v2, 0x0

    return v2

    .line 102
    :cond_0
    invoke-static {p0, v1, p2}, Lcom/hjq/permissions/StartActivityManager;->startActivityForResult(Lcom/hjq/permissions/StartActivityManager$IStartActivityDelegate;Landroid/content/Intent;I)Z

    move-result v2

    return v2
.end method
