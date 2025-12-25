.class abstract Lcom/blankj/molihuan/utilcode/util/ToastUtils$AbsToast;
.super Ljava/lang/Object;
.source "ToastUtils.java"

# interfaces
.implements Lcom/blankj/molihuan/utilcode/util/ToastUtils$IToast;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/molihuan/utilcode/util/ToastUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbsToast"
.end annotation


# instance fields
.field protected mToast:Landroid/widget/Toast;

.field protected mToastUtils:Lcom/blankj/molihuan/utilcode/util/ToastUtils;

.field protected mToastView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/blankj/molihuan/utilcode/util/ToastUtils;)V
    .locals 4
    .param p1, "toastUtils"    # Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    .line 791
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 792
    new-instance v0, Landroid/widget/Toast;

    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$AbsToast;->mToast:Landroid/widget/Toast;

    .line 793
    iput-object p1, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$AbsToast;->mToastUtils:Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    .line 795
    invoke-static {p1}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->access$400(Lcom/blankj/molihuan/utilcode/util/ToastUtils;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$AbsToast;->mToastUtils:Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->access$500(Lcom/blankj/molihuan/utilcode/util/ToastUtils;)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$AbsToast;->mToastUtils:Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->access$600(Lcom/blankj/molihuan/utilcode/util/ToastUtils;)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 796
    :cond_0
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$AbsToast;->mToast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$AbsToast;->mToastUtils:Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    invoke-static {v1}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->access$400(Lcom/blankj/molihuan/utilcode/util/ToastUtils;)I

    move-result v1

    iget-object v2, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$AbsToast;->mToastUtils:Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    invoke-static {v2}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->access$500(Lcom/blankj/molihuan/utilcode/util/ToastUtils;)I

    move-result v2

    iget-object v3, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$AbsToast;->mToastUtils:Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    invoke-static {v3}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->access$600(Lcom/blankj/molihuan/utilcode/util/ToastUtils;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 798
    :cond_1
    return-void
.end method

.method private processRtlIfNeed()V
    .locals 1

    .line 833
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/UtilsBridge;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 834
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/blankj/molihuan/utilcode/util/ToastUtils$AbsToast;->getToastViewSnapshot(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/blankj/molihuan/utilcode/util/ToastUtils$AbsToast;->setToastView(Landroid/view/View;)V

    .line 836
    :cond_0
    return-void
.end method

.method private setBg(Landroid/widget/TextView;)V
    .locals 7
    .param p1, "msgTv"    # Landroid/widget/TextView;

    .line 839
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$AbsToast;->mToastUtils:Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->access$1000(Lcom/blankj/molihuan/utilcode/util/ToastUtils;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 840
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$AbsToast;->mToastView:Landroid/view/View;

    iget-object v2, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$AbsToast;->mToastUtils:Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    invoke-static {v2}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->access$1000(Lcom/blankj/molihuan/utilcode/util/ToastUtils;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 841
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0

    .line 842
    :cond_0
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$AbsToast;->mToastUtils:Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->access$1100(Lcom/blankj/molihuan/utilcode/util/ToastUtils;)I

    move-result v0

    const v2, -0x1000001

    if-eq v0, v2, :cond_4

    .line 843
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$AbsToast;->mToastView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 844
    .local v0, "toastBg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 845
    .local v2, "msgBg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 846
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    iget-object v5, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$AbsToast;->mToastUtils:Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    invoke-static {v5}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->access$1100(Lcom/blankj/molihuan/utilcode/util/ToastUtils;)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 847
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0

    .line 848
    :cond_1
    if-eqz v0, :cond_2

    .line 849
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    iget-object v4, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$AbsToast;->mToastUtils:Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    invoke-static {v4}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->access$1100(Lcom/blankj/molihuan/utilcode/util/ToastUtils;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 850
    :cond_2
    if-eqz v2, :cond_3

    .line 851
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    iget-object v4, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$AbsToast;->mToastUtils:Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    invoke-static {v4}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->access$1100(Lcom/blankj/molihuan/utilcode/util/ToastUtils;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 853
    :cond_3
    iget-object v1, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$AbsToast;->mToastView:Landroid/view/View;

    iget-object v3, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$AbsToast;->mToastUtils:Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    invoke-static {v3}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->access$1100(Lcom/blankj/molihuan/utilcode/util/ToastUtils;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 856
    .end local v0    # "toastBg":Landroid/graphics/drawable/Drawable;
    .end local v2    # "msgBg":Landroid/graphics/drawable/Drawable;
    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 861
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$AbsToast;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 862
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 864
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$AbsToast;->mToast:Landroid/widget/Toast;

    .line 865
    iput-object v0, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$AbsToast;->mToastView:Landroid/view/View;

    .line 866
    return-void
.end method

.method getToastViewSnapshot(I)Landroid/view/View;
    .locals 4
    .param p1, "index"    # I

    .line 869
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$AbsToast;->mToastView:Landroid/view/View;

    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/UtilsBridge;->view2Bitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 870
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/widget/ImageView;

    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 871
    .local v1, "toastIv":Landroid/widget/ImageView;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TAG_TOAST"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 872
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 873
    return-object v1
.end method

.method public setToastView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 802
    iput-object p1, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$AbsToast;->mToastView:Landroid/view/View;

    .line 803
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$AbsToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 804
    return-void
.end method

.method public setToastView(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 808
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$AbsToast;->mToastUtils:Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    invoke-static {v0, p1}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->access$700(Lcom/blankj/molihuan/utilcode/util/ToastUtils;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v0

    .line 809
    .local v0, "utilsToastView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 810
    invoke-virtual {p0, v0}, Lcom/blankj/molihuan/utilcode/util/ToastUtils$AbsToast;->setToastView(Landroid/view/View;)V

    .line 811
    invoke-direct {p0}, Lcom/blankj/molihuan/utilcode/util/ToastUtils$AbsToast;->processRtlIfNeed()V

    .line 812
    return-void

    .line 815
    :cond_0
    iget-object v1, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$AbsToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$AbsToast;->mToastView:Landroid/view/View;

    .line 816
    const v2, 0x102000b

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    .line 817
    :cond_1
    sget v1, Lcom/molihuan/pathselector/R$layout;->utils_toast_view:I

    invoke-static {v1}, Lcom/blankj/molihuan/utilcode/util/UtilsBridge;->layoutId2View(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/blankj/molihuan/utilcode/util/ToastUtils$AbsToast;->setToastView(Landroid/view/View;)V

    .line 820
    :cond_2
    iget-object v1, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$AbsToast;->mToastView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 821
    .local v1, "messageTv":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 822
    iget-object v2, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$AbsToast;->mToastUtils:Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    invoke-static {v2}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->access$800(Lcom/blankj/molihuan/utilcode/util/ToastUtils;)I

    move-result v2

    const v3, -0x1000001

    if-eq v2, v3, :cond_3

    .line 823
    iget-object v2, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$AbsToast;->mToastUtils:Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    invoke-static {v2}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->access$800(Lcom/blankj/molihuan/utilcode/util/ToastUtils;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 825
    :cond_3
    iget-object v2, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$AbsToast;->mToastUtils:Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    invoke-static {v2}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->access$900(Lcom/blankj/molihuan/utilcode/util/ToastUtils;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 826
    iget-object v2, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$AbsToast;->mToastUtils:Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    invoke-static {v2}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->access$900(Lcom/blankj/molihuan/utilcode/util/ToastUtils;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 828
    :cond_4
    invoke-direct {p0, v1}, Lcom/blankj/molihuan/utilcode/util/ToastUtils$AbsToast;->setBg(Landroid/widget/TextView;)V

    .line 829
    invoke-direct {p0}, Lcom/blankj/molihuan/utilcode/util/ToastUtils$AbsToast;->processRtlIfNeed()V

    .line 830
    return-void
.end method
