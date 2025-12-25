.class public final Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
.super Ljava/lang/Object;
.source "PowerSpinnerView.kt"


# annotations
.annotation runtime Lcom/skydoves/powerspinner/internals/PowerSpinnerDsl;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/skydoves/powerspinner/PowerSpinnerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPowerSpinnerView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PowerSpinnerView.kt\ncom/skydoves/powerspinner/PowerSpinnerView$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,966:1\n1#2:967\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u000cJ\u0010\u0010\r\u001a\u00020\u00002\u0008\u0008\u0001\u0010\t\u001a\u00020\u000eJ\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0010J\u0010\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0001\u0010\t\u001a\u00020\u000eJ\u0010\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0001\u0010\t\u001a\u00020\u000eJ\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nJ\u0010\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0001\u0010\t\u001a\u00020\u000eJ\u0010\u0010\u0016\u001a\u00020\u00002\u0008\u0008\u0001\u0010\t\u001a\u00020\u000eJ\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0018J\u0014\u0010\u0019\u001a\u00020\u00002\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001bJ\u000e\u0010\u0019\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u001dJp\u0010\u001e\u001a\u00020\u0000\"\u0004\u0008\u0000\u0010\u001f2b\u0010\u001a\u001a^\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008!\u0012\u0008\u0008\"\u0012\u0004\u0008\u0008(#\u0012\u0015\u0012\u0013\u0018\u0001H\u001f\u00a2\u0006\u000c\u0008!\u0012\u0008\u0008\"\u0012\u0004\u0008\u0008($\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008!\u0012\u0008\u0008\"\u0012\u0004\u0008\u0008(%\u0012\u0013\u0012\u0011H\u001f\u00a2\u0006\u000c\u0008!\u0012\u0008\u0008\"\u0012\u0004\u0008\u0008(&\u0012\u0004\u0012\u00020\u001c0 J\u001a\u0010\u001e\u001a\u00020\u0000\"\u0004\u0008\u0000\u0010\u001f2\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u0002H\u001f0(J \u0010)\u001a\u00020\u00002\u0018\u0010*\u001a\u0014\u0012\u0004\u0012\u00020,\u0012\u0004\u0012\u00020-\u0012\u0004\u0012\u00020\u001c0+J\u000e\u0010)\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020.J\u000e\u0010/\u001a\u00020\u00002\u0006\u0010\t\u001a\u000200J\u000e\u00101\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nJ\u000e\u00102\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nJ\u0010\u00103\u001a\u00020\u00002\u0008\u0008\u0001\u0010\t\u001a\u00020\u000eJ\u000e\u00104\u001a\u00020\u00002\u0006\u0010\t\u001a\u000205J\u0010\u00106\u001a\u00020\u00002\u0008\u0008\u0001\u0010\t\u001a\u00020\u000eJ\u000e\u00107\u001a\u00020\u00002\u0006\u0010\t\u001a\u000208J\u0010\u00109\u001a\u00020\u00002\u0008\u0008\u0001\u0010\t\u001a\u00020\u000eJ\u0010\u0010:\u001a\u00020\u00002\u0008\u0008\u0001\u0010\t\u001a\u00020\u000eJ\u0010\u0010;\u001a\u00020\u00002\u0008\u0008\u0001\u0010\t\u001a\u00020\u000eJ\u0010\u0010<\u001a\u00020\u00002\u0008\u0008\u0001\u0010\t\u001a\u00020\u000eR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006="
    }
    d2 = {
        "Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "powerSpinnerView",
        "Lcom/skydoves/powerspinner/PowerSpinnerView;",
        "build",
        "setArrowAnimate",
        "value",
        "",
        "setArrowAnimationDuration",
        "",
        "setArrowDrawableResource",
        "",
        "setArrowGravity",
        "Lcom/skydoves/powerspinner/SpinnerGravity;",
        "setArrowPadding",
        "setArrowTint",
        "setDisableChangeTextWhenNotified",
        "setDismissWhenNotifiedItemSelected",
        "setDividerColor",
        "setDividerSize",
        "setLifecycleOwner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "setOnSpinnerDismissListener",
        "block",
        "Lkotlin/Function0;",
        "",
        "Lcom/skydoves/powerspinner/OnSpinnerDismissListener;",
        "setOnSpinnerItemSelectedListener",
        "T",
        "Lkotlin/Function4;",
        "Lkotlin/ParameterName;",
        "name",
        "oldIndex",
        "oldItem",
        "newIndex",
        "newItem",
        "onSpinnerItemSelectedListener",
        "Lcom/skydoves/powerspinner/OnSpinnerItemSelectedListener;",
        "setOnSpinnerOutsideTouchListener",
        "unit",
        "Lkotlin/Function2;",
        "Landroid/view/View;",
        "Landroid/view/MotionEvent;",
        "Lcom/skydoves/powerspinner/OnSpinnerOutsideTouchListener;",
        "setPreferenceName",
        "",
        "setShowArrow",
        "setShowDivider",
        "setSpinnerItemHeight",
        "setSpinnerPopupAnimation",
        "Lcom/skydoves/powerspinner/SpinnerAnimation;",
        "setSpinnerPopupAnimationStyle",
        "setSpinnerPopupBackground",
        "Landroid/graphics/drawable/Drawable;",
        "setSpinnerPopupBackgroundResource",
        "setSpinnerPopupHeight",
        "setSpinnerPopupMaxHeight",
        "setSpinnerPopupWidth",
        "powerspinner_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;


# direct methods
.method public static synthetic $r8$lambda$Uc5MpZ6oWE756tQkV4Xk32iDdTs(Lkotlin/jvm/functions/Function4;ILjava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;->setOnSpinnerItemSelectedListener$lambda-15$lambda-14(Lkotlin/jvm/functions/Function4;ILjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iiHH6f73sokRxRy3WIxJifeDpE8(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;->setOnSpinnerDismissListener$lambda-21$lambda-20(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x23sVKdATeysWO13hqA3Ry1pHSI(Lkotlin/jvm/functions/Function2;Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;->setOnSpinnerOutsideTouchListener$lambda-18$lambda-17(Lkotlin/jvm/functions/Function2;Landroid/view/View;Landroid/view/MotionEvent;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 835
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 837
    new-instance v0, Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-direct {v0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 836
    return-void
.end method

.method private static final setOnSpinnerDismissListener$lambda-21$lambda-20(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p0, "$block"    # Lkotlin/jvm/functions/Function0;

    const-string v0, "$block"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 923
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 924
    return-void
.end method

.method private static final setOnSpinnerItemSelectedListener$lambda-15$lambda-14(Lkotlin/jvm/functions/Function4;ILjava/lang/Object;ILjava/lang/Object;)V
    .locals 2
    .param p0, "$block"    # Lkotlin/jvm/functions/Function4;
    .param p1, "oldIndex"    # I
    .param p2, "oldItem"    # Ljava/lang/Object;
    .param p3, "newIndex"    # I
    .param p4, "newItem"    # Ljava/lang/Object;

    const-string v0, "$block"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 900
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, p2, v1, p4}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    return-void
.end method

.method private static final setOnSpinnerOutsideTouchListener$lambda-18$lambda-17(Lkotlin/jvm/functions/Function2;Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 1
    .param p0, "$unit"    # Lkotlin/jvm/functions/Function2;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    const-string v0, "$unit"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 913
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final build()Lcom/skydoves/powerspinner/PowerSpinnerView;
    .locals 1

    .line 963
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    return-object v0
.end method

.method public final setArrowAnimate(Z)Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .locals 3
    .param p1, "value"    # Z

    .line 840
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    .line 967
    .local v0, "$this$setArrowAnimate_u24lambda_u2d0":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    const/4 v1, 0x0

    .line 840
    .local v1, "$i$a$-apply-PowerSpinnerView$Builder$setArrowAnimate$1":I
    iget-object v2, v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v2, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setArrowAnimate(Z)V

    .end local v0    # "$this$setArrowAnimate_u24lambda_u2d0":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .end local v1    # "$i$a$-apply-PowerSpinnerView$Builder$setArrowAnimate$1":I
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    return-object v0
.end method

.method public final setArrowAnimationDuration(J)Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .locals 3
    .param p1, "value"    # J

    .line 842
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    .local v0, "$this$setArrowAnimationDuration_u24lambda_u2d1":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    const/4 v1, 0x0

    .line 843
    .local v1, "$i$a$-apply-PowerSpinnerView$Builder$setArrowAnimationDuration$1":I
    iget-object v2, v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v2, p1, p2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setArrowAnimationDuration(J)V

    .line 844
    nop

    .line 842
    .end local v0    # "$this$setArrowAnimationDuration_u24lambda_u2d1":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .end local v1    # "$i$a$-apply-PowerSpinnerView$Builder$setArrowAnimationDuration$1":I
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    .line 844
    return-object v0
.end method

.method public final setArrowDrawableResource(I)Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .locals 3
    .param p1, "value"    # I

    .line 846
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    .local v0, "$this$setArrowDrawableResource_u24lambda_u2d2":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    const/4 v1, 0x0

    .line 847
    .local v1, "$i$a$-apply-PowerSpinnerView$Builder$setArrowDrawableResource$1":I
    iget-object v2, v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v2, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setArrowResource(I)V

    .line 848
    nop

    .line 846
    .end local v0    # "$this$setArrowDrawableResource_u24lambda_u2d2":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .end local v1    # "$i$a$-apply-PowerSpinnerView$Builder$setArrowDrawableResource$1":I
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    .line 848
    return-object v0
.end method

.method public final setArrowGravity(Lcom/skydoves/powerspinner/SpinnerGravity;)Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .locals 3
    .param p1, "value"    # Lcom/skydoves/powerspinner/SpinnerGravity;

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 853
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    .local v0, "$this$setArrowGravity_u24lambda_u2d4":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    const/4 v1, 0x0

    .line 854
    .local v1, "$i$a$-apply-PowerSpinnerView$Builder$setArrowGravity$1":I
    iget-object v2, v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v2, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setArrowGravity(Lcom/skydoves/powerspinner/SpinnerGravity;)V

    .line 855
    nop

    .line 853
    .end local v0    # "$this$setArrowGravity_u24lambda_u2d4":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .end local v1    # "$i$a$-apply-PowerSpinnerView$Builder$setArrowGravity$1":I
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    .line 855
    return-object v0
.end method

.method public final setArrowPadding(I)Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .locals 3
    .param p1, "value"    # I

    .line 858
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    .line 967
    .local v0, "$this$setArrowPadding_u24lambda_u2d5":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    const/4 v1, 0x0

    .line 858
    .local v1, "$i$a$-apply-PowerSpinnerView$Builder$setArrowPadding$1":I
    iget-object v2, v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v2, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setArrowPadding(I)V

    .end local v0    # "$this$setArrowPadding_u24lambda_u2d5":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .end local v1    # "$i$a$-apply-PowerSpinnerView$Builder$setArrowPadding$1":I
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    return-object v0
.end method

.method public final setArrowTint(I)Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .locals 3
    .param p1, "value"    # I

    .line 861
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    .line 967
    .local v0, "$this$setArrowTint_u24lambda_u2d6":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    const/4 v1, 0x0

    .line 861
    .local v1, "$i$a$-apply-PowerSpinnerView$Builder$setArrowTint$1":I
    iget-object v2, v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v2, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setArrowTint(I)V

    .end local v0    # "$this$setArrowTint_u24lambda_u2d6":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .end local v1    # "$i$a$-apply-PowerSpinnerView$Builder$setArrowTint$1":I
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    return-object v0
.end method

.method public final setDisableChangeTextWhenNotified(Z)Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .locals 3
    .param p1, "value"    # Z

    .line 927
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    .local v0, "$this$setDisableChangeTextWhenNotified_u24lambda_u2d22":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    const/4 v1, 0x0

    .line 928
    .local v1, "$i$a$-apply-PowerSpinnerView$Builder$setDisableChangeTextWhenNotified$1":I
    iget-object v2, v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    iput-boolean p1, v2, Lcom/skydoves/powerspinner/PowerSpinnerView;->disableChangeTextWhenNotified:Z

    .line 929
    nop

    .line 927
    .end local v0    # "$this$setDisableChangeTextWhenNotified_u24lambda_u2d22":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .end local v1    # "$i$a$-apply-PowerSpinnerView$Builder$setDisableChangeTextWhenNotified$1":I
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    .line 929
    return-object v0
.end method

.method public final setDismissWhenNotifiedItemSelected(Z)Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .locals 3
    .param p1, "value"    # Z

    .line 880
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    .local v0, "$this$setDismissWhenNotifiedItemSelected_u24lambda_u2d12":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    const/4 v1, 0x0

    .line 881
    .local v1, "$i$a$-apply-PowerSpinnerView$Builder$setDismissWhenNotifiedItemSelected$1":I
    iget-object v2, v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v2, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setDismissWhenNotifiedItemSelected(Z)V

    .line 882
    nop

    .line 880
    .end local v0    # "$this$setDismissWhenNotifiedItemSelected_u24lambda_u2d12":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .end local v1    # "$i$a$-apply-PowerSpinnerView$Builder$setDismissWhenNotifiedItemSelected$1":I
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    .line 882
    return-object v0
.end method

.method public final setDividerColor(I)Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .locals 3
    .param p1, "value"    # I

    .line 870
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    .line 967
    .local v0, "$this$setDividerColor_u24lambda_u2d9":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    const/4 v1, 0x0

    .line 870
    .local v1, "$i$a$-apply-PowerSpinnerView$Builder$setDividerColor$1":I
    iget-object v2, v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v2, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setDividerColor(I)V

    .end local v0    # "$this$setDividerColor_u24lambda_u2d9":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .end local v1    # "$i$a$-apply-PowerSpinnerView$Builder$setDividerColor$1":I
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    return-object v0
.end method

.method public final setDividerSize(I)Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .locals 3
    .param p1, "value"    # I

    .line 867
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    .line 967
    .local v0, "$this$setDividerSize_u24lambda_u2d8":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    const/4 v1, 0x0

    .line 867
    .local v1, "$i$a$-apply-PowerSpinnerView$Builder$setDividerSize$1":I
    iget-object v2, v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v2, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setDividerSize(I)V

    .end local v0    # "$this$setDividerSize_u24lambda_u2d8":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .end local v1    # "$i$a$-apply-PowerSpinnerView$Builder$setDividerSize$1":I
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    return-object v0
.end method

.method public final setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .locals 3
    .param p1, "value"    # Landroidx/lifecycle/LifecycleOwner;

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 959
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    .local v0, "$this$setLifecycleOwner_u24lambda_u2d30":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    const/4 v1, 0x0

    .line 960
    .local v1, "$i$a$-apply-PowerSpinnerView$Builder$setLifecycleOwner$1":I
    iget-object v2, v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v2, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 961
    nop

    .line 959
    .end local v0    # "$this$setLifecycleOwner_u24lambda_u2d30":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .end local v1    # "$i$a$-apply-PowerSpinnerView$Builder$setLifecycleOwner$1":I
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    .line 961
    return-object v0
.end method

.method public final setOnSpinnerDismissListener(Lcom/skydoves/powerspinner/OnSpinnerDismissListener;)Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .locals 3
    .param p1, "value"    # Lcom/skydoves/powerspinner/OnSpinnerDismissListener;

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 916
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    .local v0, "$this$setOnSpinnerDismissListener_u24lambda_u2d19":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    const/4 v1, 0x0

    .line 917
    .local v1, "$i$a$-apply-PowerSpinnerView$Builder$setOnSpinnerDismissListener$1":I
    iget-object v2, v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v2, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setOnSpinnerDismissListener(Lcom/skydoves/powerspinner/OnSpinnerDismissListener;)V

    .line 918
    nop

    .line 916
    .end local v0    # "$this$setOnSpinnerDismissListener_u24lambda_u2d19":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .end local v1    # "$i$a$-apply-PowerSpinnerView$Builder$setOnSpinnerDismissListener$1":I
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    .line 918
    return-object v0
.end method

.method public final synthetic setOnSpinnerDismissListener(Lkotlin/jvm/functions/Function0;)Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .locals 4
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 921
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    .local v0, "$this$setOnSpinnerDismissListener_u24lambda_u2d21":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    const/4 v1, 0x0

    .line 922
    .local v1, "$i$a$-apply-PowerSpinnerView$Builder$setOnSpinnerDismissListener$2":I
    iget-object v2, v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    new-instance v3, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder$$ExternalSyntheticLambda2;

    invoke-direct {v3, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v2, v3}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setOnSpinnerDismissListener(Lcom/skydoves/powerspinner/OnSpinnerDismissListener;)V

    .line 925
    nop

    .line 921
    .end local v0    # "$this$setOnSpinnerDismissListener_u24lambda_u2d21":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .end local v1    # "$i$a$-apply-PowerSpinnerView$Builder$setOnSpinnerDismissListener$2":I
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    .line 925
    return-object v0
.end method

.method public final setOnSpinnerItemSelectedListener(Lcom/skydoves/powerspinner/OnSpinnerItemSelectedListener;)Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .locals 3
    .param p1, "onSpinnerItemSelectedListener"    # Lcom/skydoves/powerspinner/OnSpinnerItemSelectedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/skydoves/powerspinner/OnSpinnerItemSelectedListener<",
            "TT;>;)",
            "Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;"
        }
    .end annotation

    const-string v0, "onSpinnerItemSelectedListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 886
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    .local v0, "$this$setOnSpinnerItemSelectedListener_u24lambda_u2d13":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    const/4 v1, 0x0

    .line 888
    .local v1, "$i$a$-apply-PowerSpinnerView$Builder$setOnSpinnerItemSelectedListener$1":I
    iget-object v2, v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-static {v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->access$getAdapter$p(Lcom/skydoves/powerspinner/PowerSpinnerView;)Lcom/skydoves/powerspinner/PowerSpinnerInterface;

    move-result-object v2

    .line 887
    nop

    .line 889
    .local v2, "adapter":Lcom/skydoves/powerspinner/PowerSpinnerInterface;
    invoke-interface {v2, p1}, Lcom/skydoves/powerspinner/PowerSpinnerInterface;->setOnSpinnerItemSelectedListener(Lcom/skydoves/powerspinner/OnSpinnerItemSelectedListener;)V

    .line 890
    nop

    .line 886
    .end local v0    # "$this$setOnSpinnerItemSelectedListener_u24lambda_u2d13":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .end local v1    # "$i$a$-apply-PowerSpinnerView$Builder$setOnSpinnerItemSelectedListener$1":I
    .end local v2    # "adapter":Lcom/skydoves/powerspinner/PowerSpinnerInterface;
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    .line 890
    return-object v0
.end method

.method public final synthetic setOnSpinnerItemSelectedListener(Lkotlin/jvm/functions/Function4;)Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .locals 4
    .param p1, "block"    # Lkotlin/jvm/functions/Function4;

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 895
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    .local v0, "$this$setOnSpinnerItemSelectedListener_u24lambda_u2d15":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    const/4 v1, 0x0

    .line 897
    .local v1, "$i$a$-apply-PowerSpinnerView$Builder$setOnSpinnerItemSelectedListener$2":I
    iget-object v2, v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-static {v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->access$getAdapter$p(Lcom/skydoves/powerspinner/PowerSpinnerView;)Lcom/skydoves/powerspinner/PowerSpinnerInterface;

    move-result-object v2

    .line 896
    nop

    .line 898
    .local v2, "adapter":Lcom/skydoves/powerspinner/PowerSpinnerInterface;
    new-instance v3, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function4;)V

    invoke-interface {v2, v3}, Lcom/skydoves/powerspinner/PowerSpinnerInterface;->setOnSpinnerItemSelectedListener(Lcom/skydoves/powerspinner/OnSpinnerItemSelectedListener;)V

    .line 902
    nop

    .line 895
    .end local v0    # "$this$setOnSpinnerItemSelectedListener_u24lambda_u2d15":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .end local v1    # "$i$a$-apply-PowerSpinnerView$Builder$setOnSpinnerItemSelectedListener$2":I
    .end local v2    # "adapter":Lcom/skydoves/powerspinner/PowerSpinnerInterface;
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    .line 902
    return-object v0
.end method

.method public final setOnSpinnerOutsideTouchListener(Lcom/skydoves/powerspinner/OnSpinnerOutsideTouchListener;)Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .locals 3
    .param p1, "value"    # Lcom/skydoves/powerspinner/OnSpinnerOutsideTouchListener;

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 905
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    .local v0, "$this$setOnSpinnerOutsideTouchListener_u24lambda_u2d16":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    const/4 v1, 0x0

    .line 906
    .local v1, "$i$a$-apply-PowerSpinnerView$Builder$setOnSpinnerOutsideTouchListener$1":I
    iget-object v2, v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v2, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerOutsideTouchListener(Lcom/skydoves/powerspinner/OnSpinnerOutsideTouchListener;)V

    .line 907
    nop

    .line 905
    .end local v0    # "$this$setOnSpinnerOutsideTouchListener_u24lambda_u2d16":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .end local v1    # "$i$a$-apply-PowerSpinnerView$Builder$setOnSpinnerOutsideTouchListener$1":I
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    .line 907
    return-object v0
.end method

.method public final synthetic setOnSpinnerOutsideTouchListener(Lkotlin/jvm/functions/Function2;)Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .locals 4
    .param p1, "unit"    # Lkotlin/jvm/functions/Function2;

    const-string/jumbo v0, "unit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 911
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    .local v0, "$this$setOnSpinnerOutsideTouchListener_u24lambda_u2d18":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    const/4 v1, 0x0

    .line 912
    .local v1, "$i$a$-apply-PowerSpinnerView$Builder$setOnSpinnerOutsideTouchListener$2":I
    iget-object v2, v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    new-instance v3, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v2, v3}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerOutsideTouchListener(Lcom/skydoves/powerspinner/OnSpinnerOutsideTouchListener;)V

    .line 914
    nop

    .line 911
    .end local v0    # "$this$setOnSpinnerOutsideTouchListener_u24lambda_u2d18":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .end local v1    # "$i$a$-apply-PowerSpinnerView$Builder$setOnSpinnerOutsideTouchListener$2":I
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    .line 914
    return-object v0
.end method

.method public final setPreferenceName(Ljava/lang/String;)Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 955
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    .local v0, "$this$setPreferenceName_u24lambda_u2d29":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    const/4 v1, 0x0

    .line 956
    .local v1, "$i$a$-apply-PowerSpinnerView$Builder$setPreferenceName$1":I
    iget-object v2, v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v2, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setPreferenceName(Ljava/lang/String;)V

    .line 957
    nop

    .line 955
    .end local v0    # "$this$setPreferenceName_u24lambda_u2d29":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .end local v1    # "$i$a$-apply-PowerSpinnerView$Builder$setPreferenceName$1":I
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    .line 957
    return-object v0
.end method

.method public final setShowArrow(Z)Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .locals 3
    .param p1, "value"    # Z

    .line 851
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    .line 967
    .local v0, "$this$setShowArrow_u24lambda_u2d3":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    const/4 v1, 0x0

    .line 851
    .local v1, "$i$a$-apply-PowerSpinnerView$Builder$setShowArrow$1":I
    iget-object v2, v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v2, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setShowArrow(Z)V

    .end local v0    # "$this$setShowArrow_u24lambda_u2d3":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .end local v1    # "$i$a$-apply-PowerSpinnerView$Builder$setShowArrow$1":I
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    return-object v0
.end method

.method public final setShowDivider(Z)Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .locals 3
    .param p1, "value"    # Z

    .line 864
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    .line 967
    .local v0, "$this$setShowDivider_u24lambda_u2d7":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    const/4 v1, 0x0

    .line 864
    .local v1, "$i$a$-apply-PowerSpinnerView$Builder$setShowDivider$1":I
    iget-object v2, v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v2, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setShowDivider(Z)V

    .end local v0    # "$this$setShowDivider_u24lambda_u2d7":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .end local v1    # "$i$a$-apply-PowerSpinnerView$Builder$setShowDivider$1":I
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    return-object v0
.end method

.method public final setSpinnerItemHeight(I)Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .locals 3
    .param p1, "value"    # I

    .line 951
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    .local v0, "$this$setSpinnerItemHeight_u24lambda_u2d28":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    const/4 v1, 0x0

    .line 952
    .local v1, "$i$a$-apply-PowerSpinnerView$Builder$setSpinnerItemHeight$1":I
    iget-object v2, v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v2, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerItemHeight(I)V

    .line 953
    nop

    .line 951
    .end local v0    # "$this$setSpinnerItemHeight_u24lambda_u2d28":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .end local v1    # "$i$a$-apply-PowerSpinnerView$Builder$setSpinnerItemHeight$1":I
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    .line 953
    return-object v0
.end method

.method public final setSpinnerPopupAnimation(Lcom/skydoves/powerspinner/SpinnerAnimation;)Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .locals 3
    .param p1, "value"    # Lcom/skydoves/powerspinner/SpinnerAnimation;

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 931
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    .local v0, "$this$setSpinnerPopupAnimation_u24lambda_u2d23":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    const/4 v1, 0x0

    .line 932
    .local v1, "$i$a$-apply-PowerSpinnerView$Builder$setSpinnerPopupAnimation$1":I
    iget-object v2, v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v2, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerPopupAnimation(Lcom/skydoves/powerspinner/SpinnerAnimation;)V

    .line 933
    nop

    .line 931
    .end local v0    # "$this$setSpinnerPopupAnimation_u24lambda_u2d23":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .end local v1    # "$i$a$-apply-PowerSpinnerView$Builder$setSpinnerPopupAnimation$1":I
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    .line 933
    return-object v0
.end method

.method public final setSpinnerPopupAnimationStyle(I)Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .locals 3
    .param p1, "value"    # I

    .line 935
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    .local v0, "$this$setSpinnerPopupAnimationStyle_u24lambda_u2d24":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    const/4 v1, 0x0

    .line 936
    .local v1, "$i$a$-apply-PowerSpinnerView$Builder$setSpinnerPopupAnimationStyle$1":I
    iget-object v2, v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v2, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerPopupAnimationStyle(I)V

    .line 937
    nop

    .line 935
    .end local v0    # "$this$setSpinnerPopupAnimationStyle_u24lambda_u2d24":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .end local v1    # "$i$a$-apply-PowerSpinnerView$Builder$setSpinnerPopupAnimationStyle$1":I
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    .line 937
    return-object v0
.end method

.method public final setSpinnerPopupBackground(Landroid/graphics/drawable/Drawable;)Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .locals 3
    .param p1, "value"    # Landroid/graphics/drawable/Drawable;

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 872
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    .local v0, "$this$setSpinnerPopupBackground_u24lambda_u2d10":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    const/4 v1, 0x0

    .line 873
    .local v1, "$i$a$-apply-PowerSpinnerView$Builder$setSpinnerPopupBackground$1":I
    iget-object v2, v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v2, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerPopupBackground(Landroid/graphics/drawable/Drawable;)V

    .line 874
    nop

    .line 872
    .end local v0    # "$this$setSpinnerPopupBackground_u24lambda_u2d10":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .end local v1    # "$i$a$-apply-PowerSpinnerView$Builder$setSpinnerPopupBackground$1":I
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    .line 874
    return-object v0
.end method

.method public final setSpinnerPopupBackgroundResource(I)Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .locals 3
    .param p1, "value"    # I

    .line 876
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    .local v0, "$this$setSpinnerPopupBackgroundResource_u24lambda_u2d11":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    const/4 v1, 0x0

    .line 877
    .local v1, "$i$a$-apply-PowerSpinnerView$Builder$setSpinnerPopupBackgroundResource$1":I
    iget-object v2, v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v2, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setBackgroundResource(I)V

    .line 878
    nop

    .line 876
    .end local v0    # "$this$setSpinnerPopupBackgroundResource_u24lambda_u2d11":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .end local v1    # "$i$a$-apply-PowerSpinnerView$Builder$setSpinnerPopupBackgroundResource$1":I
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    .line 878
    return-object v0
.end method

.method public final setSpinnerPopupHeight(I)Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .locals 3
    .param p1, "value"    # I

    .line 943
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    .local v0, "$this$setSpinnerPopupHeight_u24lambda_u2d26":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    const/4 v1, 0x0

    .line 944
    .local v1, "$i$a$-apply-PowerSpinnerView$Builder$setSpinnerPopupHeight$1":I
    iget-object v2, v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v2, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerPopupHeight(I)V

    .line 945
    nop

    .line 943
    .end local v0    # "$this$setSpinnerPopupHeight_u24lambda_u2d26":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .end local v1    # "$i$a$-apply-PowerSpinnerView$Builder$setSpinnerPopupHeight$1":I
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    .line 945
    return-object v0
.end method

.method public final setSpinnerPopupMaxHeight(I)Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .locals 3
    .param p1, "value"    # I

    .line 947
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    .local v0, "$this$setSpinnerPopupMaxHeight_u24lambda_u2d27":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    const/4 v1, 0x0

    .line 948
    .local v1, "$i$a$-apply-PowerSpinnerView$Builder$setSpinnerPopupMaxHeight$1":I
    iget-object v2, v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v2, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerPopupMaxHeight(I)V

    .line 949
    nop

    .line 947
    .end local v0    # "$this$setSpinnerPopupMaxHeight_u24lambda_u2d27":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .end local v1    # "$i$a$-apply-PowerSpinnerView$Builder$setSpinnerPopupMaxHeight$1":I
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    .line 949
    return-object v0
.end method

.method public final setSpinnerPopupWidth(I)Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .locals 3
    .param p1, "value"    # I

    .line 939
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    .local v0, "$this$setSpinnerPopupWidth_u24lambda_u2d25":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    const/4 v1, 0x0

    .line 940
    .local v1, "$i$a$-apply-PowerSpinnerView$Builder$setSpinnerPopupWidth$1":I
    iget-object v2, v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v2, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerPopupWidth(I)V

    .line 941
    nop

    .line 939
    .end local v0    # "$this$setSpinnerPopupWidth_u24lambda_u2d25":Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;
    .end local v1    # "$i$a$-apply-PowerSpinnerView$Builder$setSpinnerPopupWidth$1":I
    move-object v0, p0

    check-cast v0, Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;

    .line 941
    return-object v0
.end method
