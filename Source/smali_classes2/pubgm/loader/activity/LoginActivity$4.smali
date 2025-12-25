.class Lpubgm/loader/activity/LoginActivity$4;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpubgm/loader/activity/LoginActivity;->initDesign()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpubgm/loader/activity/LoginActivity;

.field final synthetic val$m_Context:Landroid/content/Context;

.field final synthetic val$textUsername:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lpubgm/loader/activity/LoginActivity;Landroid/widget/TextView;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lpubgm/loader/activity/LoginActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 188
    iput-object p1, p0, Lpubgm/loader/activity/LoginActivity$4;->this$0:Lpubgm/loader/activity/LoginActivity;

    iput-object p2, p0, Lpubgm/loader/activity/LoginActivity$4;->val$textUsername:Landroid/widget/TextView;

    iput-object p3, p0, Lpubgm/loader/activity/LoginActivity$4;->val$m_Context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .line 191
    iget-object v0, p0, Lpubgm/loader/activity/LoginActivity$4;->this$0:Lpubgm/loader/activity/LoginActivity;

    const-wide v1, -0x7ce88c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpubgm/loader/activity/LoginActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 192
    .local v0, "clipboardManager":Landroid/content/ClipboardManager;
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "ed":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 194
    iget-object v2, p0, Lpubgm/loader/activity/LoginActivity$4;->val$textUsername:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 196
    :cond_0
    iget-object v2, p0, Lpubgm/loader/activity/LoginActivity$4;->val$m_Context:Landroid/content/Context;

    const-wide v3, -0x7c968c1d73e5L

    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const v5, 0x7f1301db

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 198
    :goto_0
    return-void
.end method
