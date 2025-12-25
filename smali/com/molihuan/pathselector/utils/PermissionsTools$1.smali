.class final Lcom/molihuan/pathselector/utils/PermissionsTools$1;
.super Ljava/lang/Object;
.source "PermissionsTools.java"

# interfaces
.implements Lcom/molihuan/pathselector/dialog/BaseDialog$IOnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/molihuan/pathselector/utils/PermissionsTools;->specialPermissionsOfStorageWithDialog(Landroid/content/Context;ZLcom/hjq/permissions/OnPermissionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Lcom/molihuan/pathselector/dialog/BaseDialog;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "dialog"    # Lcom/molihuan/pathselector/dialog/BaseDialog;

    .line 97
    invoke-virtual {p2}, Lcom/molihuan/pathselector/dialog/BaseDialog;->dismiss()V

    .line 98
    const/4 v0, 0x0

    return v0
.end method
