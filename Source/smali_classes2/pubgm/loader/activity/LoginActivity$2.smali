.class Lpubgm/loader/activity/LoginActivity$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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

    .line 128
    iput-object p1, p0, Lpubgm/loader/activity/LoginActivity$2;->this$0:Lpubgm/loader/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 131
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-wide v0, -0x7cc88c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "selectedLanguage":Ljava/lang/String;
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 140
    :pswitch_0
    const-wide v1, -0x7cf18c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 137
    :pswitch_1
    const-wide v1, -0x7ccc8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    .line 138
    goto :goto_0

    .line 134
    :pswitch_2
    const-wide v1, -0x7ccf8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    .line 135
    nop

    .line 143
    :goto_0
    iget-object v1, p0, Lpubgm/loader/activity/LoginActivity$2;->this$0:Lpubgm/loader/activity/LoginActivity;

    invoke-static {v1}, Lpubgm/loader/activity/LoginActivity;->access$000(Lpubgm/loader/activity/LoginActivity;)Lpubgm/loader/Component/Prefs;

    move-result-object v1

    const-wide v2, -0x7cf68c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    const-wide v3, -0x7cff8c1d73e5L

    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lpubgm/loader/Component/Prefs;->read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    iget-object v1, p0, Lpubgm/loader/activity/LoginActivity$2;->this$0:Lpubgm/loader/activity/LoginActivity;

    invoke-static {v1}, Lpubgm/loader/activity/LoginActivity;->access$000(Lpubgm/loader/activity/LoginActivity;)Lpubgm/loader/Component/Prefs;

    move-result-object v1

    const-wide v2, -0x7cfc8c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lpubgm/loader/Component/Prefs;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lpubgm/loader/activity/LoginActivity$2;->this$0:Lpubgm/loader/activity/LoginActivity;

    invoke-static {v1, v0}, Lpubgm/loader/activity/LoginActivity;->access$100(Lpubgm/loader/activity/LoginActivity;Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lpubgm/loader/activity/LoginActivity$2;->this$0:Lpubgm/loader/activity/LoginActivity;

    invoke-virtual {v1}, Lpubgm/loader/activity/LoginActivity;->recreate()V

    .line 148
    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 153
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
