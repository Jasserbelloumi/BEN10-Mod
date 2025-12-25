.class public Lcom/molihuan/pathselector/utils/FragmentTools;
.super Ljava/lang/Object;
.source "FragmentTools.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fragmentReplace(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 3
    .param p0, "fragmentManager"    # Landroidx/fragment/app/FragmentManager;
    .param p1, "frameLayoutID"    # I
    .param p2, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 60
    .local v0, "fragmentTransaction":Landroidx/fragment/app/FragmentTransaction;
    if-nez p2, :cond_0

    .line 61
    const-string v1, "fragment is null and Unable to replace"

    invoke-static {v1}, Lcom/molihuan/pathselector/utils/Mtools;->log(Ljava/lang/String;)V

    .line 62
    return-object p2

    .line 66
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 70
    goto :goto_0

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "frameLayoutID may not exist and cannot be replace"

    invoke-static {v2}, Lcom/molihuan/pathselector/utils/Mtools;->log(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 74
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 75
    return-object p2
.end method

.method public static fragmentShowHide(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;Z)Landroidx/fragment/app/Fragment;
    .locals 3
    .param p0, "fragmentManager"    # Landroidx/fragment/app/FragmentManager;
    .param p1, "frameLayoutID"    # I
    .param p2, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "isShow"    # Z

    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 29
    .local v0, "fragmentTransaction":Landroidx/fragment/app/FragmentTransaction;
    if-nez p2, :cond_0

    .line 30
    const-string v1, "fragment is null and Unable to add"

    invoke-static {v1}, Lcom/molihuan/pathselector/utils/Mtools;->log(Ljava/lang/String;)V

    .line 31
    return-object p2

    .line 34
    :cond_0
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 36
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 40
    goto :goto_0

    .line 37
    :catch_0
    move-exception v1

    .line 38
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "frameLayoutID may not exist and cannot be added"

    invoke-static {v2}, Lcom/molihuan/pathselector/utils/Mtools;->log(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    if-eqz p4, :cond_2

    .line 45
    invoke-virtual {v0, p2}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_1

    .line 48
    :cond_2
    invoke-virtual {v0, p2}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 52
    :goto_1
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 53
    return-object p2
.end method
