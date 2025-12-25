.class public final synthetic Lpubgm/loader/libhelper/FileHelper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

.field public final synthetic f$1:Lpubgm/loader/activity/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/progressindicator/LinearProgressIndicator;Lpubgm/loader/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpubgm/loader/libhelper/FileHelper$$ExternalSyntheticLambda3;->f$0:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    iput-object p2, p0, Lpubgm/loader/libhelper/FileHelper$$ExternalSyntheticLambda3;->f$1:Lpubgm/loader/activity/MainActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lpubgm/loader/libhelper/FileHelper$$ExternalSyntheticLambda3;->f$0:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    iget-object v1, p0, Lpubgm/loader/libhelper/FileHelper$$ExternalSyntheticLambda3;->f$1:Lpubgm/loader/activity/MainActivity;

    invoke-static {v0, v1}, Lpubgm/loader/libhelper/FileHelper;->lambda$tryInstallWithCopyObb$1(Lcom/google/android/material/progressindicator/LinearProgressIndicator;Lpubgm/loader/activity/MainActivity;)V

    return-void
.end method
