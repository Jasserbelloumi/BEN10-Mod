.class public final Lcom/skydoves/powerspinner/PowerSpinnerPersistence$Companion;
.super Ljava/lang/Object;
.source "PowerSpinnerPersistence.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/skydoves/powerspinner/PowerSpinnerPersistence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/skydoves/powerspinner/PowerSpinnerPersistence$Companion;",
        "",
        "()V",
        "INDEX",
        "",
        "instance",
        "Lcom/skydoves/powerspinner/PowerSpinnerPersistence;",
        "sharedPreferenceManager",
        "Landroid/content/SharedPreferences;",
        "getInstance",
        "context",
        "Landroid/content/Context;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/skydoves/powerspinner/PowerSpinnerPersistence$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance(Landroid/content/Context;)Lcom/skydoves/powerspinner/PowerSpinnerPersistence;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/skydoves/powerspinner/PowerSpinnerPersistence;->access$getInstance$cp()Lcom/skydoves/powerspinner/PowerSpinnerPersistence;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-enter p0

    const/4 v0, 0x0

    .line 53
    .local v0, "$i$a$-synchronized-PowerSpinnerPersistence$Companion$getInstance$1":I
    :try_start_0
    invoke-static {}, Lcom/skydoves/powerspinner/PowerSpinnerPersistence;->access$getInstance$cp()Lcom/skydoves/powerspinner/PowerSpinnerPersistence;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/skydoves/powerspinner/PowerSpinnerPersistence;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/skydoves/powerspinner/PowerSpinnerPersistence;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v2, v1

    .local v2, "it":Lcom/skydoves/powerspinner/PowerSpinnerPersistence;
    const/4 v3, 0x0

    .line 54
    .local v3, "$i$a$-also-PowerSpinnerPersistence$Companion$getInstance$1$1":I
    sget-object v4, Lcom/skydoves/powerspinner/PowerSpinnerPersistence;->Companion:Lcom/skydoves/powerspinner/PowerSpinnerPersistence$Companion;

    invoke-static {v2}, Lcom/skydoves/powerspinner/PowerSpinnerPersistence;->access$setInstance$cp(Lcom/skydoves/powerspinner/PowerSpinnerPersistence;)V

    .line 55
    sget-object v4, Lcom/skydoves/powerspinner/PowerSpinnerPersistence;->Companion:Lcom/skydoves/powerspinner/PowerSpinnerPersistence$Companion;

    .line 56
    const-string v4, "com.skydoves.powerspinenr"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "context.getSharedPrefere\u2026r\", Context.MODE_PRIVATE)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-static {v4}, Lcom/skydoves/powerspinner/PowerSpinnerPersistence;->access$setSharedPreferenceManager$cp(Landroid/content/SharedPreferences;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    nop

    .line 53
    .end local v2    # "it":Lcom/skydoves/powerspinner/PowerSpinnerPersistence;
    .end local v3    # "$i$a$-also-PowerSpinnerPersistence$Companion$getInstance$1$1":I
    :cond_0
    move-object v0, v1

    .line 52
    .end local v0    # "$i$a$-synchronized-PowerSpinnerPersistence$Companion$getInstance$1":I
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 58
    :cond_1
    :goto_0
    return-object v0
.end method
