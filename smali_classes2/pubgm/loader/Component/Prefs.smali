.class public Lpubgm/loader/Component/Prefs;
.super Ljava/lang/Object;
.source "Prefs.java"


# static fields
.field private static final DEFAULT_BOOLEAN_VALUE:Z = false

.field private static final DEFAULT_DOUBLE_VALUE:D = -1.0

.field private static final DEFAULT_FLOAT_VALUE:F = -1.0f

.field private static final DEFAULT_INT_VALUE:I = -0x1

.field private static final DEFAULT_LONG_VALUE:J = -0x1L

.field private static final DEFAULT_STRING_VALUE:Ljava/lang/String; = ""

.field private static final LENGTH:Ljava/lang/String; = "_length"

.field private static prefsInstance:Lpubgm/loader/Component/Prefs;


# instance fields
.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_preferences"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 21
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/Component/Prefs;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 25
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferencesName"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/Component/Prefs;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 32
    return-void
.end method

.method public static with(Landroid/content/Context;)Lpubgm/loader/Component/Prefs;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 35
    sget-object v0, Lpubgm/loader/Component/Prefs;->prefsInstance:Lpubgm/loader/Component/Prefs;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lpubgm/loader/Component/Prefs;

    invoke-direct {v0, p0}, Lpubgm/loader/Component/Prefs;-><init>(Landroid/content/Context;)V

    sput-object v0, Lpubgm/loader/Component/Prefs;->prefsInstance:Lpubgm/loader/Component/Prefs;

    .line 38
    :cond_0
    sget-object v0, Lpubgm/loader/Component/Prefs;->prefsInstance:Lpubgm/loader/Component/Prefs;

    return-object v0
.end method

.method public static with(Landroid/content/Context;Ljava/lang/String;)Lpubgm/loader/Component/Prefs;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "preferencesName"    # Ljava/lang/String;

    .line 49
    sget-object v0, Lpubgm/loader/Component/Prefs;->prefsInstance:Lpubgm/loader/Component/Prefs;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lpubgm/loader/Component/Prefs;

    invoke-direct {v0, p0, p1}, Lpubgm/loader/Component/Prefs;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lpubgm/loader/Component/Prefs;->prefsInstance:Lpubgm/loader/Component/Prefs;

    .line 52
    :cond_0
    sget-object v0, Lpubgm/loader/Component/Prefs;->prefsInstance:Lpubgm/loader/Component/Prefs;

    return-object v0
.end method

.method public static with(Landroid/content/Context;Ljava/lang/String;Z)Lpubgm/loader/Component/Prefs;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "preferencesName"    # Ljava/lang/String;
    .param p2, "forceInstantiation"    # Z

    .line 57
    if-eqz p2, :cond_0

    .line 58
    new-instance v0, Lpubgm/loader/Component/Prefs;

    invoke-direct {v0, p0, p1}, Lpubgm/loader/Component/Prefs;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lpubgm/loader/Component/Prefs;->prefsInstance:Lpubgm/loader/Component/Prefs;

    .line 60
    :cond_0
    sget-object v0, Lpubgm/loader/Component/Prefs;->prefsInstance:Lpubgm/loader/Component/Prefs;

    return-object v0
.end method

.method public static with(Landroid/content/Context;Z)Lpubgm/loader/Component/Prefs;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "forceInstantiation"    # Z

    .line 42
    if-eqz p1, :cond_0

    .line 43
    new-instance v0, Lpubgm/loader/Component/Prefs;

    invoke-direct {v0, p0}, Lpubgm/loader/Component/Prefs;-><init>(Landroid/content/Context;)V

    sput-object v0, Lpubgm/loader/Component/Prefs;->prefsInstance:Lpubgm/loader/Component/Prefs;

    .line 45
    :cond_0
    sget-object v0, Lpubgm/loader/Component/Prefs;->prefsInstance:Lpubgm/loader/Component/Prefs;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 182
    iget-object v0, p0, Lpubgm/loader/Component/Prefs;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 183
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 178
    iget-object v0, p0, Lpubgm/loader/Component/Prefs;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 158
    .local p2, "defValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lpubgm/loader/Component/Prefs;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 154
    .local p2, "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lpubgm/loader/Component/Prefs;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 155
    return-void
.end method

.method public read(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "what"    # Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lpubgm/loader/Component/Prefs;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "what"    # Ljava/lang/String;
    .param p2, "defaultString"    # Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lpubgm/loader/Component/Prefs;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p1, "what"    # Ljava/lang/String;

    .line 140
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lpubgm/loader/Component/Prefs;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public readBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "what"    # Ljava/lang/String;
    .param p2, "defaultBoolean"    # Z

    .line 144
    iget-object v0, p0, Lpubgm/loader/Component/Prefs;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public readDouble(Ljava/lang/String;)D
    .locals 2
    .param p1, "what"    # Ljava/lang/String;

    .line 94
    invoke-virtual {p0, p1}, Lpubgm/loader/Component/Prefs;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0

    .line 96
    :cond_0
    invoke-virtual {p0, p1}, Lpubgm/loader/Component/Prefs;->readLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readDouble(Ljava/lang/String;D)D
    .locals 2
    .param p1, "what"    # Ljava/lang/String;
    .param p2, "defaultDouble"    # D

    .line 100
    invoke-virtual {p0, p1}, Lpubgm/loader/Component/Prefs;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    return-wide p2

    .line 102
    :cond_0
    invoke-virtual {p0, p1}, Lpubgm/loader/Component/Prefs;->readLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat(Ljava/lang/String;)F
    .locals 2
    .param p1, "what"    # Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lpubgm/loader/Component/Prefs;->sharedPreferences:Landroid/content/SharedPreferences;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public readFloat(Ljava/lang/String;F)F
    .locals 1
    .param p1, "what"    # Ljava/lang/String;
    .param p2, "defaultFloat"    # F

    .line 116
    iget-object v0, p0, Lpubgm/loader/Component/Prefs;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public readInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "what"    # Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lpubgm/loader/Component/Prefs;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, -0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public readInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "what"    # Ljava/lang/String;
    .param p2, "defaultInt"    # I

    .line 84
    iget-object v0, p0, Lpubgm/loader/Component/Prefs;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public readLong(Ljava/lang/String;)J
    .locals 3
    .param p1, "what"    # Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lpubgm/loader/Component/Prefs;->sharedPreferences:Landroid/content/SharedPreferences;

    const-wide/16 v1, -0x1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "what"    # Ljava/lang/String;
    .param p2, "defaultLong"    # J

    .line 130
    iget-object v0, p0, Lpubgm/loader/Component/Prefs;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_length"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpubgm/loader/Component/Prefs;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpubgm/loader/Component/Prefs;->readInt(Ljava/lang/String;)I

    move-result v0

    .line 167
    .local v0, "stringSetLength":I
    if-ltz v0, :cond_0

    .line 168
    iget-object v2, p0, Lpubgm/loader/Component/Prefs;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 169
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 170
    iget-object v2, p0, Lpubgm/loader/Component/Prefs;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    .end local v0    # "stringSetLength":I
    .end local v1    # "i":I
    :cond_0
    iget-object v0, p0, Lpubgm/loader/Component/Prefs;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 175
    return-void
.end method

.method public write(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "what"    # Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lpubgm/loader/Component/Prefs;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 75
    return-void
.end method

.method public writeBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "what"    # Z

    .line 148
    iget-object v0, p0, Lpubgm/loader/Component/Prefs;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 149
    return-void
.end method

.method public writeDouble(Ljava/lang/String;D)V
    .locals 2
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "what"    # D

    .line 106
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lpubgm/loader/Component/Prefs;->writeLong(Ljava/lang/String;J)V

    .line 107
    return-void
.end method

.method public writeFloat(Ljava/lang/String;F)V
    .locals 1
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "what"    # F

    .line 120
    iget-object v0, p0, Lpubgm/loader/Component/Prefs;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 121
    return-void
.end method

.method public writeInt(Ljava/lang/String;I)V
    .locals 1
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "what"    # I

    .line 88
    iget-object v0, p0, Lpubgm/loader/Component/Prefs;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 89
    return-void
.end method

.method public writeLong(Ljava/lang/String;J)V
    .locals 1
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "what"    # J

    .line 134
    iget-object v0, p0, Lpubgm/loader/Component/Prefs;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 135
    return-void
.end method
