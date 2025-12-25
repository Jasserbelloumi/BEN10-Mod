.class public final synthetic Lcom/techiness/progressdialoglibrary/ProgressDialog$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/techiness/progressdialoglibrary/ProgressDialog;

.field public final synthetic f$1:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public synthetic constructor <init>(Lcom/techiness/progressdialoglibrary/ProgressDialog;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog$$ExternalSyntheticLambda4;->f$0:Lcom/techiness/progressdialoglibrary/ProgressDialog;

    iput-object p2, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog$$ExternalSyntheticLambda4;->f$1:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog$$ExternalSyntheticLambda4;->f$0:Lcom/techiness/progressdialoglibrary/ProgressDialog;

    iget-object v1, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog$$ExternalSyntheticLambda4;->f$1:Landroid/content/DialogInterface$OnDismissListener;

    invoke-static {v0, v1, p1}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->$r8$lambda$tLoOwQWAh-zucignvH61ouBy2a4(Lcom/techiness/progressdialoglibrary/ProgressDialog;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface;)V

    return-void
.end method
