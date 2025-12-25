.class public final synthetic Lpubgm/loader/utils/ActivityCompat$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/jdeferred/FailCallback;


# instance fields
.field public final synthetic f$0:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpubgm/loader/utils/ActivityCompat$$ExternalSyntheticLambda6;->f$0:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onFail(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lpubgm/loader/utils/ActivityCompat$$ExternalSyntheticLambda6;->f$0:Landroidx/appcompat/app/AlertDialog;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lpubgm/loader/utils/ActivityCompat;->lambda$launchSplash$7(Landroidx/appcompat/app/AlertDialog;Ljava/lang/Throwable;)V

    return-void
.end method
