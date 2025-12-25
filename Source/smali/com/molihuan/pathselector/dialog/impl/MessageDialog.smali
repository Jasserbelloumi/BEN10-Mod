.class public Lcom/molihuan/pathselector/dialog/impl/MessageDialog;
.super Lcom/molihuan/pathselector/dialog/BaseDialog;
.source "MessageDialog.java"


# instance fields
.field private cancelListener:Lcom/molihuan/pathselector/dialog/BaseDialog$IOnCancelListener;

.field private cancelTv:Landroid/widget/TextView;

.field private cancelfont:Lcom/molihuan/pathselector/entity/FontBean;

.field private confirmFont:Lcom/molihuan/pathselector/entity/FontBean;

.field private confirmListener:Lcom/molihuan/pathselector/dialog/BaseDialog$IOnConfirmListener;

.field private confirmTv:Landroid/widget/TextView;

.field private contentFont:Lcom/molihuan/pathselector/entity/FontBean;

.field private contentTv:Landroid/widget/TextView;

.field private titleFont:Lcom/molihuan/pathselector/entity/FontBean;

.field private titleTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    invoke-direct {p0, p1}, Lcom/molihuan/pathselector/dialog/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getComponents()V
    .locals 1

    .line 69
    sget v0, Lcom/molihuan/pathselector/R$id;->title_general_title_content_btn_mlh:I

    invoke-virtual {p0, v0}, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->titleTv:Landroid/widget/TextView;

    .line 70
    sget v0, Lcom/molihuan/pathselector/R$id;->content_general_title_content_btn_mlh:I

    invoke-virtual {p0, v0}, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->contentTv:Landroid/widget/TextView;

    .line 71
    sget v0, Lcom/molihuan/pathselector/R$id;->confirm_general_title_content_btn_mlh:I

    invoke-virtual {p0, v0}, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->confirmTv:Landroid/widget/TextView;

    .line 72
    sget v0, Lcom/molihuan/pathselector/R$id;->cancel_general_title_content_btn_mlh:I

    invoke-virtual {p0, v0}, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->cancelTv:Landroid/widget/TextView;

    .line 73
    return-void
.end method

.method public initData()V
    .locals 0

    .line 79
    return-void
.end method

.method public initView()V
    .locals 3

    .line 83
    invoke-virtual {p0}, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/ScreenUtils;->getScreenWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4b

    div-int/lit8 v1, v1, 0x64

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 84
    iget-object v0, p0, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->titleFont:Lcom/molihuan/pathselector/entity/FontBean;

    if-eqz v0, :cond_0

    .line 85
    iget-object v1, p0, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/molihuan/pathselector/entity/FontBean;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->titleTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->titleFont:Lcom/molihuan/pathselector/entity/FontBean;

    invoke-virtual {v1}, Lcom/molihuan/pathselector/entity/FontBean;->getSize()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 87
    iget-object v0, p0, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->titleTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->titleFont:Lcom/molihuan/pathselector/entity/FontBean;

    invoke-virtual {v1}, Lcom/molihuan/pathselector/entity/FontBean;->getColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->titleTv:Landroid/widget/TextView;

    sget v1, Lcom/molihuan/pathselector/R$string;->default_dialog_title_mlh:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 90
    iget-object v0, p0, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->titleTv:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    :goto_0
    iget-object v0, p0, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->contentFont:Lcom/molihuan/pathselector/entity/FontBean;

    if-eqz v0, :cond_1

    .line 93
    iget-object v1, p0, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->contentTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/molihuan/pathselector/entity/FontBean;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->contentTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->contentFont:Lcom/molihuan/pathselector/entity/FontBean;

    invoke-virtual {v1}, Lcom/molihuan/pathselector/entity/FontBean;->getSize()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 95
    iget-object v0, p0, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->contentTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->contentFont:Lcom/molihuan/pathselector/entity/FontBean;

    invoke-virtual {v1}, Lcom/molihuan/pathselector/entity/FontBean;->getColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->confirmFont:Lcom/molihuan/pathselector/entity/FontBean;

    if-eqz v0, :cond_2

    .line 98
    iget-object v1, p0, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->confirmTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/molihuan/pathselector/entity/FontBean;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->confirmTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->confirmFont:Lcom/molihuan/pathselector/entity/FontBean;

    invoke-virtual {v1}, Lcom/molihuan/pathselector/entity/FontBean;->getSize()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 100
    iget-object v0, p0, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->confirmTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->confirmFont:Lcom/molihuan/pathselector/entity/FontBean;

    invoke-virtual {v1}, Lcom/molihuan/pathselector/entity/FontBean;->getColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->cancelfont:Lcom/molihuan/pathselector/entity/FontBean;

    if-eqz v0, :cond_3

    .line 103
    iget-object v1, p0, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->cancelTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/molihuan/pathselector/entity/FontBean;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->cancelTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->cancelfont:Lcom/molihuan/pathselector/entity/FontBean;

    invoke-virtual {v1}, Lcom/molihuan/pathselector/entity/FontBean;->getSize()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 105
    iget-object v0, p0, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->cancelTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->cancelfont:Lcom/molihuan/pathselector/entity/FontBean;

    invoke-virtual {v1}, Lcom/molihuan/pathselector/entity/FontBean;->getColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    :cond_3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 118
    .local v0, "id":I
    sget v1, Lcom/molihuan/pathselector/R$id;->confirm_general_title_content_btn_mlh:I

    if-ne v0, v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->confirmListener:Lcom/molihuan/pathselector/dialog/BaseDialog$IOnConfirmListener;

    invoke-interface {v1, p1, p0}, Lcom/molihuan/pathselector/dialog/BaseDialog$IOnConfirmListener;->onClick(Landroid/view/View;Lcom/molihuan/pathselector/dialog/BaseDialog;)Z

    goto :goto_0

    .line 120
    :cond_0
    sget v1, Lcom/molihuan/pathselector/R$id;->cancel_general_title_content_btn_mlh:I

    if-ne v0, v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->cancelListener:Lcom/molihuan/pathselector/dialog/BaseDialog$IOnCancelListener;

    invoke-interface {v1, p1, p0}, Lcom/molihuan/pathselector/dialog/BaseDialog$IOnCancelListener;->onClick(Landroid/view/View;Lcom/molihuan/pathselector/dialog/BaseDialog;)Z

    .line 123
    :cond_1
    :goto_0
    return-void
.end method

.method public setCancel(Lcom/molihuan/pathselector/entity/FontBean;Lcom/molihuan/pathselector/dialog/BaseDialog$IOnCancelListener;)Lcom/molihuan/pathselector/dialog/impl/MessageDialog;
    .locals 0
    .param p1, "cancelfont"    # Lcom/molihuan/pathselector/entity/FontBean;
    .param p2, "cancelListener"    # Lcom/molihuan/pathselector/dialog/BaseDialog$IOnCancelListener;

    .line 57
    iput-object p1, p0, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->cancelfont:Lcom/molihuan/pathselector/entity/FontBean;

    .line 58
    iput-object p2, p0, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->cancelListener:Lcom/molihuan/pathselector/dialog/BaseDialog$IOnCancelListener;

    .line 59
    return-object p0
.end method

.method public setConfirm(Lcom/molihuan/pathselector/entity/FontBean;Lcom/molihuan/pathselector/dialog/BaseDialog$IOnConfirmListener;)Lcom/molihuan/pathselector/dialog/impl/MessageDialog;
    .locals 0
    .param p1, "confirmFont"    # Lcom/molihuan/pathselector/entity/FontBean;
    .param p2, "confirmListener"    # Lcom/molihuan/pathselector/dialog/BaseDialog$IOnConfirmListener;

    .line 51
    iput-object p1, p0, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->confirmFont:Lcom/molihuan/pathselector/entity/FontBean;

    .line 52
    iput-object p2, p0, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->confirmListener:Lcom/molihuan/pathselector/dialog/BaseDialog$IOnConfirmListener;

    .line 53
    return-object p0
.end method

.method public setContent(Lcom/molihuan/pathselector/entity/FontBean;)Lcom/molihuan/pathselector/dialog/impl/MessageDialog;
    .locals 0
    .param p1, "contentFont"    # Lcom/molihuan/pathselector/entity/FontBean;

    .line 46
    iput-object p1, p0, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->contentFont:Lcom/molihuan/pathselector/entity/FontBean;

    .line 47
    return-object p0
.end method

.method public setContentViewID()I
    .locals 1

    .line 64
    sget v0, Lcom/molihuan/pathselector/R$layout;->general_title_content_btn_mlh:I

    return v0
.end method

.method public setListeners()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->confirmTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->cancelTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    return-void
.end method

.method public setTitle(Lcom/molihuan/pathselector/entity/FontBean;)Lcom/molihuan/pathselector/dialog/impl/MessageDialog;
    .locals 0
    .param p1, "titleFont"    # Lcom/molihuan/pathselector/entity/FontBean;

    .line 41
    iput-object p1, p0, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->titleFont:Lcom/molihuan/pathselector/entity/FontBean;

    .line 42
    return-object p0
.end method
