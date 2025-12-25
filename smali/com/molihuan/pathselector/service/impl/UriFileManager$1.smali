.class Lcom/molihuan/pathselector/service/impl/UriFileManager$1;
.super Ljava/lang/Object;
.source "UriFileManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/molihuan/pathselector/service/impl/UriFileManager;->updateFileList(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/molihuan/pathselector/adapter/FileListAdapter;Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/molihuan/pathselector/service/impl/UriFileManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$currentPath:Ljava/lang/String;

.field final synthetic val$fragment:Landroidx/fragment/app/Fragment;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/molihuan/pathselector/service/impl/UriFileManager;Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Landroidx/fragment/app/Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/molihuan/pathselector/service/impl/UriFileManager;

    .line 143
    iput-object p1, p0, Lcom/molihuan/pathselector/service/impl/UriFileManager$1;->this$0:Lcom/molihuan/pathselector/service/impl/UriFileManager;

    iput-object p2, p0, Lcom/molihuan/pathselector/service/impl/UriFileManager$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/molihuan/pathselector/service/impl/UriFileManager$1;->val$currentPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/molihuan/pathselector/service/impl/UriFileManager$1;->val$uri:Landroid/net/Uri;

    iput-object p5, p0, Lcom/molihuan/pathselector/service/impl/UriFileManager$1;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 147
    new-instance v0, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;

    iget-object v1, p0, Lcom/molihuan/pathselector/service/impl/UriFileManager$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/molihuan/pathselector/entity/FontBean;

    iget-object v2, p0, Lcom/molihuan/pathselector/service/impl/UriFileManager$1;->val$context:Landroid/content/Context;

    sget v3, Lcom/molihuan/pathselector/R$string;->tip_uri_authorization_permission_content_mlh:I

    .line 148
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/molihuan/pathselector/service/impl/UriFileManager$1;->val$currentPath:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/molihuan/pathselector/entity/FontBean;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->setContent(Lcom/molihuan/pathselector/entity/FontBean;)Lcom/molihuan/pathselector/dialog/impl/MessageDialog;

    move-result-object v0

    new-instance v1, Lcom/molihuan/pathselector/entity/FontBean;

    iget-object v2, p0, Lcom/molihuan/pathselector/service/impl/UriFileManager$1;->val$context:Landroid/content/Context;

    sget v3, Lcom/molihuan/pathselector/R$string;->option_confirm_mlh:I

    .line 149
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/molihuan/pathselector/entity/FontBean;-><init>(Ljava/lang/CharSequence;Ljava/lang/Integer;)V

    new-instance v2, Lcom/molihuan/pathselector/service/impl/UriFileManager$1$2;

    invoke-direct {v2, p0}, Lcom/molihuan/pathselector/service/impl/UriFileManager$1$2;-><init>(Lcom/molihuan/pathselector/service/impl/UriFileManager$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->setConfirm(Lcom/molihuan/pathselector/entity/FontBean;Lcom/molihuan/pathselector/dialog/BaseDialog$IOnConfirmListener;)Lcom/molihuan/pathselector/dialog/impl/MessageDialog;

    move-result-object v0

    new-instance v1, Lcom/molihuan/pathselector/entity/FontBean;

    iget-object v2, p0, Lcom/molihuan/pathselector/service/impl/UriFileManager$1;->val$context:Landroid/content/Context;

    sget v4, Lcom/molihuan/pathselector/R$string;->option_cancel_mlh:I

    .line 158
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcom/molihuan/pathselector/entity/FontBean;-><init>(Ljava/lang/CharSequence;Ljava/lang/Integer;)V

    new-instance v2, Lcom/molihuan/pathselector/service/impl/UriFileManager$1$1;

    invoke-direct {v2, p0}, Lcom/molihuan/pathselector/service/impl/UriFileManager$1$1;-><init>(Lcom/molihuan/pathselector/service/impl/UriFileManager$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->setCancel(Lcom/molihuan/pathselector/entity/FontBean;Lcom/molihuan/pathselector/dialog/BaseDialog$IOnCancelListener;)Lcom/molihuan/pathselector/dialog/impl/MessageDialog;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->show()V

    .line 166
    return-void
.end method
