.class final Lcom/molihuan/pathselector/utils/PermissionsTools$2;
.super Ljava/lang/Object;
.source "PermissionsTools.java"

# interfaces
.implements Lcom/molihuan/pathselector/dialog/BaseDialog$IOnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/molihuan/pathselector/utils/PermissionsTools;->specialPermissionsOfStorageWithDialog(Landroid/content/Context;ZLcom/hjq/permissions/OnPermissionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$specialPermissionCallback:Lcom/hjq/permissions/OnPermissionCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/hjq/permissions/OnPermissionCallback;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/molihuan/pathselector/utils/PermissionsTools$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/molihuan/pathselector/utils/PermissionsTools$2;->val$specialPermissionCallback:Lcom/hjq/permissions/OnPermissionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Lcom/molihuan/pathselector/dialog/BaseDialog;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "dialog"    # Lcom/molihuan/pathselector/dialog/BaseDialog;

    .line 89
    iget-object v0, p0, Lcom/molihuan/pathselector/utils/PermissionsTools$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/molihuan/pathselector/utils/PermissionsTools$2;->val$specialPermissionCallback:Lcom/hjq/permissions/OnPermissionCallback;

    invoke-static {v0, v1}, Lcom/molihuan/pathselector/utils/PermissionsTools;->specialPermissionsOfStorageNoCheck(Landroid/content/Context;Lcom/hjq/permissions/OnPermissionCallback;)V

    .line 90
    invoke-virtual {p2}, Lcom/molihuan/pathselector/dialog/BaseDialog;->dismiss()V

    .line 91
    const/4 v0, 0x0

    return v0
.end method
