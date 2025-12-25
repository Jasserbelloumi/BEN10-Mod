.class public final Lcom/hjq/permissions/PermissionPageFragment;
.super Landroid/app/Fragment;
.source "PermissionPageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final REQUEST_PERMISSIONS:Ljava/lang/String; = "request_permissions"


# instance fields
.field private mCallBack:Lcom/hjq/permissions/OnPermissionPageCallback;

.field private mRequestFlag:Z

.field private mStartActivityFlag:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static beginRequest(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/hjq/permissions/OnPermissionPageCallback;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Lcom/hjq/permissions/OnPermissionPageCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hjq/permissions/OnPermissionPageCallback;",
            ")V"
        }
    .end annotation

    .line 30
    .local p1, "permissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/hjq/permissions/PermissionPageFragment;

    invoke-direct {v0}, Lcom/hjq/permissions/PermissionPageFragment;-><init>()V

    .line 31
    .local v0, "fragment":Lcom/hjq/permissions/PermissionPageFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 32
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "request_permissions"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 33
    invoke-virtual {v0, v1}, Lcom/hjq/permissions/PermissionPageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 35
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/hjq/permissions/PermissionPageFragment;->setRetainInstance(Z)V

    .line 37
    invoke-virtual {v0, v2}, Lcom/hjq/permissions/PermissionPageFragment;->setRequestFlag(Z)V

    .line 39
    invoke-virtual {v0, p2}, Lcom/hjq/permissions/PermissionPageFragment;->setCallBack(Lcom/hjq/permissions/OnPermissionPageCallback;)V

    .line 41
    invoke-virtual {v0, p0}, Lcom/hjq/permissions/PermissionPageFragment;->attachActivity(Landroid/app/Activity;)V

    .line 42
    return-void
.end method


# virtual methods
.method public attachActivity(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 58
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hjq/permissions/PermissionPageFragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 59
    return-void
.end method

.method public detachActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 65
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 66
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 109
    const/16 v0, 0x401

    if-eq p1, v0, :cond_0

    .line 110
    return-void

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/hjq/permissions/PermissionPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 114
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/hjq/permissions/PermissionPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 115
    .local v1, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_4

    if-nez v1, :cond_1

    goto :goto_1

    .line 118
    :cond_1
    const-string v2, "request_permissions"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 119
    .local v2, "allPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 123
    :cond_2
    invoke-static {v2, p0}, Lcom/hjq/permissions/PermissionUtils;->postActivityResult(Ljava/util/List;Ljava/lang/Runnable;)V

    .line 124
    return-void

    .line 120
    :cond_3
    :goto_0
    return-void

    .line 116
    .end local v2    # "allPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 84
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 87
    iget-boolean v0, p0, Lcom/hjq/permissions/PermissionPageFragment;->mRequestFlag:Z

    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/hjq/permissions/PermissionPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hjq/permissions/PermissionPageFragment;->detachActivity(Landroid/app/Activity;)V

    .line 89
    return-void

    .line 92
    :cond_0
    iget-boolean v0, p0, Lcom/hjq/permissions/PermissionPageFragment;->mStartActivityFlag:Z

    if-eqz v0, :cond_1

    .line 93
    return-void

    .line 96
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hjq/permissions/PermissionPageFragment;->mStartActivityFlag:Z

    .line 98
    invoke-virtual {p0}, Lcom/hjq/permissions/PermissionPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 99
    .local v0, "arguments":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/hjq/permissions/PermissionPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 100
    .local v1, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_3

    if-nez v1, :cond_2

    goto :goto_0

    .line 103
    :cond_2
    const-string v2, "request_permissions"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 104
    .local v2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/hjq/permissions/PermissionPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/hjq/permissions/PermissionUtils;->getSmartPermissionIntent(Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v3

    const/16 v4, 0x401

    invoke-static {p0, v3, v4}, Lcom/hjq/permissions/StartActivityManager;->startActivityForResult(Landroid/app/Fragment;Landroid/content/Intent;I)Z

    .line 105
    return-void

    .line 101
    .end local v2    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :goto_0
    return-void
.end method

.method public run()V
    .locals 7

    .line 131
    invoke-virtual {p0}, Lcom/hjq/permissions/PermissionPageFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    return-void

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/hjq/permissions/PermissionPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 136
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 137
    return-void

    .line 140
    :cond_1
    iget-object v1, p0, Lcom/hjq/permissions/PermissionPageFragment;->mCallBack:Lcom/hjq/permissions/OnPermissionPageCallback;

    .line 141
    .local v1, "callback":Lcom/hjq/permissions/OnPermissionPageCallback;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/hjq/permissions/PermissionPageFragment;->mCallBack:Lcom/hjq/permissions/OnPermissionPageCallback;

    .line 143
    if-nez v1, :cond_2

    .line 144
    invoke-virtual {p0, v0}, Lcom/hjq/permissions/PermissionPageFragment;->detachActivity(Landroid/app/Activity;)V

    .line 145
    return-void

    .line 148
    :cond_2
    invoke-virtual {p0}, Lcom/hjq/permissions/PermissionPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 149
    .local v2, "arguments":Landroid/os/Bundle;
    const-string v3, "request_permissions"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 151
    .local v3, "allPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0, v3}, Lcom/hjq/permissions/PermissionApi;->getGrantedPermissions(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 152
    .local v4, "grantedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 153
    invoke-interface {v1}, Lcom/hjq/permissions/OnPermissionPageCallback;->onGranted()V

    goto :goto_0

    .line 155
    :cond_3
    invoke-interface {v1}, Lcom/hjq/permissions/OnPermissionPageCallback;->onDenied()V

    .line 158
    :goto_0
    invoke-virtual {p0, v0}, Lcom/hjq/permissions/PermissionPageFragment;->detachActivity(Landroid/app/Activity;)V

    .line 159
    return-void
.end method

.method public setCallBack(Lcom/hjq/permissions/OnPermissionPageCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/hjq/permissions/OnPermissionPageCallback;

    .line 72
    iput-object p1, p0, Lcom/hjq/permissions/PermissionPageFragment;->mCallBack:Lcom/hjq/permissions/OnPermissionPageCallback;

    .line 73
    return-void
.end method

.method public setRequestFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 79
    iput-boolean p1, p0, Lcom/hjq/permissions/PermissionPageFragment;->mRequestFlag:Z

    .line 80
    return-void
.end method
