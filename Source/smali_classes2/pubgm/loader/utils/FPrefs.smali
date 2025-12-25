.class public Lpubgm/loader/utils/FPrefs;
.super Ljava/lang/Object;
.source "FPrefs.java"


# static fields
.field private static final DEFAULT_BOOLEAN_VALUE:Z = false

.field private static final DEFAULT_DOUBLE_VALUE:D = -1.0

.field private static final DEFAULT_FLOAT_VALUE:F = -1.0f

.field private static final DEFAULT_INT_VALUE:I = -0x1

.field private static final DEFAULT_LONG_VALUE:J = -0x1L

.field private static final DEFAULT_STRING_VALUE:Ljava/lang/String;

.field private static final LENGTH:Ljava/lang/String;

.field private static prefsInstance:Lpubgm/loader/utils/FPrefs;


# instance fields
.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private static constructor <clinit>()V
    .locals 2

    const-wide v0, -0x691d8c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lpubgm/loader/utils/FPrefs;->LENGTH:Ljava/lang/String;

    const-wide v0, -0x69058c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lpubgm/loader/utils/FPrefs;->DEFAULT_STRING_VALUE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/utils/FPrefs;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 24
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferencesName"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/utils/FPrefs;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 31
    return-void
.end method

.method public static with(Landroid/content/Context;)Lpubgm/loader/utils/FPrefs;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 34
    sget-object v0, Lpubgm/loader/utils/FPrefs;->prefsInstance:Lpubgm/loader/utils/FPrefs;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lpubgm/loader/utils/FPrefs;

    invoke-direct {v0, p0}, Lpubgm/loader/utils/FPrefs;-><init>(Landroid/content/Context;)V

    sput-object v0, Lpubgm/loader/utils/FPrefs;->prefsInstance:Lpubgm/loader/utils/FPrefs;

    .line 37
    :cond_0
    sget-object v0, Lpubgm/loader/utils/FPrefs;->prefsInstance:Lpubgm/loader/utils/FPrefs;

    return-object v0
.end method

.method public static with(Landroid/content/Context;Ljava/lang/String;)Lpubgm/loader/utils/FPrefs;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "preferencesName"    # Ljava/lang/String;

    .line 48
    sget-object v0, Lpubgm/loader/utils/FPrefs;->prefsInstance:Lpubgm/loader/utils/FPrefs;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lpubgm/loader/utils/FPrefs;

    invoke-direct {v0, p0, p1}, Lpubgm/loader/utils/FPrefs;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lpubgm/loader/utils/FPrefs;->prefsInstance:Lpubgm/loader/utils/FPrefs;

    .line 51
    :cond_0
    sget-object v0, Lpubgm/loader/utils/FPrefs;->prefsInstance:Lpubgm/loader/utils/FPrefs;

    return-object v0
.end method

.method public static with(Landroid/content/Context;Ljava/lang/String;Z)Lpubgm/loader/utils/FPrefs;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "preferencesName"    # Ljava/lang/String;
    .param p2, "forceInstantiation"    # Z

    .line 56
    if-eqz p2, :cond_0

    .line 57
    new-instance v0, Lpubgm/loader/utils/FPrefs;

    invoke-direct {v0, p0, p1}, Lpubgm/loader/utils/FPrefs;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lpubgm/loader/utils/FPrefs;->prefsInstance:Lpubgm/loader/utils/FPrefs;

    .line 59
    :cond_0
    sget-object v0, Lpubgm/loader/utils/FPrefs;->prefsInstance:Lpubgm/loader/utils/FPrefs;

    return-object v0
.end method

.method public static with(Landroid/content/Context;Z)Lpubgm/loader/utils/FPrefs;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "forceInstantiation"    # Z

    .line 41
    if-eqz p1, :cond_0

    .line 42
    new-instance v0, Lpubgm/loader/utils/FPrefs;

    invoke-direct {v0, p0}, Lpubgm/loader/utils/FPrefs;-><init>(Landroid/content/Context;)V

    sput-object v0, Lpubgm/loader/utils/FPrefs;->prefsInstance:Lpubgm/loader/utils/FPrefs;

    .line 44
    :cond_0
    sget-object v0, Lpubgm/loader/utils/FPrefs;->prefsInstance:Lpubgm/loader/utils/FPrefs;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 181
    iget-object v0, p0, Lpubgm/loader/utils/FPrefs;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 182
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lpubgm/loader/utils/FPrefs;->sharedPreferences:Landroid/content/SharedPreferences;

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

    .line 157
    .local p2, "defValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lpubgm/loader/utils/FPrefs;->sharedPreferences:Landroid/content/SharedPreferences;

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

    .line 153
    .local p2, "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lpubgm/loader/utils/FPrefs;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 154
    return-void
.end method

.method public read(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "what"    # Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lpubgm/loader/utils/FPrefs;->sharedPreferences:Landroid/content/SharedPreferences;

    const-wide v1, -0x69628c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "what"    # Ljava/lang/String;
    .param p2, "defaultString"    # Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lpubgm/loader/utils/FPrefs;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p1, "what"    # Ljava/lang/String;

    .line 139
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lpubgm/loader/utils/FPrefs;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public readBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "what"    # Ljava/lang/String;
    .param p2, "defaultBoolean"    # Z

    .line 143
    iget-object v0, p0, Lpubgm/loader/utils/FPrefs;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public readDouble(Ljava/lang/String;)D
    .locals 2
    .param p1, "what"    # Ljava/lang/String;

    .line 93
    invoke-virtual {p0, p1}, Lpubgm/loader/utils/FPrefs;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0

    .line 95
    :cond_0
    invoke-virtual {p0, p1}, Lpubgm/loader/utils/FPrefs;->readLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readDouble(Ljava/lang/String;D)D
    .locals 2
    .param p1, "what"    # Ljava/lang/String;
    .param p2, "defaultDouble"    # D

    .line 99
    invoke-virtual {p0, p1}, Lpubgm/loader/utils/FPrefs;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    return-wide p2

    .line 101
    :cond_0
    invoke-virtual {p0, p1}, Lpubgm/loader/utils/FPrefs;->readLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat(Ljava/lang/String;)F
    .locals 2
    .param p1, "what"    # Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lpubgm/loader/utils/FPrefs;->sharedPreferences:Landroid/content/SharedPreferences;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public readFloat(Ljava/lang/String;F)F
    .locals 1
    .param p1, "what"    # Ljava/lang/String;
    .param p2, "defaultFloat"    # F

    .line 115
    iget-object v0, p0, Lpubgm/loader/utils/FPrefs;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public readInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "what"    # Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lpubgm/loader/utils/FPrefs;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, -0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public readInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "what"    # Ljava/lang/String;
    .param p2, "defaultInt"    # I

    .line 83
    iget-object v0, p0, Lpubgm/loader/utils/FPrefs;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public readLong(Ljava/lang/String;)J
    .locals 3
    .param p1, "what"    # Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lpubgm/loader/utils/FPrefs;->sharedPreferences:Landroid/content/SharedPreferences;

    const-wide/16 v1, -0x1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "what"    # Ljava/lang/String;
    .param p2, "defaultLong"    # J

    .line 129
    iget-object v0, p0, Lpubgm/loader/utils/FPrefs;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v1, -0x69618c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpubgm/loader/utils/FPrefs;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v1, -0x69698c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpubgm/loader/utils/FPrefs;->readInt(Ljava/lang/String;)I

    move-result v0

    .line 166
    .local v0, "stringSetLength":I
    if-ltz v0, :cond_0

    .line 167
    iget-object v1, p0, Lpubgm/loader/utils/FPrefs;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide v3, -0x69118c1d73e5L

    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 168
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 169
    iget-object v2, p0, Lpubgm/loader/utils/FPrefs;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide v4, -0x69198c1d73e5L

    invoke-static {v4, v5}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide v4, -0x691f8c1d73e5L

    invoke-static {v4, v5}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    .end local v0    # "stringSetLength":I
    .end local v1    # "i":I
    :cond_0
    iget-object v0, p0, Lpubgm/loader/utils/FPrefs;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 174
    return-void
.end method

.method public write(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "what"    # Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lpubgm/loader/utils/FPrefs;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 74
    return-void
.end method

.method public writeBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "what"    # Z

    .line 147
    iget-object v0, p0, Lpubgm/loader/utils/FPrefs;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 148
    return-void
.end method

.method public writeDouble(Ljava/lang/String;D)V
    .locals 2
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "what"    # D

    .line 105
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lpubgm/loader/utils/FPrefs;->writeLong(Ljava/lang/String;J)V

    .line 106
    return-void
.end method

.method public writeFloat(Ljava/lang/String;F)V
    .locals 1
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "what"    # F

    .line 119
    iget-object v0, p0, Lpubgm/loader/utils/FPrefs;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 120
    return-void
.end method

.method public writeInt(Ljava/lang/String;I)V
    .locals 1
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "what"    # I

    .line 87
    iget-object v0, p0, Lpubgm/loader/utils/FPrefs;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 88
    return-void
.end method

.method public writeLong(Ljava/lang/String;J)V
    .locals 1
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "what"    # J

    .line 133
    iget-object v0, p0, Lpubgm/loader/utils/FPrefs;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 134
    return-void
.end method
