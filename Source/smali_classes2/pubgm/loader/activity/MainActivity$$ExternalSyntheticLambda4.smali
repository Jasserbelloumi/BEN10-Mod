.class public final synthetic Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/jdeferred/DoneCallback;


# instance fields
.field public final synthetic f$0:Lpubgm/loader/activity/MainActivity;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lpubgm/loader/activity/MainActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda4;->f$0:Lpubgm/loader/activity/MainActivity;

    iput-object p2, p0, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onDone(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda4;->f$0:Lpubgm/loader/activity/MainActivity;

    iget-object v1, p0, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, v1, p1}, Lpubgm/loader/activity/MainActivity;->lambda$unInstallWithDellay$32$pubgm-loader-activity-MainActivity(Ljava/lang/String;Ljava/lang/Void;)V

    return-void
.end method
