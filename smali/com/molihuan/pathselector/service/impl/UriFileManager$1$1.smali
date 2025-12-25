.class Lcom/molihuan/pathselector/service/impl/UriFileManager$1$1;
.super Ljava/lang/Object;
.source "UriFileManager.java"

# interfaces
.implements Lcom/molihuan/pathselector/dialog/BaseDialog$IOnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/molihuan/pathselector/service/impl/UriFileManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/molihuan/pathselector/service/impl/UriFileManager$1;


# direct methods
.method constructor <init>(Lcom/molihuan/pathselector/service/impl/UriFileManager$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/molihuan/pathselector/service/impl/UriFileManager$1;

    .line 158
    iput-object p1, p0, Lcom/molihuan/pathselector/service/impl/UriFileManager$1$1;->this$1:Lcom/molihuan/pathselector/service/impl/UriFileManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Lcom/molihuan/pathselector/dialog/BaseDialog;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "dialog"    # Lcom/molihuan/pathselector/dialog/BaseDialog;

    .line 161
    invoke-virtual {p2}, Lcom/molihuan/pathselector/dialog/BaseDialog;->dismiss()V

    .line 162
    const/4 v0, 0x0

    return v0
.end method
