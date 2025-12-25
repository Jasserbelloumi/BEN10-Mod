.class public final synthetic Lpubgm/loader/libhelper/FileHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lpubgm/loader/activity/MainActivity;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/google/android/material/progressindicator/LinearProgressIndicator;


# direct methods
.method public synthetic constructor <init>(Lpubgm/loader/activity/MainActivity;Ljava/lang/String;Lcom/google/android/material/progressindicator/LinearProgressIndicator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpubgm/loader/libhelper/FileHelper$$ExternalSyntheticLambda0;->f$0:Lpubgm/loader/activity/MainActivity;

    iput-object p2, p0, Lpubgm/loader/libhelper/FileHelper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lpubgm/loader/libhelper/FileHelper$$ExternalSyntheticLambda0;->f$2:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lpubgm/loader/libhelper/FileHelper$$ExternalSyntheticLambda0;->f$0:Lpubgm/loader/activity/MainActivity;

    iget-object v1, p0, Lpubgm/loader/libhelper/FileHelper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lpubgm/loader/libhelper/FileHelper$$ExternalSyntheticLambda0;->f$2:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    invoke-static {v0, v1, v2}, Lpubgm/loader/libhelper/FileHelper;->lambda$tryInstallWithCopyObb32$5(Lpubgm/loader/activity/MainActivity;Ljava/lang/String;Lcom/google/android/material/progressindicator/LinearProgressIndicator;)V

    return-void
.end method
