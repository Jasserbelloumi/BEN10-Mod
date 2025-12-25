.class public final synthetic Lpubgm/loader/utils/ActivityCompat$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/jdeferred/DoneCallback;


# instance fields
.field public final synthetic f$0:Lpubgm/loader/utils/ActivityCompat;

.field public final synthetic f$1:Landroidx/appcompat/app/AlertDialog;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lpubgm/loader/utils/ActivityCompat;Landroidx/appcompat/app/AlertDialog;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpubgm/loader/utils/ActivityCompat$$ExternalSyntheticLambda5;->f$0:Lpubgm/loader/utils/ActivityCompat;

    iput-object p2, p0, Lpubgm/loader/utils/ActivityCompat$$ExternalSyntheticLambda5;->f$1:Landroidx/appcompat/app/AlertDialog;

    iput-object p3, p0, Lpubgm/loader/utils/ActivityCompat$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onDone(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lpubgm/loader/utils/ActivityCompat$$ExternalSyntheticLambda5;->f$0:Lpubgm/loader/utils/ActivityCompat;

    iget-object v1, p0, Lpubgm/loader/utils/ActivityCompat$$ExternalSyntheticLambda5;->f$1:Landroidx/appcompat/app/AlertDialog;

    iget-object v2, p0, Lpubgm/loader/utils/ActivityCompat$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, v1, v2, p1}, Lpubgm/loader/utils/ActivityCompat;->lambda$launchSplash$6$pubgm-loader-utils-ActivityCompat(Landroidx/appcompat/app/AlertDialog;Ljava/lang/String;Ljava/lang/Void;)V

    return-void
.end method
