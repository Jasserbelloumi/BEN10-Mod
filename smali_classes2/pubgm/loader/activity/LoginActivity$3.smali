.class Lpubgm/loader/activity/LoginActivity$3;
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


# direct methods
.method constructor <init>(Lpubgm/loader/activity/LoginActivity;)V
    .locals 0
    .param p1, "this$0"    # Lpubgm/loader/activity/LoginActivity;

    .line 157
    iput-object p1, p0, Lpubgm/loader/activity/LoginActivity$3;->this$0:Lpubgm/loader/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 160
    iget-object v0, p0, Lpubgm/loader/activity/LoginActivity$3;->this$0:Lpubgm/loader/activity/LoginActivity;

    const v1, 0x7f0a037a

    invoke-virtual {v0, v1}, Lpubgm/loader/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 162
    .local v0, "textUsername":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    iget-object v1, p0, Lpubgm/loader/activity/LoginActivity$3;->this$0:Lpubgm/loader/activity/LoginActivity;

    invoke-static {v1}, Lpubgm/loader/activity/LoginActivity;->access$000(Lpubgm/loader/activity/LoginActivity;)Lpubgm/loader/Component/Prefs;

    move-result-object v1

    const-wide v2, -0x7ce58c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lpubgm/loader/Component/Prefs;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "userKey":Ljava/lang/String;
    move-object v2, v1

    .line 169
    .local v2, "combinedKey":Ljava/lang/String;
    iget-object v3, p0, Lpubgm/loader/activity/LoginActivity$3;->this$0:Lpubgm/loader/activity/LoginActivity;

    invoke-static {}, Lpubgm/loader/activity/LoginActivity;->access$200()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lpubgm/loader/activity/LoginActivity;->access$300(Lpubgm/loader/activity/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    sput-object v1, Lpubgm/loader/activity/LoginActivity;->USERKEY:Ljava/lang/String;

    .line 174
    .end local v1    # "userKey":Ljava/lang/String;
    .end local v2    # "combinedKey":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lpubgm/loader/activity/LoginActivity$3;->this$0:Lpubgm/loader/activity/LoginActivity;

    const v2, 0x7f0a017d

    invoke-virtual {v1, v2}, Lpubgm/loader/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 176
    .local v1, "errorUsername":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    iget-object v2, p0, Lpubgm/loader/activity/LoginActivity$3;->this$0:Lpubgm/loader/activity/LoginActivity;

    const v3, 0x7f1301de

    invoke-virtual {v2, v3}, Lpubgm/loader/activity/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 180
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    :goto_0
    return-void
.end method
