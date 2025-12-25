.class Lpubgm/loader/floating/FloatService$15;
.super Ljava/lang/Object;
.source "FloatService.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpubgm/loader/floating/FloatService;->visual(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpubgm/loader/floating/FloatService;

.field final synthetic val$lobbytxt:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lpubgm/loader/floating/FloatService;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lpubgm/loader/floating/FloatService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 855
    iput-object p1, p0, Lpubgm/loader/floating/FloatService$15;->this$0:Lpubgm/loader/floating/FloatService;

    iput-object p2, p0, Lpubgm/loader/floating/FloatService$15;->val$lobbytxt:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 858
    iget-object v0, p0, Lpubgm/loader/floating/FloatService$15;->val$lobbytxt:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 859
    iget-object v0, p0, Lpubgm/loader/floating/FloatService$15;->this$0:Lpubgm/loader/floating/FloatService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, -0x718e8c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lpubgm/loader/floating/FloatService$15;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-virtual {v2}, Lpubgm/loader/floating/FloatService;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide v2, -0x71bb8c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lpubgm/loader/floating/FloatService;->access$1700(Lpubgm/loader/floating/FloatService;Ljava/lang/String;)V

    .line 860
    invoke-static {}, Lcom/topjohnwu/superuser/Shell;->rootAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lpubgm/loader/floating/FloatService$15;->val$lobbytxt:Landroid/widget/TextView;

    iget-object v1, p0, Lpubgm/loader/floating/FloatService$15;->this$0:Lpubgm/loader/floating/FloatService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v3, -0x71bc8c1d73e5L

    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lpubgm/loader/floating/FloatService$15;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-virtual {v3}, Lpubgm/loader/floating/FloatService;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide v3, -0x71a58c1d73e5L

    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lpubgm/loader/floating/FloatService;->access$1800(Lpubgm/loader/floating/FloatService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 863
    :cond_0
    iget-object v0, p0, Lpubgm/loader/floating/FloatService$15;->val$lobbytxt:Landroid/widget/TextView;

    iget-object v1, p0, Lpubgm/loader/floating/FloatService$15;->this$0:Lpubgm/loader/floating/FloatService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lpubgm/loader/floating/FloatService$15;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-virtual {v3}, Lpubgm/loader/floating/FloatService;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide v3, -0x71558c1d73e5L

    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lpubgm/loader/floating/FloatService;->access$1800(Lpubgm/loader/floating/FloatService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 866
    :goto_0
    return-void
.end method
