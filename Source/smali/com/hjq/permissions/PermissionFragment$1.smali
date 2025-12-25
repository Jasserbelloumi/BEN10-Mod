.class Lcom/hjq/permissions/PermissionFragment$1;
.super Ljava/lang/Object;
.source "PermissionFragment.java"

# interfaces
.implements Lcom/hjq/permissions/IPermissionInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hjq/permissions/PermissionFragment;->splitTwiceRequestPermission(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hjq/permissions/PermissionFragment;


# direct methods
.method constructor <init>(Lcom/hjq/permissions/PermissionFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hjq/permissions/PermissionFragment;

    .line 299
    iput-object p1, p0, Lcom/hjq/permissions/PermissionFragment$1;->this$0:Lcom/hjq/permissions/PermissionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
