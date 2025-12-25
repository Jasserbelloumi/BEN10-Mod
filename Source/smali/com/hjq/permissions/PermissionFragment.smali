.class public final Lcom/hjq/permissions/PermissionFragment;
.super Landroid/app/Fragment;
.source "PermissionFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final REQUEST_CODE:Ljava/lang/String; = "request_code"

.field private static final REQUEST_CODE_ARRAY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final REQUEST_PERMISSIONS:Ljava/lang/String; = "request_permissions"


# instance fields
.field private mCallBack:Lcom/hjq/permissions/OnPermissionCallback;

.field private mDangerousRequest:Z

.field private mInterceptor:Lcom/hjq/permissions/IPermissionInterceptor;

.field private mRequestFlag:Z

.field private mScreenOrientation:I

.field private mSpecialRequest:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/hjq/permissions/PermissionFragment;->REQUEST_CODE_ARRAY:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static launch(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/hjq/permissions/IPermissionInterceptor;Lcom/hjq/permissions/OnPermissionCallback;)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p2, "interceptor"    # Lcom/hjq/permissions/IPermissionInterceptor;
    .param p3, "callback"    # Lcom/hjq/permissions/OnPermissionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hjq/permissions/IPermissionInterceptor;",
            "Lcom/hjq/permissions/OnPermissionCallback;",
            ")V"
        }
    .end annotation

    .line 42
    .local p1, "permissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/hjq/permissions/PermissionFragment;

    invoke-direct {v0}, Lcom/hjq/permissions/PermissionFragment;-><init>()V

    .line 43
    .local v0, "fragment":Lcom/hjq/permissions/PermissionFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 49
    .local v1, "bundle":Landroid/os/Bundle;
    :goto_0
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    const-wide/high16 v5, 0x4020000000000000L    # 8.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 50
    .local v2, "requestCode":I
    sget-object v3, Lcom/hjq/permissions/PermissionFragment;->REQUEST_CODE_ARRAY:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 52
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    const-string v3, "request_code"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 54
    const-string v3, "request_permissions"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 55
    invoke-virtual {v0, v1}, Lcom/hjq/permissions/PermissionFragment;->setArguments(Landroid/os/Bundle;)V

    .line 57
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/hjq/permissions/PermissionFragment;->setRetainInstance(Z)V

    .line 59
    invoke-virtual {v0, v3}, Lcom/hjq/permissions/PermissionFragment;->setRequestFlag(Z)V

    .line 61
    invoke-virtual {v0, p3}, Lcom/hjq/permissions/PermissionFragment;->setCallBack(Lcom/hjq/permissions/OnPermissionCallback;)V

    .line 63
    invoke-virtual {v0, p2}, Lcom/hjq/permissions/PermissionFragment;->setInterceptor(Lcom/hjq/permissions/IPermissionInterceptor;)V

    .line 65
    invoke-virtual {v0, p0}, Lcom/hjq/permissions/PermissionFragment;->attachActivity(Landroid/app/Activity;)V

    .line 66
    return-void

    .line 50
    :cond_0
    goto :goto_0
.end method


# virtual methods
.method public attachActivity(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 92
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hjq/permissions/PermissionFragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 93
    return-void
.end method

.method public detachActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 99
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 100
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 418
    invoke-virtual {p0}, Lcom/hjq/permissions/PermissionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 419
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/hjq/permissions/PermissionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 420
    .local v1, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    iget-boolean v2, p0, Lcom/hjq/permissions/PermissionFragment;->mDangerousRequest:Z

    if-nez v2, :cond_3

    .line 421
    const-string v2, "request_code"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eq p1, v2, :cond_0

    goto :goto_1

    .line 425
    :cond_0
    const-string v2, "request_permissions"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 426
    .local v2, "allPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 430
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/hjq/permissions/PermissionFragment;->mDangerousRequest:Z

    .line 431
    invoke-static {v2, p0}, Lcom/hjq/permissions/PermissionUtils;->postActivityResult(Ljava/util/List;Ljava/lang/Runnable;)V

    .line 432
    return-void

    .line 427
    :cond_2
    :goto_0
    return-void

    .line 422
    .end local v2    # "allPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    :goto_1
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 126
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 127
    invoke-virtual {p0}, Lcom/hjq/permissions/PermissionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 128
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 129
    return-void

    .line 132
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    iput v1, p0, Lcom/hjq/permissions/PermissionFragment;->mScreenOrientation:I

    .line 133
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 134
    return-void

    .line 138
    :cond_1
    invoke-static {v0}, Lcom/hjq/permissions/PermissionUtils;->lockActivityOrientation(Landroid/app/Activity;)V

    .line 139
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 155
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hjq/permissions/PermissionFragment;->mCallBack:Lcom/hjq/permissions/OnPermissionCallback;

    .line 158
    return-void
.end method

.method public onDetach()V
    .locals 3

    .line 143
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 144
    invoke-virtual {p0}, Lcom/hjq/permissions/PermissionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 145
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    iget v1, p0, Lcom/hjq/permissions/PermissionFragment;->mScreenOrientation:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 146
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 151
    return-void

    .line 147
    :cond_1
    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 17
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 360
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    array-length v3, v1

    if-eqz v3, :cond_5

    array-length v3, v2

    if-nez v3, :cond_0

    move/from16 v11, p1

    goto/16 :goto_1

    .line 364
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/hjq/permissions/PermissionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    .line 365
    .local v3, "arguments":Landroid/os/Bundle;
    invoke-virtual/range {p0 .. p0}, Lcom/hjq/permissions/PermissionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    .line 366
    .local v10, "activity":Landroid/app/Activity;
    if-eqz v10, :cond_4

    if-eqz v3, :cond_4

    iget-object v4, v0, Lcom/hjq/permissions/PermissionFragment;->mInterceptor:Lcom/hjq/permissions/IPermissionInterceptor;

    if-eqz v4, :cond_4

    .line 367
    const-string v4, "request_code"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    move/from16 v11, p1

    if-eq v11, v4, :cond_1

    goto/16 :goto_0

    .line 371
    :cond_1
    iget-object v12, v0, Lcom/hjq/permissions/PermissionFragment;->mCallBack:Lcom/hjq/permissions/OnPermissionCallback;

    .line 372
    .local v12, "callback":Lcom/hjq/permissions/OnPermissionCallback;
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/hjq/permissions/PermissionFragment;->mCallBack:Lcom/hjq/permissions/OnPermissionCallback;

    .line 374
    iget-object v13, v0, Lcom/hjq/permissions/PermissionFragment;->mInterceptor:Lcom/hjq/permissions/IPermissionInterceptor;

    .line 375
    .local v13, "interceptor":Lcom/hjq/permissions/IPermissionInterceptor;
    iput-object v4, v0, Lcom/hjq/permissions/PermissionFragment;->mInterceptor:Lcom/hjq/permissions/IPermissionInterceptor;

    .line 378
    invoke-static {v10, v1, v2}, Lcom/hjq/permissions/PermissionUtils;->optimizePermissionResults(Landroid/app/Activity;[Ljava/lang/String;[I)V

    .line 381
    invoke-static/range {p2 .. p2}, Lcom/hjq/permissions/PermissionUtils;->asArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v14

    .line 384
    .local v14, "allPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Lcom/hjq/permissions/PermissionFragment;->REQUEST_CODE_ARRAY:Ljava/util/List;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 386
    invoke-virtual {v0, v10}, Lcom/hjq/permissions/PermissionFragment;->detachActivity(Landroid/app/Activity;)V

    .line 389
    invoke-static {v14, v2}, Lcom/hjq/permissions/PermissionApi;->getGrantedPermissions(Ljava/util/List;[I)Ljava/util/List;

    move-result-object v15

    .line 392
    .local v15, "grantedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v5

    const/4 v9, 0x0

    if-ne v4, v5, :cond_2

    .line 394
    const/4 v8, 0x1

    move-object v4, v13

    move-object v5, v10

    move-object v6, v14

    move-object v7, v15

    move v0, v9

    move-object v9, v12

    invoke-interface/range {v4 .. v9}, Lcom/hjq/permissions/IPermissionInterceptor;->grantedPermissionRequest(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;ZLcom/hjq/permissions/OnPermissionCallback;)V

    .line 396
    invoke-interface {v13, v10, v14, v0, v12}, Lcom/hjq/permissions/IPermissionInterceptor;->finishPermissionRequest(Landroid/app/Activity;Ljava/util/List;ZLcom/hjq/permissions/OnPermissionCallback;)V

    .line 397
    return-void

    .line 401
    :cond_2
    move v0, v9

    invoke-static {v14, v2}, Lcom/hjq/permissions/PermissionApi;->getDeniedPermissions(Ljava/util/List;[I)Ljava/util/List;

    move-result-object v9

    .line 404
    .local v9, "deniedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 405
    invoke-static {v10, v9}, Lcom/hjq/permissions/PermissionApi;->isPermissionPermanentDenied(Landroid/app/Activity;Ljava/util/List;)Z

    move-result v8

    .line 404
    move-object v4, v13

    move-object v5, v10

    move-object v6, v14

    move-object v7, v9

    move-object/from16 v16, v9

    .end local v9    # "deniedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v16, "deniedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v9, v12

    invoke-interface/range {v4 .. v9}, Lcom/hjq/permissions/IPermissionInterceptor;->deniedPermissionRequest(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;ZLcom/hjq/permissions/OnPermissionCallback;)V

    .line 408
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 409
    const/4 v8, 0x0

    move-object v4, v13

    move-object v5, v10

    move-object v6, v14

    move-object v7, v15

    move-object v9, v12

    invoke-interface/range {v4 .. v9}, Lcom/hjq/permissions/IPermissionInterceptor;->grantedPermissionRequest(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;ZLcom/hjq/permissions/OnPermissionCallback;)V

    .line 413
    :cond_3
    invoke-interface {v13, v10, v14, v0, v12}, Lcom/hjq/permissions/IPermissionInterceptor;->finishPermissionRequest(Landroid/app/Activity;Ljava/util/List;ZLcom/hjq/permissions/OnPermissionCallback;)V

    .line 414
    return-void

    .line 366
    .end local v12    # "callback":Lcom/hjq/permissions/OnPermissionCallback;
    .end local v13    # "interceptor":Lcom/hjq/permissions/IPermissionInterceptor;
    .end local v14    # "allPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "grantedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "deniedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    move/from16 v11, p1

    .line 368
    :goto_0
    return-void

    .line 360
    .end local v3    # "arguments":Landroid/os/Bundle;
    .end local v10    # "activity":Landroid/app/Activity;
    :cond_5
    move/from16 v11, p1

    .line 361
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 162
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 165
    iget-boolean v0, p0, Lcom/hjq/permissions/PermissionFragment;->mRequestFlag:Z

    if-nez v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/hjq/permissions/PermissionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hjq/permissions/PermissionFragment;->detachActivity(Landroid/app/Activity;)V

    .line 167
    return-void

    .line 172
    :cond_0
    iget-boolean v0, p0, Lcom/hjq/permissions/PermissionFragment;->mSpecialRequest:Z

    if-eqz v0, :cond_1

    .line 173
    return-void

    .line 176
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hjq/permissions/PermissionFragment;->mSpecialRequest:Z

    .line 177
    invoke-virtual {p0}, Lcom/hjq/permissions/PermissionFragment;->requestSpecialPermission()V

    .line 178
    return-void
.end method

.method public requestDangerousPermission()V
    .locals 8

    .line 226
    invoke-virtual {p0}, Lcom/hjq/permissions/PermissionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 227
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/hjq/permissions/PermissionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 228
    .local v1, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_9

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 232
    :cond_0
    const-string v2, "request_code"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 234
    .local v2, "requestCode":I
    const-string v3, "request_permissions"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 235
    .local v3, "allPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_2

    .line 239
    :cond_1
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid6()Z

    move-result v4

    if-nez v4, :cond_4

    .line 241
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [I

    .line 242
    .local v4, "grantResults":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v4

    const/4 v7, 0x0

    if-ge v5, v6, :cond_3

    .line 243
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/hjq/permissions/PermissionApi;->isGrantedPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v7, -0x1

    :goto_1
    aput v7, v4, v5

    .line 242
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 246
    .end local v5    # "i":I
    :cond_3
    new-array v5, v7, [Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {p0, v2, v5, v4}, Lcom/hjq/permissions/PermissionFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 247
    return-void

    .line 251
    .end local v4    # "grantResults":[I
    :cond_4
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid13()Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v5, :cond_5

    .line 252
    const-string v4, "android.permission.BODY_SENSORS_BACKGROUND"

    invoke-static {v3, v4}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 253
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 254
    .local v5, "bodySensorsPermission":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 257
    invoke-virtual {p0, v0, v3, v5, v2}, Lcom/hjq/permissions/PermissionFragment;->splitTwiceRequestPermission(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 258
    return-void

    .line 262
    .end local v5    # "bodySensorsPermission":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid10()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v5, :cond_6

    .line 263
    const-string v4, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-static {v3, v4}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 264
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 265
    .local v5, "locationPermission":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 268
    invoke-virtual {p0, v0, v3, v5, v2}, Lcom/hjq/permissions/PermissionFragment;->splitTwiceRequestPermission(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 269
    return-void

    .line 273
    .end local v5    # "locationPermission":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid10()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 274
    const-string v4, "android.permission.ACCESS_MEDIA_LOCATION"

    invoke-static {v3, v4}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 275
    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v3, v5}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 277
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 278
    .local v5, "storagePermission":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 281
    invoke-virtual {p0, v0, v3, v5, v2}, Lcom/hjq/permissions/PermissionFragment;->splitTwiceRequestPermission(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 282
    return-void

    .line 285
    .end local v5    # "storagePermission":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {p0, v4, v2}, Lcom/hjq/permissions/PermissionFragment;->requestPermissions([Ljava/lang/String;I)V

    .line 286
    return-void

    .line 236
    :cond_8
    :goto_2
    return-void

    .line 229
    .end local v2    # "requestCode":I
    .end local v3    # "allPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    :goto_3
    return-void
.end method

.method public requestSpecialPermission()V
    .locals 9

    .line 184
    invoke-virtual {p0}, Lcom/hjq/permissions/PermissionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 185
    .local v0, "arguments":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/hjq/permissions/PermissionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 186
    .local v1, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_6

    if-nez v1, :cond_0

    goto :goto_1

    .line 190
    :cond_0
    const-string v2, "request_permissions"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 193
    .local v2, "allPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 196
    .local v3, "requestSpecialPermission":Z
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 197
    .local v5, "permission":Ljava/lang/String;
    invoke-static {v5}, Lcom/hjq/permissions/PermissionApi;->isSpecialPermission(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 198
    goto :goto_0

    .line 201
    :cond_1
    invoke-static {v1, v5}, Lcom/hjq/permissions/PermissionApi;->isGrantedPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 203
    goto :goto_0

    .line 205
    :cond_2
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid11()Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-static {v5, v6}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 207
    goto :goto_0

    .line 210
    :cond_3
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    .line 211
    invoke-static {v6}, Lcom/hjq/permissions/PermissionUtils;->asArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v6

    .line 210
    invoke-static {v1, v6}, Lcom/hjq/permissions/PermissionUtils;->getSmartPermissionIntent(Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v6

    .line 211
    invoke-virtual {p0}, Lcom/hjq/permissions/PermissionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "request_code"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 210
    invoke-static {p0, v6, v7}, Lcom/hjq/permissions/StartActivityManager;->startActivityForResult(Landroid/app/Fragment;Landroid/content/Intent;I)Z

    .line 212
    const/4 v3, 0x1

    .line 213
    .end local v5    # "permission":Ljava/lang/String;
    goto :goto_0

    .line 215
    :cond_4
    if-eqz v3, :cond_5

    .line 216
    return-void

    .line 219
    :cond_5
    invoke-virtual {p0}, Lcom/hjq/permissions/PermissionFragment;->requestDangerousPermission()V

    .line 220
    return-void

    .line 187
    .end local v2    # "allPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "requestSpecialPermission":Z
    :cond_6
    :goto_1
    return-void
.end method

.method public run()V
    .locals 1

    .line 439
    invoke-virtual {p0}, Lcom/hjq/permissions/PermissionFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 440
    return-void

    .line 443
    :cond_0
    invoke-virtual {p0}, Lcom/hjq/permissions/PermissionFragment;->requestDangerousPermission()V

    .line 444
    return-void
.end method

.method public setCallBack(Lcom/hjq/permissions/OnPermissionCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/hjq/permissions/OnPermissionCallback;

    .line 106
    iput-object p1, p0, Lcom/hjq/permissions/PermissionFragment;->mCallBack:Lcom/hjq/permissions/OnPermissionCallback;

    .line 107
    return-void
.end method

.method public setInterceptor(Lcom/hjq/permissions/IPermissionInterceptor;)V
    .locals 0
    .param p1, "interceptor"    # Lcom/hjq/permissions/IPermissionInterceptor;

    .line 120
    iput-object p1, p0, Lcom/hjq/permissions/PermissionFragment;->mInterceptor:Lcom/hjq/permissions/IPermissionInterceptor;

    .line 121
    return-void
.end method

.method public setRequestFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 113
    iput-boolean p1, p0, Lcom/hjq/permissions/PermissionFragment;->mRequestFlag:Z

    .line 114
    return-void
.end method

.method public splitTwiceRequestPermission(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p4, "requestCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 294
    .local p2, "allPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "firstPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 295
    .local v0, "secondPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 296
    .local v2, "permission":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 297
    .end local v2    # "permission":Ljava/lang/String;
    goto :goto_0

    .line 299
    :cond_0
    new-instance v7, Lcom/hjq/permissions/PermissionFragment$1;

    invoke-direct {v7, p0}, Lcom/hjq/permissions/PermissionFragment$1;-><init>(Lcom/hjq/permissions/PermissionFragment;)V

    new-instance v8, Lcom/hjq/permissions/PermissionFragment$2;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object v5, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/hjq/permissions/PermissionFragment$2;-><init>(Lcom/hjq/permissions/PermissionFragment;Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    invoke-static {p1, p3, v7, v8}, Lcom/hjq/permissions/PermissionFragment;->launch(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/hjq/permissions/IPermissionInterceptor;Lcom/hjq/permissions/OnPermissionCallback;)V

    .line 356
    return-void
.end method
