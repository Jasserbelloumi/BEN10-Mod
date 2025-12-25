.class public final Lcom/skydoves/powerspinner/PowerSpinnerPersistence;
.super Ljava/lang/Object;
.source "PowerSpinnerPersistence.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/skydoves/powerspinner/PowerSpinnerPersistence$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000 \u000c2\u00020\u0001:\u0001\u000cB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u0016\u0010\t\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0006J\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/skydoves/powerspinner/PowerSpinnerPersistence;",
        "",
        "()V",
        "clearAllPersistedData",
        "",
        "getSelectedIndex",
        "",
        "name",
        "",
        "persistSelectedIndex",
        "index",
        "removePersistedData",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/skydoves/powerspinner/PowerSpinnerPersistence$Companion;

.field private static final INDEX:Ljava/lang/String; = "INDEX"

.field private static volatile instance:Lcom/skydoves/powerspinner/PowerSpinnerPersistence;

.field private static sharedPreferenceManager:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/skydoves/powerspinner/PowerSpinnerPersistence$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerPersistence$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/skydoves/powerspinner/PowerSpinnerPersistence;->Companion:Lcom/skydoves/powerspinner/PowerSpinnerPersistence$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/skydoves/powerspinner/PowerSpinnerPersistence;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/skydoves/powerspinner/PowerSpinnerPersistence;
    .locals 1

    .line 26
    sget-object v0, Lcom/skydoves/powerspinner/PowerSpinnerPersistence;->instance:Lcom/skydoves/powerspinner/PowerSpinnerPersistence;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Lcom/skydoves/powerspinner/PowerSpinnerPersistence;)V
    .locals 0
    .param p0, "<set-?>"    # Lcom/skydoves/powerspinner/PowerSpinnerPersistence;

    .line 26
    sput-object p0, Lcom/skydoves/powerspinner/PowerSpinnerPersistence;->instance:Lcom/skydoves/powerspinner/PowerSpinnerPersistence;

    return-void
.end method

.method public static final synthetic access$setSharedPreferenceManager$cp(Landroid/content/SharedPreferences;)V
    .locals 0
    .param p0, "<set-?>"    # Landroid/content/SharedPreferences;

    .line 26
    sput-object p0, Lcom/skydoves/powerspinner/PowerSpinnerPersistence;->sharedPreferenceManager:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/skydoves/powerspinner/PowerSpinnerPersistence;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/skydoves/powerspinner/PowerSpinnerPersistence;->Companion:Lcom/skydoves/powerspinner/PowerSpinnerPersistence$Companion;

    invoke-virtual {v0, p0}, Lcom/skydoves/powerspinner/PowerSpinnerPersistence$Companion;->getInstance(Landroid/content/Context;)Lcom/skydoves/powerspinner/PowerSpinnerPersistence;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final clearAllPersistedData()V
    .locals 1

    .line 42
    sget-object v0, Lcom/skydoves/powerspinner/PowerSpinnerPersistence;->sharedPreferenceManager:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string/jumbo v0, "sharedPreferenceManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final getSelectedIndex(Ljava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object v0, Lcom/skydoves/powerspinner/PowerSpinnerPersistence;->sharedPreferenceManager:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string/jumbo v0, "sharedPreferenceManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 30
    :cond_0
    const-string v1, "INDEX"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    .line 29
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 31
    return v0
.end method

.method public final persistSelectedIndex(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v0, Lcom/skydoves/powerspinner/PowerSpinnerPersistence;->sharedPreferenceManager:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string/jumbo v0, "sharedPreferenceManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "INDEX"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final removePersistedData(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget-object v0, Lcom/skydoves/powerspinner/PowerSpinnerPersistence;->sharedPreferenceManager:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string/jumbo v0, "sharedPreferenceManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
