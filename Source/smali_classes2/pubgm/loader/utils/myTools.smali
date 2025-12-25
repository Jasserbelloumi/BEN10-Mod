.class public Lpubgm/loader/utils/myTools;
.super Ljava/lang/Object;
.source "myTools.java"


# instance fields
.field public ctx:Landroid/content/Context;

.field sp:Landroid/content/SharedPreferences;

.field sp2:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lpubgm/loader/utils/myTools;->ctx:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public col(I)I
    .locals 3
    .param p1, "attr"    # I

    .line 71
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 72
    .local v0, "typedValue":Landroid/util/TypedValue;
    iget-object v1, p0, Lpubgm/loader/utils/myTools;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 73
    iget-object v1, p0, Lpubgm/loader/utils/myTools;->ctx:Landroid/content/Context;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    return v1
.end method

.method public geInt(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "map"    # Ljava/lang/String;
    .param p3, "ori"    # I

    .line 42
    iget-object v0, p0, Lpubgm/loader/utils/myTools;->ctx:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/utils/myTools;->sp:Landroid/content/SharedPreferences;

    .line 43
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getBool(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "map"    # Ljava/lang/String;
    .param p3, "ori"    # Z

    .line 30
    iget-object v0, p0, Lpubgm/loader/utils/myTools;->ctx:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/utils/myTools;->sp:Landroid/content/SharedPreferences;

    .line 31
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getSt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "map"    # Ljava/lang/String;
    .param p3, "ori"    # Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lpubgm/loader/utils/myTools;->ctx:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/utils/myTools;->sp:Landroid/content/SharedPreferences;

    .line 55
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setBool(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "map"    # Ljava/lang/String;
    .param p3, "write"    # Z

    .line 23
    iget-object v0, p0, Lpubgm/loader/utils/myTools;->ctx:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/utils/myTools;->sp:Landroid/content/SharedPreferences;

    .line 24
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 25
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 26
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 27
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 28
    return-void
.end method

.method public setInt(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "map"    # Ljava/lang/String;
    .param p3, "write"    # I

    .line 35
    iget-object v0, p0, Lpubgm/loader/utils/myTools;->ctx:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/utils/myTools;->sp:Landroid/content/SharedPreferences;

    .line 36
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 37
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 38
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 39
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 40
    return-void
.end method

.method public setLocale(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "cd"    # Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, "loc":Ljava/util/Locale;
    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 64
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 65
    .local v1, "ress":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 66
    .local v2, "cfg":Landroid/content/res/Configuration;
    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 67
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 68
    return-void
.end method

.method public setSt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "map"    # Ljava/lang/String;
    .param p3, "write"    # Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lpubgm/loader/utils/myTools;->ctx:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/utils/myTools;->sp:Landroid/content/SharedPreferences;

    .line 48
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 49
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 51
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 52
    return-void
.end method
