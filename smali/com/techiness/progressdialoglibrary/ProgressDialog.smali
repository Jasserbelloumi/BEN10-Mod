.class public final Lcom/techiness/progressdialoglibrary/ProgressDialog;
.super Ljava/lang/Object;
.source "ProgressDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/techiness/progressdialoglibrary/ProgressDialog$ThemeConstant;,
        Lcom/techiness/progressdialoglibrary/ProgressDialog$ModeConstant;,
        Lcom/techiness/progressdialoglibrary/ProgressDialog$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001b\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 ~2\u00020\u0001:\u0004~\u007f\u0080\u0001B\u0019\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B#\u0008\u0007\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0008J\u0006\u0010F\u001a\u00020GJ\u0010\u0010H\u001a\u00020G2\u0006\u0010I\u001a\u00020JH\u0002J\u0008\u0010K\u001a\u0004\u0018\u00010LJ\u0008\u0010M\u001a\u0004\u0018\u00010LJ\u0006\u0010N\u001a\u00020JJ\u0006\u0010O\u001a\u00020JJ\u0006\u0010P\u001a\u00020\nJ\u0006\u0010Q\u001a\u00020\nJ\u0006\u0010R\u001a\u00020GJ\u0006\u0010S\u001a\u00020\nJ\u0006\u0010T\u001a\u00020\nJ\u0006\u0010U\u001a\u00020GJ\u0008\u0010V\u001a\u00020\nH\u0003J\u0006\u0010W\u001a\u00020\u0005J\u0006\u0010X\u001a\u00020\u0005J\u0010\u0010Y\u001a\u00020\n2\u0008\u0010Z\u001a\u0004\u0018\u00010LJ\u0010\u0010Y\u001a\u00020\n2\u0008\u0008\u0001\u0010[\u001a\u00020\u0005J\u0010\u0010\\\u001a\u00020\n2\u0008\u0010Z\u001a\u0004\u0018\u00010LJ\u0010\u0010\\\u001a\u00020\n2\u0008\u0008\u0001\u0010[\u001a\u00020\u0005J\u000e\u0010]\u001a\u00020G2\u0006\u0010^\u001a\u00020JJ\u0010\u0010]\u001a\u00020G2\u0008\u0008\u0001\u0010_\u001a\u00020\u0005J \u0010`\u001a\u00020G2\u0006\u0010a\u001a\u00020J2\u0006\u0010I\u001a\u00020J2\u0008\u0010b\u001a\u0004\u0018\u00010cJ$\u0010`\u001a\u00020G2\u0008\u0008\u0001\u0010d\u001a\u00020\u00052\u0008\u0008\u0001\u0010e\u001a\u00020\u00052\u0008\u0010b\u001a\u0004\u0018\u00010cJ\u000e\u0010f\u001a\u00020\n2\u0006\u0010g\u001a\u00020hJ\u0008\u0010i\u001a\u00020GH\u0002J\u000e\u0010j\u001a\u00020G2\u0006\u0010k\u001a\u00020lJ\u0008\u0010m\u001a\u00020GH\u0002J\u001c\u0010n\u001a\u00020G2\u0008\u0008\u0002\u0010o\u001a\u00020\n2\u0008\u0010p\u001a\u0004\u0018\u00010qH\u0007J\u0008\u0010r\u001a\u00020GH\u0002J\u0010\u0010s\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u0005H\u0002J\u000e\u0010t\u001a\u00020G2\u0006\u0010I\u001a\u00020JJ\u0010\u0010t\u001a\u00020G2\u0008\u0008\u0001\u0010e\u001a\u00020\u0005J\u0008\u0010u\u001a\u00020GH\u0007J\u000e\u0010v\u001a\u00020\n2\u0006\u0010w\u001a\u00020\nJ\u0008\u0010x\u001a\u00020GH\u0002J\u000c\u0010y\u001a\u00020G*\u00020zH\u0002J\u000c\u0010{\u001a\u00020\n*\u00020zH\u0002J\u000c\u0010|\u001a\u00020\n*\u00020zH\u0002J\u000c\u0010}\u001a\u00020G*\u00020zH\u0002R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000R&\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00058F@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R$\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\n@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001a\u001a\u00020\n8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u0017R\u0014\u0010\u001b\u001a\u00020\n8CX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u0017R\u000e\u0010\u001c\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u00058F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001e\u0010\u0012\"\u0004\u0008\u001f\u0010\u0014R*\u0010 \u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005@FX\u0086\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010\u0012\"\u0004\u0008$\u0010\u0014R$\u0010&\u001a\u00020\u00052\u0006\u0010%\u001a\u00020\u00058F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\'\u0010\u0012\"\u0004\u0008(\u0010\u0014R\u0014\u0010)\u001a\u00020*8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010,R\u0014\u0010-\u001a\u00020*8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008.\u0010,R\u000e\u0010/\u001a\u000200X\u0082\u000e\u00a2\u0006\u0002\n\u0000R(\u00103\u001a\u0004\u0018\u0001022\u0008\u00101\u001a\u0004\u0018\u0001028F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107R\u000e\u00108\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00109\u001a\u00020:X\u0082.\u00a2\u0006\u0002\n\u0000R$\u0010<\u001a\u00020\u00052\u0006\u0010;\u001a\u00020\u00058F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008=\u0010\u0012\"\u0004\u0008>\u0010\u0014R(\u0010@\u001a\u0004\u0018\u0001022\u0008\u0010?\u001a\u0004\u0018\u0001028F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008A\u00105\"\u0004\u0008B\u00107R&\u0010C\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058G@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008D\u0010\u0012\"\u0004\u0008E\u0010\u0014\u00a8\u0006\u0081\u0001"
    }
    d2 = {
        "Lcom/techiness/progressdialoglibrary/ProgressDialog;",
        "",
        "context",
        "Landroid/content/Context;",
        "themeConstant",
        "",
        "(Landroid/content/Context;I)V",
        "modeConstant",
        "(ILandroid/content/Context;I)V",
        "autoThemeEnabled",
        "",
        "binding",
        "Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;",
        "handler",
        "Landroid/os/Handler;",
        "incrementAmount",
        "incrementValue",
        "getIncrementValue",
        "()I",
        "setIncrementValue",
        "(I)V",
        "cancelable",
        "isCancelable",
        "()Z",
        "setCancelable",
        "(Z)V",
        "isDeterminate",
        "isSystemInNightMode",
        "isTimeBeingTracked",
        "maxValue",
        "getMaxValue",
        "setMaxValue",
        "mode",
        "getMode$annotations",
        "()V",
        "getMode",
        "setMode",
        "progressValue",
        "progress",
        "getProgress",
        "setProgress",
        "progressAsFraction",
        "",
        "getProgressAsFraction",
        "()Ljava/lang/String;",
        "progressAsPercent",
        "getProgressAsPercent",
        "progressDialog",
        "Landroidx/appcompat/app/AlertDialog;",
        "tintList",
        "Landroid/content/res/ColorStateList;",
        "progressTintList",
        "getProgressTintList",
        "()Landroid/content/res/ColorStateList;",
        "setProgressTintList",
        "(Landroid/content/res/ColorStateList;)V",
        "progressViewMode",
        "runnable",
        "Ljava/lang/Runnable;",
        "secondaryProgressValue",
        "secondaryProgress",
        "getSecondaryProgress",
        "setSecondaryProgress",
        "secondaryTintList",
        "secondaryProgressTintList",
        "getSecondaryProgressTintList",
        "setSecondaryProgressTintList",
        "theme",
        "getTheme",
        "setTheme",
        "dismiss",
        "",
        "enableNegativeButton",
        "title",
        "",
        "getDeterminateDrawable",
        "Landroid/graphics/drawable/Drawable;",
        "getIndeterminateDrawable",
        "getMessage",
        "getTitle",
        "hasProgressReachedMaxValue",
        "hasSecondaryProgressReachedMaxValue",
        "hideNegativeButton",
        "hideProgressText",
        "hideTitle",
        "incrementProgress",
        "isAboveOrEqualToAnd11",
        "remainingProgress",
        "secondaryRemainingProgress",
        "setDeterminateDrawable",
        "progressDrawable",
        "progressDrawableResID",
        "setIndeterminateDrawable",
        "setMessage",
        "message",
        "messageResID",
        "setNegativeButton",
        "text",
        "listener",
        "Landroid/view/View$OnClickListener;",
        "textResID",
        "titleResID",
        "setOnCancelListener",
        "onCancelListener",
        "Landroid/content/DialogInterface$OnCancelListener;",
        "setOnCancelListenerInternal",
        "setOnDismissListener",
        "onDismissListener",
        "Landroid/content/DialogInterface$OnDismissListener;",
        "setOnDismissListenerInternal",
        "setOnShowListener",
        "isTimeTrackingEnabled",
        "onShowListener",
        "Landroid/content/DialogInterface$OnShowListener;",
        "setProgressText",
        "setThemeInternal",
        "setTitle",
        "show",
        "showProgressTextAsFraction",
        "progressTextAsFraction",
        "startTimeTrackingLoop",
        "hide",
        "Landroid/view/View;",
        "isGone",
        "isVisible",
        "unhide",
        "Companion",
        "ModeConstant",
        "ThemeConstant",
        "progressdialoglibrary_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/techiness/progressdialoglibrary/ProgressDialog$Companion;

.field private static final HIDE_PROGRESS_TEXT:I = 0x8

.field public static final MODE_DETERMINATE:I = 0x5

.field public static final MODE_INDETERMINATE:I = 0x4

.field private static final SHOW_AS_FRACTION:I = 0x6

.field private static final SHOW_AS_PERCENT:I = 0x7

.field public static final THEME_DARK:I = 0x2

.field public static final THEME_FOLLOW_SYSTEM:I = 0x3

.field public static final THEME_LIGHT:I = 0x1


# instance fields
.field private autoThemeEnabled:Z

.field private binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

.field private final context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private incrementValue:I

.field private isCancelable:Z

.field private isTimeBeingTracked:Z

.field private mode:I

.field private progressDialog:Landroidx/appcompat/app/AlertDialog;

.field private progressViewMode:I

.field private runnable:Ljava/lang/Runnable;

.field private theme:I


# direct methods
.method public static synthetic $r8$lambda$2SmXoVY5hgvGSeccZriJJ4VyOG0(Lcom/techiness/progressdialoglibrary/ProgressDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->setNegativeButton$lambda-6(Lcom/techiness/progressdialoglibrary/ProgressDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MiOurDNuGn-n3O8PjJCmFOa2Z5Y(Lcom/techiness/progressdialoglibrary/ProgressDialog;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->setOnCancelListener$lambda-1(Lcom/techiness/progressdialoglibrary/ProgressDialog;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VnyQQAuOw3WL7EqNhkkb0uxScXc(Lcom/techiness/progressdialoglibrary/ProgressDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->setOnDismissListenerInternal$lambda-7(Lcom/techiness/progressdialoglibrary/ProgressDialog;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eecp4quraY-rvzUaR_LJghtZToE(Lcom/techiness/progressdialoglibrary/ProgressDialog;Landroid/content/DialogInterface$OnShowListener;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->setOnShowListener$lambda-5(Lcom/techiness/progressdialoglibrary/ProgressDialog;Landroid/content/DialogInterface$OnShowListener;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kwBTvazQNHzZorAZht0xnDB9z-w(Lcom/techiness/progressdialoglibrary/ProgressDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->setOnCancelListenerInternal$lambda-8(Lcom/techiness/progressdialoglibrary/ProgressDialog;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tLoOwQWAh-zucignvH61ouBy2a4(Lcom/techiness/progressdialoglibrary/ProgressDialog;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->setOnDismissListener$lambda-2(Lcom/techiness/progressdialoglibrary/ProgressDialog;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$weapHNYCKyqLJRmRb43xvWpiCe0(Lcom/techiness/progressdialoglibrary/ProgressDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->setOnShowListener$lambda-4(Lcom/techiness/progressdialoglibrary/ProgressDialog;Landroid/content/DialogInterface;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/techiness/progressdialoglibrary/ProgressDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/techiness/progressdialoglibrary/ProgressDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->Companion:Lcom/techiness/progressdialoglibrary/ProgressDialog$Companion;

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/techiness/progressdialoglibrary/ProgressDialog;-><init>(ILandroid/content/Context;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;I)V
    .locals 5
    .param p1, "modeConstant"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "themeConstant"    # I

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p2, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->context:Landroid/content/Context;

    .line 101
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    move-result-object v0

    const-string v1, "inflate(LayoutInflater.from(context))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    .line 112
    const/4 v0, 0x4

    iput v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->mode:I

    .line 151
    const/4 v0, 0x1

    iput v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->theme:I

    .line 206
    nop

    .line 208
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 209
    .local v1, "builder":Landroidx/appcompat/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    invoke-virtual {v2}, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 210
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    const-string v3, "builder.create()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->progressDialog:Landroidx/appcompat/app/AlertDialog;

    .line 211
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 213
    iget-object v2, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->progressDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v4, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 215
    :cond_0
    invoke-virtual {p0, p1}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->setMode(I)V

    .line 216
    invoke-virtual {p0, p3}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->setTheme(I)V

    .line 217
    invoke-virtual {p0, v3}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->setCancelable(Z)V

    .line 218
    .end local v1    # "builder":Landroidx/appcompat/app/AlertDialog$Builder;
    nop

    .line 342
    iput v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->incrementValue:I

    .line 43
    return-void
.end method

.method public synthetic constructor <init>(ILandroid/content/Context;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 43
    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x4

    if-eqz p5, :cond_0

    .line 44
    move p1, v0

    .line 43
    :cond_0
    and-int/2addr p4, v0

    if-eqz p4, :cond_1

    .line 46
    const/4 p3, 0x1

    .line 43
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/techiness/progressdialoglibrary/ProgressDialog;-><init>(ILandroid/content/Context;I)V

    .line 950
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/techiness/progressdialoglibrary/ProgressDialog;-><init>(ILandroid/content/Context;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeConstant"    # I

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Lcom/techiness/progressdialoglibrary/ProgressDialog;-><init>(ILandroid/content/Context;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 203
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/techiness/progressdialoglibrary/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 204
    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcom/techiness/progressdialoglibrary/ProgressDialog;)Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;
    .locals 1
    .param p0, "$this"    # Lcom/techiness/progressdialoglibrary/ProgressDialog;

    .line 43
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    return-object v0
.end method

.method public static final synthetic access$getHandler$p(Lcom/techiness/progressdialoglibrary/ProgressDialog;)Landroid/os/Handler;
    .locals 1
    .param p0, "$this"    # Lcom/techiness/progressdialoglibrary/ProgressDialog;

    .line 43
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private final enableNegativeButton(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 883
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v0, v0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->negativeButton:Lcom/google/android/material/button/MaterialButton;

    const-string v1, "binding.negativeButton"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->unhide(Landroid/view/View;)V

    .line 884
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v0, v0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->titleView:Landroid/widget/TextView;

    const-string v1, "binding.titleView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->isGone(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 885
    invoke-virtual {p0, p1}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 886
    :cond_0
    return-void
.end method

.method public static synthetic getMode$annotations()V
    .locals 0

    return-void
.end method

.method private final getProgressAsFraction()Ljava/lang/String;
    .locals 3

    .line 830
    invoke-virtual {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->getProgress()I

    move-result v0

    invoke-virtual {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->getMaxValue()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getProgressAsPercent()Ljava/lang/String;
    .locals 7

    .line 835
    invoke-virtual {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->getProgress()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->getMaxValue()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    const/16 v2, 0x64

    int-to-double v2, v2

    mul-double/2addr v0, v2

    .line 836
    .local v0, "val":D
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%.2f"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "format(locale, format, *args)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private final hide(Landroid/view/View;)V
    .locals 1
    .param p1, "$this$hide"    # Landroid/view/View;

    .line 868
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 869
    return-void
.end method

.method private final isAboveOrEqualToAnd11()Z
    .locals 2

    .line 879
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isDeterminate()Z
    .locals 2

    .line 872
    iget v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->mode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isGone(Landroid/view/View;)Z
    .locals 2
    .param p1, "$this$isGone"    # Landroid/view/View;

    .line 858
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isSystemInNightMode()Z
    .locals 1

    .line 876
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v0

    return v0
.end method

.method private final isVisible(Landroid/view/View;)Z
    .locals 1
    .param p1, "$this$isVisible"    # Landroid/view/View;

    .line 853
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static final setNegativeButton$lambda-6(Lcom/techiness/progressdialoglibrary/ProgressDialog;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/techiness/progressdialoglibrary/ProgressDialog;
    .param p1, "it"    # Landroid/view/View;

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 760
    invoke-virtual {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->dismiss()V

    return-void
.end method

.method private static final setOnCancelListener$lambda-1(Lcom/techiness/progressdialoglibrary/ProgressDialog;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface;)V
    .locals 5
    .param p0, "this$0"    # Lcom/techiness/progressdialoglibrary/ProgressDialog;
    .param p1, "$onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;
    .param p2, "dialog"    # Landroid/content/DialogInterface;

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$onCancelListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->handler:Landroid/os/Handler;

    const-string v1, "handler"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v3, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->runnable:Ljava/lang/Runnable;

    const-string/jumbo v4, "runnable"

    if-nez v3, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_1
    invoke-static {v0, v3}, Landroidx/core/os/HandlerCompat;->hasCallbacks(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 511
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->handler:Landroid/os/Handler;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    iget-object v1, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->runnable:Ljava/lang/Runnable;

    if-nez v1, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 512
    invoke-interface {p1, p2}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 514
    :cond_4
    return-void
.end method

.method private final setOnCancelListenerInternal()V
    .locals 2

    .line 907
    iget-boolean v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->isTimeBeingTracked:Z

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->progressDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance v1, Lcom/techiness/progressdialoglibrary/ProgressDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog$$ExternalSyntheticLambda0;-><init>(Lcom/techiness/progressdialoglibrary/ProgressDialog;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 918
    :cond_0
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->progressDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 920
    :goto_0
    return-void
.end method

.method private static final setOnCancelListenerInternal$lambda-8(Lcom/techiness/progressdialoglibrary/ProgressDialog;Landroid/content/DialogInterface;)V
    .locals 5
    .param p0, "this$0"    # Lcom/techiness/progressdialoglibrary/ProgressDialog;
    .param p1, "it"    # Landroid/content/DialogInterface;

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 910
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->handler:Landroid/os/Handler;

    const-string v1, "handler"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v3, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->runnable:Ljava/lang/Runnable;

    const-string/jumbo v4, "runnable"

    if-nez v3, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_1
    invoke-static {v0, v3}, Landroidx/core/os/HandlerCompat;->hasCallbacks(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 912
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->handler:Landroid/os/Handler;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    iget-object v1, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->runnable:Ljava/lang/Runnable;

    if-nez v1, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 914
    :cond_4
    return-void
.end method

.method private static final setOnDismissListener$lambda-2(Lcom/techiness/progressdialoglibrary/ProgressDialog;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface;)V
    .locals 5
    .param p0, "this$0"    # Lcom/techiness/progressdialoglibrary/ProgressDialog;
    .param p1, "$onDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;
    .param p2, "dialog"    # Landroid/content/DialogInterface;

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$onDismissListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 533
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->handler:Landroid/os/Handler;

    const-string v1, "handler"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v3, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->runnable:Ljava/lang/Runnable;

    const-string/jumbo v4, "runnable"

    if-nez v3, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_1
    invoke-static {v0, v3}, Landroidx/core/os/HandlerCompat;->hasCallbacks(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 535
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->handler:Landroid/os/Handler;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    iget-object v1, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->runnable:Ljava/lang/Runnable;

    if-nez v1, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 536
    invoke-interface {p1, p2}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 538
    :cond_4
    return-void
.end method

.method private final setOnDismissListenerInternal()V
    .locals 2

    .line 890
    iget-boolean v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->isTimeBeingTracked:Z

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->progressDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance v1, Lcom/techiness/progressdialoglibrary/ProgressDialog$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog$$ExternalSyntheticLambda2;-><init>(Lcom/techiness/progressdialoglibrary/ProgressDialog;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 901
    :cond_0
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->progressDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 903
    :goto_0
    return-void
.end method

.method private static final setOnDismissListenerInternal$lambda-7(Lcom/techiness/progressdialoglibrary/ProgressDialog;Landroid/content/DialogInterface;)V
    .locals 5
    .param p0, "this$0"    # Lcom/techiness/progressdialoglibrary/ProgressDialog;
    .param p1, "it"    # Landroid/content/DialogInterface;

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 893
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->handler:Landroid/os/Handler;

    const-string v1, "handler"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v3, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->runnable:Ljava/lang/Runnable;

    const-string/jumbo v4, "runnable"

    if-nez v3, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_1
    invoke-static {v0, v3}, Landroidx/core/os/HandlerCompat;->hasCallbacks(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 895
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->handler:Landroid/os/Handler;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    iget-object v1, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->runnable:Ljava/lang/Runnable;

    if-nez v1, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 897
    :cond_4
    return-void
.end method

.method public static synthetic setOnShowListener$default(Lcom/techiness/progressdialoglibrary/ProgressDialog;ZLandroid/content/DialogInterface$OnShowListener;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 554
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->setOnShowListener(ZLandroid/content/DialogInterface$OnShowListener;)V

    return-void
.end method

.method private static final setOnShowListener$lambda-4(Lcom/techiness/progressdialoglibrary/ProgressDialog;Landroid/content/DialogInterface;)V
    .locals 1
    .param p0, "this$0"    # Lcom/techiness/progressdialoglibrary/ProgressDialog;
    .param p1, "it"    # Landroid/content/DialogInterface;

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 566
    invoke-direct {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->startTimeTrackingLoop()V

    .line 567
    return-void
.end method

.method private static final setOnShowListener$lambda-5(Lcom/techiness/progressdialoglibrary/ProgressDialog;Landroid/content/DialogInterface$OnShowListener;Landroid/content/DialogInterface;)V
    .locals 1
    .param p0, "this$0"    # Lcom/techiness/progressdialoglibrary/ProgressDialog;
    .param p1, "$onShowListener"    # Landroid/content/DialogInterface$OnShowListener;
    .param p2, "dialog"    # Landroid/content/DialogInterface;

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 572
    invoke-direct {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->startTimeTrackingLoop()V

    .line 573
    invoke-interface {p1, p2}, Landroid/content/DialogInterface$OnShowListener;->onShow(Landroid/content/DialogInterface;)V

    .line 574
    return-void
.end method

.method private final setProgressText()V
    .locals 2

    .line 841
    iget v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->progressViewMode:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 845
    :pswitch_0
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v0, v0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->progressTextView:Landroid/widget/TextView;

    .line 846
    invoke-direct {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->getProgressAsPercent()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 845
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 843
    :pswitch_1
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v0, v0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->progressTextView:Landroid/widget/TextView;

    .line 844
    invoke-direct {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->getProgressAsFraction()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 843
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 849
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final setThemeInternal(I)Z
    .locals 4
    .param p1, "themeConstant"    # I

    .line 924
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 947
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 927
    :pswitch_0
    iget-object v1, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v1, v1, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->dialogLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v2, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->context:Landroid/content/Context;

    sget v3, Lcom/techiness/progressdialoglibrary/R$drawable;->bg_dialog_dark:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 928
    iget-object v1, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v1, v1, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->titleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->context:Landroid/content/Context;

    sget v3, Lcom/techiness/progressdialoglibrary/R$color;->white:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 929
    iget-object v1, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v1, v1, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->textViewIndeterminate:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->context:Landroid/content/Context;

    sget v3, Lcom/techiness/progressdialoglibrary/R$color;->white:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 930
    iget-object v1, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v1, v1, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->textViewDeterminate:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->context:Landroid/content/Context;

    sget v3, Lcom/techiness/progressdialoglibrary/R$color;->white:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 931
    iget-object v1, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v1, v1, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->progressTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->context:Landroid/content/Context;

    sget v3, Lcom/techiness/progressdialoglibrary/R$color;->white_dark:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 932
    iget-object v1, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v1, v1, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->timeElapsedTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->context:Landroid/content/Context;

    sget v3, Lcom/techiness/progressdialoglibrary/R$color;->white_dark:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 933
    iget-object v1, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v1, v1, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->negativeButton:Lcom/google/android/material/button/MaterialButton;

    iget-object v2, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->context:Landroid/content/Context;

    sget v3, Lcom/techiness/progressdialoglibrary/R$color;->white:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    .line 934
    goto :goto_0

    .line 938
    :pswitch_1
    iget-object v1, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v1, v1, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->dialogLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v2, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->context:Landroid/content/Context;

    sget v3, Lcom/techiness/progressdialoglibrary/R$drawable;->bg_dialog:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 939
    iget-object v1, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v1, v1, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->titleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->context:Landroid/content/Context;

    sget v3, Lcom/techiness/progressdialoglibrary/R$color;->black:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 940
    iget-object v1, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v1, v1, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->textViewIndeterminate:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->context:Landroid/content/Context;

    sget v3, Lcom/techiness/progressdialoglibrary/R$color;->black:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 941
    iget-object v1, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v1, v1, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->textViewDeterminate:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->context:Landroid/content/Context;

    sget v3, Lcom/techiness/progressdialoglibrary/R$color;->black:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 942
    iget-object v1, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v1, v1, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->progressTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->context:Landroid/content/Context;

    sget v3, Lcom/techiness/progressdialoglibrary/R$color;->black_light:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 943
    iget-object v1, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v1, v1, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->timeElapsedTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->context:Landroid/content/Context;

    sget v3, Lcom/techiness/progressdialoglibrary/R$color;->black_light:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 944
    iget-object v1, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v1, v1, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->negativeButton:Lcom/google/android/material/button/MaterialButton;

    iget-object v2, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->context:Landroid/content/Context;

    sget v3, Lcom/techiness/progressdialoglibrary/R$color;->black:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    .line 945
    nop

    .line 924
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final startTimeTrackingLoop()V
    .locals 10

    .line 797
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 798
    .local v4, "startTime":Ljava/util/Date;
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 799
    .local v2, "currentTime":Lkotlin/jvm/internal/Ref$ObjectRef;
    new-instance v3, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 800
    .local v3, "difference":Lkotlin/jvm/internal/Ref$LongRef;
    new-instance v5, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 801
    .local v5, "secondsDifference":Lkotlin/jvm/internal/Ref$LongRef;
    new-instance v6, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 802
    .local v6, "minutesDifference":Lkotlin/jvm/internal/Ref$LongRef;
    new-instance v7, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 803
    .local v7, "hoursDifference":Lkotlin/jvm/internal/Ref$LongRef;
    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 804
    .local v8, "message":Lkotlin/jvm/internal/Ref$ObjectRef;
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->handler:Landroid/os/Handler;

    .line 805
    new-instance v9, Lcom/techiness/progressdialoglibrary/ProgressDialog$startTimeTrackingLoop$1;

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/techiness/progressdialoglibrary/ProgressDialog$startTimeTrackingLoop$1;-><init>(Lcom/techiness/progressdialoglibrary/ProgressDialog;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$LongRef;Ljava/util/Date;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v9, Ljava/lang/Runnable;

    iput-object v9, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->runnable:Ljava/lang/Runnable;

    .line 826
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "handler"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v9, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->runnable:Ljava/lang/Runnable;

    if-nez v9, :cond_1

    const-string/jumbo v9, "runnable"

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v9

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 827
    return-void
.end method

.method private final unhide(Landroid/view/View;)V
    .locals 1
    .param p1, "$this$unhide"    # Landroid/view/View;

    .line 863
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 864
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->progressDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 493
    return-void
.end method

.method public final getDeterminateDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 719
    invoke-direct {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->isDeterminate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v0, v0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->progressbarDeterminate:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getIncrementValue()I
    .locals 1

    .line 345
    invoke-direct {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->isDeterminate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->incrementValue:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public final getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 678
    invoke-direct {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->isDeterminate()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v0, v0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->progressbarIndeterminate:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getMaxValue()I
    .locals 1

    .line 384
    invoke-direct {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->isDeterminate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v0, v0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->progressbarDeterminate:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public final getMessage()Ljava/lang/CharSequence;
    .locals 2

    .line 253
    invoke-direct {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->isDeterminate()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v0, v0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->textViewIndeterminate:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "binding.textViewIndeterminate.text"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v0, v0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->textViewDeterminate:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "binding.textViewDeterminate.text"

    :goto_0
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getMode()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->mode:I

    return v0
.end method

.method public final getProgress()I
    .locals 1

    .line 231
    invoke-direct {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->isDeterminate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v0, v0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->progressbarDeterminate:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public final getProgressTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 726
    invoke-direct {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->isDeterminate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v0, v0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->progressbarDeterminate:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgressTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v0, v0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->progressbarIndeterminate:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getSecondaryProgress()I
    .locals 1

    .line 613
    invoke-direct {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->isDeterminate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v0, v0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->progressbarDeterminate:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public final getSecondaryProgressTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 739
    invoke-direct {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->isDeterminate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v0, v0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->progressbarDeterminate:Landroid/widget/ProgressBar;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v0, v0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->progressbarIndeterminate:Landroid/widget/ProgressBar;

    :goto_0
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getSecondaryProgressTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public final getTheme()I
    .locals 1

    .line 155
    iget-boolean v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->autoThemeEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->theme:I

    :goto_0
    return v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v0, v0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->titleView:Landroid/widget/TextView;

    const-string v1, "binding.titleView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v0, v0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "binding.titleView.text"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, ""

    check-cast v0, Ljava/lang/CharSequence;

    :goto_0
    return-object v0
.end method

.method public final hasProgressReachedMaxValue()Z
    .locals 3

    .line 597
    invoke-direct {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->isDeterminate()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->getProgress()I

    move-result v0

    invoke-virtual {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->getMaxValue()I

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final hasSecondaryProgressReachedMaxValue()Z
    .locals 3

    .line 634
    invoke-direct {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->isDeterminate()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->getSecondaryProgress()I

    move-result v0

    invoke-virtual {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->getMaxValue()I

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final hideNegativeButton()V
    .locals 2

    .line 789
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v0, v0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->negativeButton:Lcom/google/android/material/button/MaterialButton;

    const-string v1, "binding.negativeButton"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v0, v0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->negativeButton:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->hide(Landroid/view/View;)V

    .line 793
    :cond_0
    return-void
.end method

.method public final hideProgressText()Z
    .locals 2

    .line 446
    invoke-direct {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->isDeterminate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 448
    const/16 v0, 0x8

    iput v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->progressViewMode:I

    .line 449
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v0, v0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->progressTextView:Landroid/widget/TextView;

    const-string v1, "binding.progressTextView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v0, v0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->progressTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->hide(Landroid/view/View;)V

    .line 453
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 457
    :cond_1
    const/4 v0, 0x0

    .line 446
    :goto_0
    return v0
.end method

.method public final hideTitle()Z
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v0, v0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->negativeButton:Lcom/google/android/material/button/MaterialButton;

    const-string v1, "binding.negativeButton"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    const/4 v0, 0x0

    return v0

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v0, v0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->titleView:Landroid/widget/TextView;

    const-string v1, "binding.titleView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v0, v0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->titleView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->hide(Landroid/view/View;)V

    .line 333
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final incrementProgress()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 363
    invoke-direct {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->isDeterminate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v0, v0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->progressbarDeterminate:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->getIncrementValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 366
    invoke-direct {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->setProgressText()V

    .line 372
    return-void

    .line 370
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot Increment Progress in Indeterminate ProgressDialog !"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isCancelable()Z
    .locals 1

    .line 183
    iget-boolean v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->isCancelable:Z

    return v0
.end method

.method public final remainingProgress()I
    .locals 2

    .line 604
    invoke-direct {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->isDeterminate()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->getMaxValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->getProgress()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public final secondaryRemainingProgress()I
    .locals 2

    .line 627
    invoke-direct {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->isDeterminate()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->getMaxValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->getSecondaryProgress()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public final setCancelable(Z)V
    .locals 2
    .param p1, "cancelable"    # Z

    .line 186
    if-nez p1, :cond_0

    .line 188
    iget-boolean v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->isTimeBeingTracked:Z

    if-nez v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->progressDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 191
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->progressDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 192
    iput-boolean v1, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->isCancelable:Z

    goto :goto_0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->progressDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 198
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->progressDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 199
    iput-boolean v1, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->isCancelable:Z

    .line 201
    :cond_1
    :goto_0
    return-void
.end method

.method public final setDeterminateDrawable(I)Z
    .locals 1
    .param p1, "progressDrawableResID"    # I

    .line 708
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->setDeterminateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method

.method public final setDeterminateDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "progressDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 691
    invoke-direct {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->isDeterminate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v0, v0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->progressbarDeterminate:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 693
    const/4 v0, 0x1

    goto :goto_0

    .line 695
    :cond_0
    const/4 v0, 0x0

    .line 691
    :goto_0
    return v0
.end method

.method public final setIncrementValue(I)V
    .locals 1
    .param p1, "incrementAmount"    # I

    .line 349
    invoke-direct {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->isDeterminate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    iput p1, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->incrementValue:I

    .line 353
    :cond_0
    return-void
.end method

.method public final setIndeterminateDrawable(I)Z
    .locals 1
    .param p1, "progressDrawableResID"    # I

    .line 667
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method

.method public final setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "progressDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 646
    invoke-direct {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->isDeterminate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v0, v0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->progressbarIndeterminate:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 649
    const/4 v0, 0x1

    goto :goto_0

    .line 653
    :cond_0
    const/4 v0, 0x0

    .line 646
    :goto_0
    return v0
.end method

.method public final setMaxValue(I)V
    .locals 2
    .param p1, "maxValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 389
    invoke-direct {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->isDeterminate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v0, v0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->progressbarDeterminate:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 392
    invoke-virtual {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->setProgress(I)V

    .line 398
    return-void

    .line 396
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot set Max Value in Indeterminate ProgressDialog !"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setMessage(I)V
    .locals 1
    .param p1, "messageResID"    # I

    .line 280
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 281
    return-void
.end method

.method public final setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    invoke-direct {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->isDeterminate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v0, v0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->textViewIndeterminate:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v0, v0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->textViewDeterminate:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    :goto_0
    return-void
.end method

.method public final setMode(I)V
    .locals 7
    .param p1, "modeConstant"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 116
    const-string v0, "binding.timeElapsedTextView"

    const-string v1, "binding.progressbarIndeterminate"

    const-string v2, "binding.textViewIndeterminate"

    const-string v3, "binding.progressTextView"

    const-string v4, "binding.progressbarDeterminate"

    const-string v5, "binding.textViewDeterminate"

    packed-switch p1, :pswitch_data_0

    .line 141
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Values passed to function ! Make sure to pass MODE_INDETERMINATE or MODE_DETERMINATE only !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :pswitch_0
    iget-object v6, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v6, v6, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->textViewIndeterminate:Landroid/widget/TextView;

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/View;

    invoke-direct {p0, v6}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->hide(Landroid/view/View;)V

    .line 121
    iget-object v2, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v2, v2, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->progressbarIndeterminate:Landroid/widget/ProgressBar;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->hide(Landroid/view/View;)V

    .line 122
    iget-object v1, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v1, v1, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->textViewDeterminate:Landroid/widget/TextView;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->unhide(Landroid/view/View;)V

    .line 123
    iget-object v1, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v1, v1, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->progressbarDeterminate:Landroid/widget/ProgressBar;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->unhide(Landroid/view/View;)V

    .line 124
    const/4 v1, 0x7

    iput v1, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->progressViewMode:I

    .line 125
    iget-object v1, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v1, v1, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->progressTextView:Landroid/widget/TextView;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->unhide(Landroid/view/View;)V

    .line 126
    iget-object v1, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v1, v1, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->timeElapsedTextView:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->hide(Landroid/view/View;)V

    .line 127
    invoke-virtual {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->getIncrementValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->getIncrementValue()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->setIncrementValue(I)V

    .line 128
    iput p1, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->mode:I

    goto :goto_1

    .line 131
    :pswitch_1
    iget-object v6, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v6, v6, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->textViewDeterminate:Landroid/widget/TextView;

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/View;

    invoke-direct {p0, v6}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->hide(Landroid/view/View;)V

    .line 132
    iget-object v5, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v5, v5, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->progressbarDeterminate:Landroid/widget/ProgressBar;

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/view/View;

    invoke-direct {p0, v5}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->hide(Landroid/view/View;)V

    .line 133
    iget-object v4, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v4, v4, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->progressTextView:Landroid/widget/TextView;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->hide(Landroid/view/View;)V

    .line 134
    iget-object v3, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v3, v3, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->textViewIndeterminate:Landroid/widget/TextView;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->unhide(Landroid/view/View;)V

    .line 135
    iget-object v2, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v2, v2, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->progressbarIndeterminate:Landroid/widget/ProgressBar;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->unhide(Landroid/view/View;)V

    .line 136
    iget-object v1, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v1, v1, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->timeElapsedTextView:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->hide(Landroid/view/View;)V

    .line 137
    iget-boolean v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->isTimeBeingTracked:Z

    if-eqz v0, :cond_1

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->isTimeBeingTracked:Z

    .line 139
    :cond_1
    iput p1, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->mode:I

    .line 143
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setNegativeButton(IILandroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "textResID"    # I
    .param p2, "titleResID"    # I
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    .line 778
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->context:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v1, p3}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->setNegativeButton(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 779
    return-void
.end method

.method public final setNegativeButton(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 759
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v0, v0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->negativeButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 760
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v0, v0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->negativeButton:Lcom/google/android/material/button/MaterialButton;

    if-nez p3, :cond_0

    new-instance v1, Lcom/techiness/progressdialoglibrary/ProgressDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog$$ExternalSyntheticLambda1;-><init>(Lcom/techiness/progressdialoglibrary/ProgressDialog;)V

    goto :goto_0

    :cond_0
    move-object v1, p3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 761
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v0, v0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->negativeButton:Lcom/google/android/material/button/MaterialButton;

    const-string v1, "binding.negativeButton"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->isGone(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 763
    invoke-direct {p0, p2}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->enableNegativeButton(Ljava/lang/CharSequence;)V

    .line 765
    :cond_1
    return-void
.end method

.method public final setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Z
    .locals 2
    .param p1, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    const-string v0, "onCancelListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 504
    iget-boolean v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->isCancelable:Z

    if-eqz v0, :cond_1

    .line 506
    iget-boolean v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->isTimeBeingTracked:Z

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->progressDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance v1, Lcom/techiness/progressdialoglibrary/ProgressDialog$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/techiness/progressdialoglibrary/ProgressDialog$$ExternalSyntheticLambda3;-><init>(Lcom/techiness/progressdialoglibrary/ProgressDialog;Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 516
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 520
    :cond_1
    const/4 v0, 0x0

    .line 504
    :goto_0
    return v0
.end method

.method public final setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 2
    .param p1, "onDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    const-string v0, "onDismissListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 530
    iget-boolean v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->isTimeBeingTracked:Z

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->progressDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance v1, Lcom/techiness/progressdialoglibrary/ProgressDialog$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/techiness/progressdialoglibrary/ProgressDialog$$ExternalSyntheticLambda4;-><init>(Lcom/techiness/progressdialoglibrary/ProgressDialog;Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 540
    :cond_0
    return-void
.end method

.method public final setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, p1, v1, v2}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->setOnShowListener$default(Lcom/techiness/progressdialoglibrary/ProgressDialog;ZLandroid/content/DialogInterface$OnShowListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final setOnShowListener(ZLandroid/content/DialogInterface$OnShowListener;)V
    .locals 3
    .param p1, "isTimeTrackingEnabled"    # Z
    .param p2, "onShowListener"    # Landroid/content/DialogInterface$OnShowListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 556
    const/4 v0, 0x1

    const-string v1, "binding.timeElapsedTextView"

    if-eqz p1, :cond_2

    .line 558
    invoke-direct {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->isDeterminate()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 562
    iget-object v2, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v2, v2, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->timeElapsedTextView:Landroid/widget/TextView;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->unhide(Landroid/view/View;)V

    .line 563
    if-nez p2, :cond_0

    .line 565
    iget-object v1, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->progressDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance v2, Lcom/techiness/progressdialoglibrary/ProgressDialog$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog$$ExternalSyntheticLambda5;-><init>(Lcom/techiness/progressdialoglibrary/ProgressDialog;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    goto :goto_0

    .line 571
    :cond_0
    iget-object v1, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->progressDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance v2, Lcom/techiness/progressdialoglibrary/ProgressDialog$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, p2}, Lcom/techiness/progressdialoglibrary/ProgressDialog$$ExternalSyntheticLambda6;-><init>(Lcom/techiness/progressdialoglibrary/ProgressDialog;Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 576
    :goto_0
    iput-boolean v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->isTimeBeingTracked:Z

    goto :goto_1

    .line 558
    :cond_1
    const/4 v0, 0x0

    .line 560
    .local v0, "$i$a$-require-ProgressDialog$setOnShowListener$1":I
    nop

    .line 558
    .end local v0    # "$i$a$-require-ProgressDialog$setOnShowListener$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Time Tracking can be enabled in MODE_DETERMINATE Only!"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 580
    :cond_2
    iget-object v2, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->progressDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v2, p2}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 581
    iget-object v2, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v2, v2, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->timeElapsedTextView:Landroid/widget/TextView;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->hide(Landroid/view/View;)V

    .line 582
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->isTimeBeingTracked:Z

    .line 584
    :goto_1
    iget-boolean v1, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->isCancelable:Z

    if-nez v1, :cond_3

    .line 586
    invoke-virtual {p0, v0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->setCancelable(Z)V

    .line 587
    invoke-direct {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->setOnCancelListenerInternal()V

    .line 589
    :cond_3
    invoke-direct {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->setOnDismissListenerInternal()V

    .line 590
    return-void
.end method

.method public final setProgress(I)V
    .locals 2
    .param p1, "progressValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 236
    invoke-direct {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->isDeterminate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v0, v0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->progressbarDeterminate:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    .line 239
    invoke-direct {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->setProgressText()V

    .line 245
    return-void

    .line 243
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot set Progress for Indeterminate ProgressDialog !"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;

    .line 729
    invoke-direct {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->isDeterminate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v0, v0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->progressbarIndeterminate:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v0, v0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->progressbarDeterminate:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 733
    :goto_0
    return-void
.end method

.method public final setSecondaryProgress(I)V
    .locals 1
    .param p1, "secondaryProgressValue"    # I

    .line 616
    invoke-direct {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->isDeterminate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v0, v0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->progressbarDeterminate:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 620
    :cond_0
    return-void
.end method

.method public final setSecondaryProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "secondaryTintList"    # Landroid/content/res/ColorStateList;

    .line 742
    invoke-direct {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->isDeterminate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v0, v0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->progressbarIndeterminate:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgressTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v0, v0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->progressbarDeterminate:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 746
    :goto_0
    return-void
.end method

.method public final setTheme(I)V
    .locals 2
    .param p1, "themeConstant"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 160
    packed-switch p1, :pswitch_data_0

    .line 174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Values passed to function ! Make sure to pass THEME_LIGHT, THEME_DARK or THEME_FOLLOW_SYSTEM only !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :pswitch_0
    invoke-direct {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->isAboveOrEqualToAnd11()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->autoThemeEnabled:Z

    goto :goto_0

    .line 170
    :cond_0
    const/4 v0, 0x0

    .line 171
    .local v0, "$i$a$-require-ProgressDialog$theme$1":I
    nop

    .line 170
    .end local v0    # "$i$a$-require-ProgressDialog$theme$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "THEME_FOLLOW_SYSTEM can be used starting from Android 11 (API Level 30) only !"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->autoThemeEnabled:Z

    .line 165
    invoke-direct {p0, p1}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->setThemeInternal(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    iput p1, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->theme:I

    .line 176
    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setTitle(I)V
    .locals 1
    .param p1, "titleResID"    # I

    .line 317
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 318
    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v0, v0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v0, v0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->titleView:Landroid/widget/TextView;

    const-string v1, "binding.titleView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->isGone(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v0, v0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->titleView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->unhide(Landroid/view/View;)V

    .line 305
    :cond_0
    return-void
.end method

.method public final show()V
    .locals 2

    .line 467
    iget-boolean v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->autoThemeEnabled:Z

    if-eqz v0, :cond_1

    .line 469
    invoke-direct {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->isSystemInNightMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    invoke-virtual {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->getTheme()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 472
    invoke-direct {p0, v1}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->setThemeInternal(I)Z

    goto :goto_0

    .line 474
    :cond_0
    invoke-direct {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->isSystemInNightMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 476
    invoke-virtual {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->getTheme()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 477
    invoke-direct {p0, v1}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->setThemeInternal(I)Z

    .line 480
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->progressDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 481
    return-void
.end method

.method public final showProgressTextAsFraction(Z)Z
    .locals 2
    .param p1, "progressTextAsFraction"    # Z

    .line 410
    invoke-direct {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->isDeterminate()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 412
    if-eqz p1, :cond_0

    .line 414
    iget v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->progressViewMode:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 418
    :pswitch_0
    const/4 v0, 0x6

    iput v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->progressViewMode:I

    .line 419
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v0, v0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->progressTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->getProgressAsFraction()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 416
    :pswitch_1
    return v1

    .line 419
    :goto_0
    goto :goto_1

    .line 423
    :cond_0
    iget v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->progressViewMode:I

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 424
    :pswitch_2
    return v1

    .line 426
    :pswitch_3
    const/4 v0, 0x7

    iput v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->progressViewMode:I

    .line 427
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog;->binding:Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    iget-object v0, v0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->progressTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->getProgressAsPercent()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    :goto_1
    const/4 v1, 0x1

    goto :goto_2

    .line 435
    :cond_1
    nop

    .line 410
    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
