.class public Lcom/molihuan/pathselector/controller/impl/ActivityController;
.super Lcom/molihuan/pathselector/controller/AbstractBuildController;
.source "ActivityController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/molihuan/pathselector/controller/AbstractBuildController;-><init>()V

    return-void
.end method


# virtual methods
.method public getDialogFragment()Lcom/molihuan/pathselector/dialog/AbstractFragmentDialog;
    .locals 1

    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPathSelectFragment()Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;
    .locals 1

    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public show()Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;
    .locals 7

    .line 26
    iget-object v0, p0, Lcom/molihuan/pathselector/controller/impl/ActivityController;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->requestCode:Ljava/lang/Integer;

    .line 28
    .local v0, "requestCode":Ljava/lang/Integer;
    if-eqz v0, :cond_3

    .line 32
    iget-object v1, p0, Lcom/molihuan/pathselector/controller/impl/ActivityController;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v1, v1, Lcom/molihuan/pathselector/dao/SelectConfigData;->context:Landroid/content/Context;

    .line 33
    .local v1, "activity":Landroid/content/Context;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 34
    return-object v2

    .line 36
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/molihuan/pathselector/activity/impl/PathSelectActivity;

    invoke-direct {v3, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/molihuan/pathselector/PathSelector;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v4

    .line 39
    .local v4, "fragment":Landroidx/fragment/app/Fragment;
    if-eqz v4, :cond_1

    .line 40
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 42
    :cond_1
    instance-of v5, v1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v5, :cond_2

    .line 43
    move-object v5, v1

    check-cast v5, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v3, v6}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 45
    :cond_2
    move-object v5, v1

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v3, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 48
    :goto_0
    return-object v2

    .line 29
    .end local v1    # "activity":Landroid/content/Context;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "fragment":Landroidx/fragment/app/Fragment;
    :cond_3
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "requestCode is a null object reference and you must set it"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
