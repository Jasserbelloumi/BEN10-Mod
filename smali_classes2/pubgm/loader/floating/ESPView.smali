.class public Lpubgm/loader/floating/ESPView;
.super Landroid/view/View;
.source "ESPView.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final OTH_NAME:[I

.field private static final bitmapCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static itemPosition:I

.field private static itemSize:I

.field public static sleepTime:J


# instance fields
.field OTHER:[Landroid/graphics/Bitmap;

.field private PaintTextBold:Landroid/graphics/Paint;

.field airdropBitmap:Landroid/graphics/Bitmap;

.field airplaneBitmap:Landroid/graphics/Bitmap;

.field atvBitmap:Landroid/graphics/Bitmap;

.field bikeBitmap:Landroid/graphics/Bitmap;

.field bitmap:Landroid/graphics/Bitmap;

.field boatBitmap:Landroid/graphics/Bitmap;

.field botBitmap:Landroid/graphics/Bitmap;

.field brdmBitmap:Landroid/graphics/Bitmap;

.field buggyBitmap:Landroid/graphics/Bitmap;

.field busBitmap:Landroid/graphics/Bitmap;

.field coupeBitmap:Landroid/graphics/Bitmap;

.field daciaBitmap:Landroid/graphics/Bitmap;

.field gliderBitmap:Landroid/graphics/Bitmap;

.field jetBitmap:Landroid/graphics/Bitmap;

.field kudaBitmap:Landroid/graphics/Bitmap;

.field loginmode:Ljava/lang/String;

.field lootBitmap:Landroid/graphics/Bitmap;

.field private mFPS:F

.field private mFPSCounter:F

.field private mFPSText:Landroid/graphics/Paint;

.field private mFPSTime:J

.field private mFillPaint:Landroid/graphics/Paint;

.field private mFilledPaint:Landroid/graphics/Paint;

.field private mItemsPaint:Landroid/graphics/Paint;

.field private mLootBoxPaint:Landroid/graphics/Paint;

.field private mMDText:Landroid/graphics/Paint;

.field private mNamePaint:Landroid/graphics/Paint;

.field private mPaintBitmap:Landroid/graphics/Paint;

.field private mPaintBitmap1:Landroid/graphics/Paint;

.field private mScaleX:F

.field private mScaleY:F

.field private mStrokePaint:Landroid/graphics/Paint;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextPainti:Landroid/graphics/Paint;

.field private mTexturePaint:Landroid/graphics/Paint;

.field private final mThread:Ljava/lang/Thread;

.field private mVehiclesPaint:Landroid/graphics/Paint;

.field miradoBitmap:Landroid/graphics/Bitmap;

.field monsterBitmap:Landroid/graphics/Bitmap;

.field out:Landroid/graphics/Bitmap;

.field p:Landroid/graphics/Paint;

.field p2:Landroid/graphics/Paint;

.field path:Landroid/graphics/Path;

.field ronyBitmap:Landroid/graphics/Bitmap;

.field scooterBitmap:Landroid/graphics/Bitmap;

.field selectmode:Ljava/lang/String;

.field snowbikeBitmap:Landroid/graphics/Bitmap;

.field snowmobileBitmap:Landroid/graphics/Bitmap;

.field tempoBitmap:Landroid/graphics/Bitmap;

.field trikeBitmap:Landroid/graphics/Bitmap;

.field truckBitmap:Landroid/graphics/Bitmap;

.field uazBitmap:Landroid/graphics/Bitmap;

.field utvBitmap:Landroid/graphics/Bitmap;

.field vehicleBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 60
    new-instance v0, Landroid/util/LruCache;

    const/high16 v1, 0xa00000

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lpubgm/loader/floating/ESPView;->bitmapCache:Landroid/util/LruCache;

    .line 82
    invoke-static {}, Lpubgm/loader/floating/ESPView;->getOthNameByLayout()[I

    move-result-object v0

    sput-object v0, Lpubgm/loader/floating/ESPView;->OTH_NAME:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 84
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    sget-object v0, Lpubgm/loader/activity/MainActivity;->modeselect:Ljava/lang/String;

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->selectmode:Ljava/lang/String;

    .line 50
    sget-object v0, Lpubgm/loader/activity/MainActivity;->typelogin:Ljava/lang/String;

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->loginmode:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lpubgm/loader/floating/ESPView;->mFPS:F

    .line 56
    iput v0, p0, Lpubgm/loader/floating/ESPView;->mFPSCounter:F

    .line 57
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lpubgm/loader/floating/ESPView;->mFPSTime:J

    .line 58
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lpubgm/loader/floating/ESPView;->mScaleX:F

    .line 59
    iput v0, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    .line 61
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->path:Landroid/graphics/Path;

    .line 68
    const/4 v0, 0x7

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->OTHER:[Landroid/graphics/Bitmap;

    .line 85
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->InitializePaints()V

    .line 86
    invoke-virtual {p0, v1}, Lpubgm/loader/floating/ESPView;->setFocusableInTouchMode(Z)V

    .line 87
    invoke-virtual {p0, v1}, Lpubgm/loader/floating/ESPView;->setBackgroundColor(I)V

    .line 88
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->mThread:Ljava/lang/Thread;

    .line 89
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 90
    return-void
.end method

.method public static ChangeFps(I)V
    .locals 2
    .param p0, "fps"    # I

    .line 64
    const/16 v0, 0x3e8

    div-int/2addr v0, p0

    int-to-long v0, v0

    sput-wide v0, Lpubgm/loader/floating/ESPView;->sleepTime:J

    .line 65
    return-void
.end method

.method private Nation(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "code"    # Ljava/lang/String;

    .line 955
    const-string v0, "G1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 957
    const-string p1, "\ud83c\udf0d\ufe0f"

    goto :goto_0

    .line 960
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    add-int/lit8 v2, v2, -0x41

    const v3, 0x1f1e6

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    add-int/lit8 v2, v2, -0x41

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 962
    :goto_0
    return-object p1
.end method

.method private VehicleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 2034
    const-string v0, "Buggy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2035
    return-object v0

    .line 2036
    :cond_0
    const-string v0, "UAZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2037
    return-object v0

    .line 2038
    :cond_1
    const-string v0, "MotorcycleC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Trike"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2039
    return-object v0

    .line 2040
    :cond_2
    const-string v0, "Motorcycle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Bike"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2041
    return-object v0

    .line 2042
    :cond_3
    const-string v0, "DAcia"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Dacia"

    if-eqz v0, :cond_4

    invoke-static {v1}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2043
    return-object v1

    .line 2044
    :cond_4
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v1}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2045
    return-object v1

    .line 2046
    :cond_5
    const-string v0, "AquaRail"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "Jet"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2047
    return-object v0

    .line 2048
    :cond_6
    const-string v0, "PG117"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "Boat"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2049
    return-object v0

    .line 2050
    :cond_7
    const-string v0, "MiniBus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "Bus"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2051
    return-object v0

    .line 2052
    :cond_8
    const-string v0, "Mirado"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2053
    return-object v0

    .line 2054
    :cond_9
    const-string v0, "Scooter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2055
    return-object v0

    .line 2056
    :cond_a
    const-string v0, "Rony"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2057
    return-object v0

    .line 2058
    :cond_b
    const-string v0, "Snowbike"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2059
    return-object v0

    .line 2060
    :cond_c
    const-string v0, "Snowmobile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2061
    return-object v0

    .line 2062
    :cond_d
    const-string v0, "Tuk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "Tempo"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2063
    return-object v0

    .line 2064
    :cond_e
    const-string v0, "PickUp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "Truck"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2065
    return-object v0

    .line 2066
    :cond_f
    const-string v0, "BRDM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2067
    return-object v0

    .line 2068
    :cond_10
    const-string v0, "LadaNiva"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2069
    return-object v0

    .line 2070
    :cond_11
    const-string v0, "Bigfoot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "Monster"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2071
    return-object v0

    .line 2072
    :cond_12
    const-string v0, "CoupeRB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2073
    return-object v0

    .line 2074
    :cond_13
    const-string v0, "glider"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "Motor Glider"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2075
    const-string v0, "Motor Glider"

    return-object v0

    .line 2076
    :cond_14
    const-string v0, "UTV"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2077
    return-object v0

    .line 2078
    :cond_15
    const-string v0, "ATV1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2079
    return-object v0

    .line 2080
    :cond_16
    const-string v0, "Reindeer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2081
    return-object v0

    .line 2082
    :cond_17
    const-string v0, ""

    return-object v0
.end method

.method private getItemName(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "s"    # Ljava/lang/String;

    .line 1489
    const-string v0, "MZJ_8X"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0xf5

    const/16 v2, 0xf7

    const/16 v3, 0x63

    const/16 v4, 0xff

    if-eqz v0, :cond_0

    const-string v0, "8x"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1490
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1491
    const-string v0, "8x"

    return-object v0

    .line 1493
    :cond_0
    const-string v0, "MZJ_2X"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "2x"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1494
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v1, 0xe6

    const/16 v2, 0xac

    const/16 v3, 0xe2

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1495
    const-string v0, "2x"

    return-object v0

    .line 1497
    :cond_1
    const-string v0, "MZJ_HD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Red Dot"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1498
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v1, 0xe6

    const/16 v2, 0xac

    const/16 v3, 0xe2

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1499
    const-string v0, "Red Dot"

    return-object v0

    .line 1501
    :cond_2
    const-string v0, "MZJ_3X"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "3x"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1502
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1503
    const-string v0, "3X"

    return-object v0

    .line 1505
    :cond_3
    const-string v0, "MZJ_QX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v5, 0x99

    if-eqz v0, :cond_4

    const-string v0, "Hollow"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1506
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v1, 0x4b

    const/16 v2, 0x98

    invoke-virtual {v0, v4, v5, v1, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1507
    const-string v0, "Hollow Sight"

    return-object v0

    .line 1509
    :cond_4
    const-string v0, "MZJ_6X"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "6x"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1510
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1511
    const-string v0, "6x"

    return-object v0

    .line 1513
    :cond_5
    const-string v0, "MZJ_4X"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "4x"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1514
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1515
    const-string v0, "4x"

    return-object v0

    .line 1517
    :cond_6
    const-string v0, "MZJ_SideRMR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "Canted"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1518
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v1, 0x4b

    const/16 v2, 0x98

    invoke-virtual {v0, v4, v5, v1, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1519
    const-string v0, "Canted Sight"

    return-object v0

    .line 1523
    :cond_7
    const-string v0, "Rifle_AUG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v6, 0x3f

    if-eqz v0, :cond_8

    const-string v0, "AUG"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1524
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v1, 0x34

    const/16 v2, 0xe0

    invoke-virtual {v0, v4, v1, v2, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1525
    const-string v0, "AUG"

    return-object v0

    .line 1527
    :cond_8
    const-string v0, "Rifle_M762"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "M762"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1528
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v1, 0x2b

    const/16 v2, 0x1a

    const/16 v3, 0x1c

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1529
    const-string v0, "M762"

    return-object v0

    .line 1531
    :cond_9
    const-string v0, "Rifle_SCAR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "SCAR-L"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1532
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v1, 0x34

    const/16 v2, 0xe0

    invoke-virtual {v0, v4, v1, v2, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1533
    const-string v0, "SCAR-L"

    return-object v0

    .line 1535
    :cond_a
    const-string v0, "Rifle_FAMAS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_b

    const-string v0, "FAMAS"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1536
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v7, v4, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1537
    const-string v0, "FAMAS"

    return-object v0

    .line 1539
    :cond_b
    const-string v0, "Rifle_M416"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v8, 0x73

    if-eqz v0, :cond_c

    const-string v0, "M416"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1540
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v1, 0xeb

    const/16 v2, 0xdf

    invoke-virtual {v0, v4, v8, v1, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1541
    const-string v0, "M416"

    return-object v0

    .line 1543
    :cond_c
    const-string v0, "Rifle_M16A4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "M16A4"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1544
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v1, 0x74

    const/16 v2, 0xe3

    const/16 v3, 0x7b

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1545
    const-string v0, "M16A-4"

    return-object v0

    .line 1547
    :cond_d
    const-string v0, "Rifle_G36"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "G36C"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1548
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v1, 0x74

    const/16 v2, 0xe3

    const/16 v3, 0x7b

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1549
    const-string v0, "G36C"

    return-object v0

    .line 1551
    :cond_e
    const-string v0, "Rifle_QBZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "QBZ"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1552
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v1, 0x34

    const/16 v2, 0xe0

    invoke-virtual {v0, v4, v1, v2, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1553
    const-string v0, "QBZ"

    return-object v0

    .line 1555
    :cond_f
    const-string v0, "Rifle_AKM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v9, 0xd6

    if-eqz v0, :cond_10

    const-string v0, "AKM"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1556
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v9, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1557
    const-string v0, "AKM"

    return-object v0

    .line 1559
    :cond_10
    const-string v0, "Rifle_HoneyBadger"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "Honey Badger"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1560
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v9, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1561
    const-string v0, "Honey Badger"

    return-object v0

    .line 1563
    :cond_11
    const-string v0, "Rifle_Groza"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "Groza"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1564
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v9, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1565
    const-string v0, "Groza"

    return-object v0

    .line 1567
    :cond_12
    const-string v0, "Rifle_ACE32"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "ACE32"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1568
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v9, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1569
    const-string v0, "ACE32"

    return-object v0

    .line 1574
    :cond_13
    const-string v0, "SubmachineGun_UMP45"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v10, 0xcf

    if-eqz v0, :cond_14

    const-string v0, "UMP"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1575
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v10, v10, v10}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1576
    const-string v0, "UMP"

    return-object v0

    .line 1579
    :cond_14
    const-string v0, "MachineGun_PP19"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "Bizon"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1580
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v1, 0xf6

    invoke-virtual {v0, v4, v4, v1, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1581
    const-string v0, "Bizon"

    return-object v0

    .line 1583
    :cond_15
    const-string v0, "MachineGun_TommyGun"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "TommyGun"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1584
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v10, v10, v10}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1585
    const-string v0, "TommyGun"

    return-object v0

    .line 1587
    :cond_16
    const-string v0, "MachineGun_MP5K"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "MP5K"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1588
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v10, v10, v10}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1589
    const-string v0, "MP5K"

    return-object v0

    .line 1591
    :cond_17
    const-string v0, "MachineGun_UMP9"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "UMP"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1592
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v10, v10, v10}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1593
    const-string v0, "UMP"

    return-object v0

    .line 1595
    :cond_18
    const-string v0, "MachineGun_Vector"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "Vector"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1596
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v1, 0xf6

    invoke-virtual {v0, v4, v4, v1, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1597
    const-string v0, "Vector"

    return-object v0

    .line 1599
    :cond_19
    const-string v0, "MachineGun_Uzi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "UZI"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1600
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v1, 0xf6

    invoke-virtual {v0, v4, v4, v1, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1601
    const-string v0, "UZI"

    return-object v0

    .line 1603
    :cond_1a
    const-string v0, "MachineGun_P90"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "P90"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1604
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v1, 0xe9

    invoke-virtual {v0, v4, v1, v7, v10}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1605
    const-string v0, "P90"

    return-object v0

    .line 1609
    :cond_1b
    const-string v0, "Other_DP28"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "DP28"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1610
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v1, 0x2b

    const/16 v2, 0x1a

    const/16 v3, 0x1c

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1611
    const-string v0, "DP28"

    return-object v0

    .line 1613
    :cond_1c
    const-string v0, "Other_M249"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "M249"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1614
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1615
    const-string v0, "M249"

    return-object v0

    .line 1617
    :cond_1d
    const-string v0, "Other_MG3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "MG3"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1618
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v7, v4, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1619
    const-string v0, "MG3"

    return-object v0

    .line 1623
    :cond_1e
    const-string v0, "Sniper_AWM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "AWM"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1624
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1625
    const-string v0, "AWM"

    return-object v0

    .line 1627
    :cond_1f
    const-string v0, "Sniper_AMR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "AMR"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1628
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1629
    const-string v0, "AMR"

    return-object v0

    .line 1631
    :cond_20
    const-string v0, "Sniper_QBU"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "QBU"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1632
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v10, v10, v10}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1633
    const-string v0, "QBU"

    return-object v0

    .line 1635
    :cond_21
    const-string v0, "Sniper_SLR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "SLR"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1636
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v9, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1637
    const-string v0, "SLR"

    return-object v0

    .line 1639
    :cond_22
    const-string v0, "Sniper_SKS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "SKS"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1640
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v9, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1641
    const-string v0, "SKS"

    return-object v0

    .line 1643
    :cond_23
    const-string v0, "Sniper_Mini14"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "Mini14"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1644
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1645
    const-string v0, "Mini14"

    return-object v0

    .line 1647
    :cond_24
    const-string v0, "Sniper_M24"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "M24"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1648
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v9, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1649
    const-string v0, "M24"

    return-object v0

    .line 1651
    :cond_25
    const-string v0, "Sniper_Kar98k"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "Kar98k"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1652
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v9, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1653
    const-string v0, "Kar98k"

    return-object v0

    .line 1655
    :cond_26
    const-string v0, "Sniper_VSS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    const-string v0, "VSS"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1656
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v1, 0xf6

    invoke-virtual {v0, v4, v4, v1, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1657
    const-string v0, "VSS"

    return-object v0

    .line 1659
    :cond_27
    const-string v0, "Sniper_Win94"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "Win94"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1660
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v10, v10, v10}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1661
    const-string v0, "Win94"

    return-object v0

    .line 1663
    :cond_28
    const-string v0, "Sniper_Mk14"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "MK14"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1664
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v9, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1665
    const-string v0, "MK14"

    return-object v0

    .line 1667
    :cond_29
    const-string v0, "Sniper_Mosin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "Mosin"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1668
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v5, v7, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1669
    const-string v0, "Mosin"

    return-object v0

    .line 1671
    :cond_2a
    const-string v0, "Sniper_MK12"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string v0, "MK12"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1672
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v9, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1673
    const-string v0, "MK12"

    return-object v0

    .line 1675
    :cond_2b
    const-string v0, "Sniper_Mk47"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "MK47"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1676
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1677
    const-string v0, "Mk47 Mutant"

    return-object v0

    .line 1681
    :cond_2c
    const-string v0, "ShotGun_S12K"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x6d

    if-eqz v0, :cond_2d

    const-string v0, "S12K"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1682
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v5, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1683
    const-string v0, "S12K"

    return-object v0

    .line 1685
    :cond_2d
    const-string v0, "ShotGun_DP12"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "DBS"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1686
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v5, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1687
    const-string v0, "DBS"

    return-object v0

    .line 1689
    :cond_2e
    const-string v0, "ShotGun_M1014"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string v0, "M1014"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1690
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v5, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1691
    const-string v0, "M1014"

    return-object v0

    .line 1693
    :cond_2f
    const-string v0, "ShotGun_Neostead2000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    const-string v0, "NS2000"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1694
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v5, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1695
    const-string v0, "NS2000"

    return-object v0

    .line 1697
    :cond_30
    const-string v0, "ShotGun_S686"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

    const-string v0, "S686"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1698
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v5, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1699
    const-string v0, "S686"

    return-object v0

    .line 1701
    :cond_31
    const-string v0, "ShotGun_S1897"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    const-string v0, "S1897"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1702
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v5, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1703
    const-string v0, "S1897"

    return-object v0

    .line 1707
    :cond_32
    const-string v0, "Sickle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v3, 0x66

    const/16 v9, 0x4a

    if-eqz v0, :cond_33

    const-string v0, "Sickle"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1708
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v3, v9, v9}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1709
    const-string v0, "Sickle"

    return-object v0

    .line 1711
    :cond_33
    const-string v0, "Machete"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "Machete"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1712
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v3, v9, v9}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1713
    const-string v0, "Machete"

    return-object v0

    .line 1715
    :cond_34
    const-string v0, "Cowbar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_35

    const-string v0, "Crowbar"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1716
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v3, v9, v9}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1717
    const-string v0, "Crowbar"

    return-object v0

    .line 1719
    :cond_35
    const-string v0, "CrossBow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    const-string v0, "CrossBow"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1720
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v3, v9, v9}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1721
    const-string v0, "CrossBow"

    return-object v0

    .line 1723
    :cond_36
    const-string v0, "Pan"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    const-string v0, "Pan"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1724
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v3, v9, v9}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1725
    const-string v0, "Pan"

    return-object v0

    .line 1729
    :cond_37
    const-string v0, "SawedOff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38

    const-string v0, "Sawed-Off"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1730
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v5, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1731
    const-string v0, "SawedOff"

    return-object v0

    .line 1733
    :cond_38
    const-string v0, "R1895"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v3, 0x71

    const/16 v5, 0x51

    const/16 v9, 0x9c

    if-eqz v0, :cond_39

    const-string v0, "R1895"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1734
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v9, v3, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1735
    const-string v0, "R1895"

    return-object v0

    .line 1737
    :cond_39
    const-string v0, "Vz61"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string v0, "Scorpion"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1738
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v9, v3, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1739
    const-string v0, "Scorpion"

    return-object v0

    .line 1741
    :cond_3a
    const-string v0, "P92"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string v0, "P92"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1742
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v9, v3, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1743
    const-string v0, "P92"

    return-object v0

    .line 1745
    :cond_3b
    const-string v0, "P18C"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string v0, "P18C"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1746
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v9, v3, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1747
    const-string v0, "P18C"

    return-object v0

    .line 1749
    :cond_3c
    const-string v0, "R45"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const-string v0, "R45"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1750
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v9, v3, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1751
    const-string v0, "R45"

    return-object v0

    .line 1753
    :cond_3d
    const-string v0, "P1911"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string v0, "P1911"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1754
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v9, v3, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1755
    const-string v0, "P1911"

    return-object v0

    .line 1757
    :cond_3e
    const-string v0, "DesertEagle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const-string v0, "Dessert Eagle"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1758
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v9, v3, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1759
    const-string v0, "DesertEagle"

    return-object v0

    .line 1763
    :cond_3f
    const-string v0, "Ammo_762mm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_40

    const-string v0, "7.62mm"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1764
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v1, 0x5c

    const/16 v2, 0x24

    const/16 v3, 0x1c

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1765
    const-string v0, "7.62"

    return-object v0

    .line 1767
    :cond_40
    const-string v0, "Ammo_45AC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_41

    const-string v0, "45ACP"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1768
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1769
    const-string v0, "45ACP"

    return-object v0

    .line 1771
    :cond_41
    const-string v0, "Ammo_556mm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_42

    const-string v0, "5.56mm"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1772
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1773
    const-string v0, "5.56"

    return-object v0

    .line 1775
    :cond_42
    const-string v0, "Ammo_9mm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_43

    const-string v0, "9mm"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1776
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1777
    const-string v0, "9mm"

    return-object v0

    .line 1779
    :cond_43
    const-string v0, "Ammo_300Magnum"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_44

    const-string v0, "300Magnum"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1780
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1781
    const-string v0, "300Magnum"

    return-object v0

    .line 1783
    :cond_44
    const-string v0, "Ammo_50BMG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_45

    const-string v0, "50BMG"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1784
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1785
    const-string v0, "50BMG"

    return-object v0

    .line 1787
    :cond_45
    const-string v0, "Ammo_12Guage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_46

    const-string v0, "12Guage"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1788
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v1, 0x5b

    invoke-virtual {v0, v4, v9, v1, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1789
    const-string v0, "12Guage"

    return-object v0

    .line 1791
    :cond_46
    const-string v0, "Ammo_Bolt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_47

    const-string v0, "Arrow"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 1792
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v9, v3, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1793
    const-string v0, "Arrow"

    return-object v0

    .line 1797
    :cond_47
    const-string v0, "Bag_Lv3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_48

    const-string v0, "Bag L3"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v1, 0x24

    const/16 v2, 0x53

    invoke-virtual {v0, v4, v1, v2, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1798
    const-string v0, "Bag lvl 3"

    return-object v0

    .line 1801
    :cond_48
    const-string v0, "Bag_Lv1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v3, 0x7f

    if-eqz v0, :cond_49

    const-string v0, "Bag L1"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v1, 0x9a

    const/16 v2, 0xfa

    invoke-virtual {v0, v4, v3, v1, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1802
    const-string v0, "Bag lvl 1"

    return-object v0

    .line 1805
    :cond_49
    const-string v0, "Bag_Lv2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4a

    const-string v0, "Bag L2"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v1, 0x4d

    invoke-virtual {v0, v4, v1, v8, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1806
    const-string v0, "Bag lvl 2"

    return-object v0

    .line 1809
    :cond_4a
    const-string v0, "Armor_Lv2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string v0, "Vest L2"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v1, 0x4d

    invoke-virtual {v0, v4, v1, v8, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1810
    const-string v0, "Vest lvl 2"

    return-object v0

    .line 1814
    :cond_4b
    const-string v0, "Armor_Lv1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4c

    const-string v0, "Vest L1"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v1, 0x9a

    const/16 v2, 0xfa

    invoke-virtual {v0, v4, v3, v1, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1815
    const-string v0, "Vest lvl 1"

    return-object v0

    .line 1819
    :cond_4c
    const-string v0, "Armor_Lv3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4d

    const-string v0, "Vest L3"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v1, 0x24

    const/16 v2, 0x53

    invoke-virtual {v0, v4, v1, v2, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1820
    const-string v0, "Vest lvl 3"

    return-object v0

    .line 1824
    :cond_4d
    const-string v0, "Helmet_Lv2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4e

    const-string v0, "Helmet L2"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v1, 0x4d

    invoke-virtual {v0, v4, v1, v8, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1825
    const-string v0, "Helmet lvl 2"

    return-object v0

    .line 1828
    :cond_4e
    const-string v0, "Helmet_Lv1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4f

    const-string v0, "Helmet L1"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v1, 0x9a

    const/16 v2, 0xfa

    invoke-virtual {v0, v4, v3, v1, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1829
    const-string v0, "Helmet lvl 1"

    return-object v0

    .line 1832
    :cond_4f
    const-string v0, "Helmet_Lv3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_50

    const-string v0, "Helmet L3"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v1, 0x24

    const/16 v2, 0x53

    invoke-virtual {v0, v4, v1, v2, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1833
    const-string v0, "Helmet lvl 3"

    return-object v0

    .line 1837
    :cond_50
    const-string v0, "Pills"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_51

    const-string v0, "PainKiller"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v1, 0xe3

    const/16 v2, 0x5b

    const/16 v3, 0x36

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1838
    const-string v0, "PainKiller"

    return-object v0

    .line 1841
    :cond_51
    const-string v0, "Injection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v5, 0xc1

    if-eqz v0, :cond_52

    const-string v0, "Injection"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v1, 0xcc

    const/16 v2, 0xbe

    invoke-virtual {v0, v4, v1, v5, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1842
    const-string v0, "Injection"

    return-object v0

    .line 1845
    :cond_52
    const-string v0, "Drink"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_53

    const-string v0, "EnergyDrink"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v1, 0x36

    const/16 v2, 0xaf

    const/16 v3, 0xe3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1846
    const-string v0, "Energy Drink"

    return-object v0

    .line 1849
    :cond_53
    const-string v0, "Firstaid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_54

    const-string v0, "FirstAid"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v2, 0xc2

    const/16 v3, 0xbc

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1850
    const-string v0, "FirstAid"

    return-object v0

    .line 1853
    :cond_54
    const-string v0, "Bandage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_55

    const-string v0, "Bandage"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v1, 0x2b

    const/16 v2, 0xbd

    const/16 v3, 0x30

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1854
    const-string v0, "Bandage"

    return-object v0

    .line 1857
    :cond_55
    const-string v0, "FirstAidbox"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_56

    const-string v0, "MedKit"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v1, 0xab

    const/4 v2, 0x6

    invoke-virtual {v0, v4, v7, v1, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1858
    const-string v0, "Medkit"

    return-object v0

    .line 1862
    :cond_56
    const-string v0, "Grenade_Stun"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_57

    const-string v0, "Stun"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v1, 0xcc

    const/16 v2, 0xbe

    invoke-virtual {v0, v4, v1, v5, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1863
    const-string v0, "Stun"

    return-object v0

    .line 1866
    :cond_57
    const-string v0, "Grenade_Shoulei"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_58

    const-string v0, "Grenade"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/4 v1, 0x2

    const/16 v2, 0x4d

    const/4 v3, 0x4

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1867
    const-string v0, "Grenade"

    return-object v0

    .line 1870
    :cond_58
    const-string v0, "Grenade_Smoke"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_59

    const-string v0, "Smoke"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1871
    const-string v0, "Smoke"

    return-object v0

    .line 1874
    :cond_59
    const-string v0, "Grenade_Burn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5a

    const-string v0, "Molotov"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v1, 0xe6

    const/16 v2, 0xaf

    const/16 v3, 0x40

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1875
    const-string v0, "Molotov"

    return-object v0

    .line 1879
    :cond_5a
    const-string v0, "Large_FlashHider"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5b

    const-string v0, "Flash Hider Ar"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v1, 0xd5

    const/16 v2, 0x82

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1880
    const-string v0, "Flash Hider Ar"

    return-object v0

    .line 1883
    :cond_5b
    const-string v0, "QK_Large_C"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5c

    const-string v0, "Compensator Ar"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v1, 0xd5

    const/16 v2, 0x82

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1884
    const-string v0, "Compensator Ar"

    return-object v0

    .line 1887
    :cond_5c
    const-string v0, "Mid_FlashHider"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5d

    const-string v0, "Flash Hider SMG"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v1, 0xd5

    const/16 v2, 0x82

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1888
    const-string v0, "Flash Hider SMG"

    return-object v0

    .line 1891
    :cond_5d
    const-string v0, "QT_A_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0xde

    if-eqz v0, :cond_5e

    const-string v0, "Tactical Stock"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v2, 0x9e

    const/16 v3, 0xc3

    invoke-virtual {v0, v4, v2, v1, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1892
    const-string v0, "Tactical Stock"

    return-object v0

    .line 1895
    :cond_5e
    const-string v0, "DuckBill"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5f

    const-string v0, "Duckbill"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v2, 0x9e

    const/16 v3, 0xc3

    invoke-virtual {v0, v4, v2, v1, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1896
    const-string v0, "DuckBill"

    return-object v0

    .line 1899
    :cond_5f
    const-string v0, "Sniper_FlashHider"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_60

    const-string v0, "Flash Hider Sniper"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_60

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v2, 0x9e

    const/16 v3, 0xc3

    invoke-virtual {v0, v4, v2, v1, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1900
    const-string v0, "Flash Hider Sniper"

    return-object v0

    .line 1903
    :cond_60
    const-string v0, "Mid_Suppressor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_61

    const-string v0, "Suppressor SMG"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v2, 0x9e

    const/16 v3, 0xc3

    invoke-virtual {v0, v4, v2, v1, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1904
    const-string v0, "Suppressor SMG"

    return-object v0

    .line 1907
    :cond_61
    const-string v0, "Choke"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_62

    const-string v0, "Choke"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v2, 0x9b

    const/16 v3, 0xbd

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1908
    const-string v0, "Choke"

    return-object v0

    .line 1911
    :cond_62
    const-string v0, "QT_UZI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_63

    const-string v0, "Stock Micro UZI"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v2, 0x9b

    const/16 v3, 0xbd

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1912
    const-string v0, "Stock Micro UZI"

    return-object v0

    .line 1915
    :cond_63
    const-string v0, "QK_Sniper"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_64

    const-string v0, "Compensator Sniper"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_64

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v1, 0x3c

    const/16 v2, 0xc2

    invoke-virtual {v0, v4, v1, v3, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1916
    const-string v0, "Compensator Sniper"

    return-object v0

    .line 1919
    :cond_64
    const-string v0, "Sniper_Suppressor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_65

    const-string v0, "Suppressor Sniper"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v1, 0x3c

    const/16 v2, 0xc2

    invoke-virtual {v0, v4, v1, v3, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1920
    const-string v0, "Suppressor Sniper"

    return-object v0

    .line 1923
    :cond_65
    const-string v0, "Large_Suppressor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_66

    const-string v0, "Suppressor Ar"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v1, 0x3c

    const/16 v2, 0xc2

    invoke-virtual {v0, v4, v1, v3, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1924
    const-string v0, "Suppressor Ar"

    return-object v0

    .line 1928
    :cond_66
    const-string v0, "Sniper_EQ_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_67

    const-string v0, "Extended QD Sniper"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v2, 0x8c

    invoke-virtual {v0, v4, v5, v2, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1929
    const-string v0, "Ex.Qd.Sniper"

    return-object v0

    .line 1932
    :cond_67
    const-string v0, "Sniper_E_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v3, 0xd1

    const/16 v8, 0xa3

    if-eqz v0, :cond_68

    const-string v0, "Extended Mag Sniper"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v5, v8, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1933
    const-string v0, "Ex.Sniper"

    return-object v0

    .line 1936
    :cond_68
    const-string v0, "Sniper_Q_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_69

    const-string v0, "QuickDraw Mag Sniper"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v5, v8, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1937
    const-string v0, "Qd.Sniper"

    return-object v0

    .line 1940
    :cond_69
    const-string v0, "Large_EQ_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6a

    const-string v0, "Extended QD Ar"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v2, 0x8c

    invoke-virtual {v0, v4, v5, v2, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1941
    const-string v0, "Extended QD Ar"

    return-object v0

    .line 1944
    :cond_6a
    const-string v0, "Large_E_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6b

    const-string v0, "Extended Mag Ar"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v5, v8, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1945
    const-string v0, "Extended Mag Ar"

    return-object v0

    .line 1948
    :cond_6b
    const-string v0, "Large_Q_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6c

    const-string v0, "QuickDraw Mag Ar"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v5, v8, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1949
    const-string v0, "QuickDraw Mag Ar"

    return-object v0

    .line 1952
    :cond_6c
    const-string v0, "Mid_EQ_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6d

    const-string v0, "Extended QD SMG"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v2, 0x8c

    invoke-virtual {v0, v4, v5, v2, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1953
    const-string v0, "Ex.Qd.SMG"

    return-object v0

    .line 1956
    :cond_6d
    const-string v0, "Mid_E_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6e

    const-string v0, "Extended Mag SMG"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v5, v8, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1957
    const-string v0, "Ex.SMG"

    return-object v0

    .line 1960
    :cond_6e
    const-string v0, "Mid_Q_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6f

    const-string v0, "QuickDraw Mag SMG"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v5, v8, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1961
    const-string v0, "Qd.SMG"

    return-object v0

    .line 1964
    :cond_6f
    const-string v0, "Crossbow_Q"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_70

    const-string v0, "Quiver CrossBow"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_70

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v1, 0x94

    const/16 v2, 0x79

    invoke-virtual {v0, v4, v1, v2, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1965
    const-string v0, "Quiver CrossBow"

    return-object v0

    .line 1968
    :cond_70
    const-string v0, "ZDD_Sniper"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_71

    const-string v0, "Bullet Loop"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_71

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v1, 0x94

    const/16 v2, 0x79

    invoke-virtual {v0, v4, v1, v2, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1969
    const-string v0, "Bullet Loop"

    return-object v0

    .line 1973
    :cond_71
    const-string v0, "ThumbGrip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_72

    const-string v0, "Thumb Grip"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_72

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v1, 0x94

    const/16 v2, 0x79

    invoke-virtual {v0, v4, v1, v2, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1974
    const-string v0, "Thumb Grip"

    return-object v0

    .line 1977
    :cond_72
    const-string v0, "Lasersight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_73

    const-string v0, "Laser Sight"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v1, 0x94

    const/16 v2, 0x79

    invoke-virtual {v0, v4, v1, v2, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1978
    const-string v0, "Laser Sight"

    return-object v0

    .line 1981
    :cond_73
    const-string v0, "Angled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v3, 0xdb

    if-eqz v0, :cond_74

    const-string v0, "Angled Grip"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_74

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1982
    const-string v0, "Angled Grip"

    return-object v0

    .line 1985
    :cond_74
    const-string v0, "LightGrip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_75

    const-string v0, "Light Grip"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1986
    const-string v0, "Light Grip"

    return-object v0

    .line 1989
    :cond_75
    const-string v0, "Vertical"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_76

    const-string v0, "Vertical Grip"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_76

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1990
    const-string v0, "Vertical Grip"

    return-object v0

    .line 1993
    :cond_76
    const-string v0, "HalfGrip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_77

    const-string v0, "Half Grip"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_77

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v2, 0x9b

    const/16 v3, 0xbd

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1994
    const-string v0, "Half Grip"

    return-object v0

    .line 1998
    :cond_77
    const-string v0, "GasCan"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_78

    const-string v0, "Gas Can"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_78

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v1, 0x8f

    const/16 v2, 0xcb

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1999
    const-string v0, "Gas Can"

    return-object v0

    .line 2002
    :cond_78
    const-string v0, "Mid_Compensator"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_79

    const-string v0, "Compensator SMG"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_79

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 2003
    const-string v0, "Compensator SMG"

    return-object v0

    .line 2007
    :cond_79
    const-string v0, "Flaregun"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7a

    const-string v0, "FlareGun"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v1, 0xf2

    const/16 v2, 0x9f

    invoke-virtual {v0, v4, v1, v6, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 2008
    const-string v0, "Flare Gun"

    return-object v0

    .line 2010
    :cond_7a
    const-string v0, "Ammo_Flare"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7b

    const-string v0, "FlareGun"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v1, 0xf2

    const/16 v2, 0x9f

    invoke-virtual {v0, v4, v1, v6, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 2011
    const-string v0, "Flare Gun"

    return-object v0

    .line 2014
    :cond_7b
    const-string v0, "Ghillie"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7c

    const-string v0, "Ghillie Suit"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v1, 0x8b

    const/16 v3, 0x43

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 2015
    const-string v0, "Ghillie Suit"

    return-object v0

    .line 2017
    :cond_7c
    const-string v0, "CheekPad"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7d

    const-string v0, "CheekPad"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v1, 0x70

    const/16 v2, 0x37

    const/16 v3, 0x37

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 2018
    const-string v0, "CheekPad"

    return-object v0

    .line 2020
    :cond_7d
    const-string v0, "PickUpListWrapperActor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7e

    const-string v0, "LootBox"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 2021
    const-string v0, "LootBox"

    return-object v0

    .line 2023
    :cond_7e
    const-string v0, "AirDropPlane"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7f

    const-string v0, "DropPlane"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v7, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 2024
    const-string v0, "DropPlane"

    return-object v0

    .line 2026
    :cond_7f
    const-string v0, "AirDropBox"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_80

    const-string v0, "AirDrop"

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->getConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_80

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    const/16 v1, 0xc8

    invoke-virtual {v0, v4, v7, v1, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 2027
    const-string v0, "AirDrop"

    return-object v0

    .line 2029
    :cond_80
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getOthNameByLayout()[I
    .locals 1

    .line 71
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x7f0800eb
        0x7f0800ea
        0x7f0800f0
        0x7f0800ef
        0x7f080112
        0x7f0800e6
        0x7f0800e0
    .end array-data
.end method

.method private getWeapon(I)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I

    .line 967
    sparse-switch p1, :sswitch_data_0

    .line 1382
    const-string v0, ""

    return-object v0

    .line 1290
    :sswitch_0
    const-string v0, "Knife"

    return-object v0

    .line 1283
    :sswitch_1
    const-string v0, "Panci"

    return-object v0

    .line 1276
    :sswitch_2
    const-string v0, "Sickle"

    return-object v0

    .line 1269
    :sswitch_3
    const-string v0, "Crowbar"

    return-object v0

    .line 1262
    :sswitch_4
    const-string v0, "Machete"

    return-object v0

    .line 1299
    :sswitch_5
    const-string v0, "Crossbow"

    return-object v0

    .line 1380
    :sswitch_6
    const-string v0, "Desert Angle"

    return-object v0

    .line 1345
    :sswitch_7
    const-string v0, "Scorpion"

    return-object v0

    .line 1331
    :sswitch_8
    const-string v0, "Sawed Off"

    return-object v0

    .line 1366
    :sswitch_9
    const-string v0, "R45"

    return-object v0

    .line 1359
    :sswitch_a
    const-string v0, "P18C"

    return-object v0

    .line 1338
    :sswitch_b
    const-string v0, "R1895"

    return-object v0

    .line 1373
    :sswitch_c
    const-string v0, "P1911"

    return-object v0

    .line 1352
    :sswitch_d
    const-string v0, "P92"

    return-object v0

    .line 1322
    :sswitch_e
    const-string v0, "MG3"

    return-object v0

    .line 1308
    :sswitch_f
    const-string v0, "DP28"

    return-object v0

    .line 1315
    :sswitch_10
    const-string v0, "M249"

    return-object v0

    .line 1253
    :sswitch_11
    const-string v0, "NS2000"

    return-object v0

    .line 1246
    :sswitch_12
    const-string v0, "M1014"

    return-object v0

    .line 1239
    :sswitch_13
    const-string v0, "DBS"

    return-object v0

    .line 1232
    :sswitch_14
    const-string v0, "S12K"

    return-object v0

    .line 1225
    :sswitch_15
    const-string v0, "S1897"

    return-object v0

    .line 1218
    :sswitch_16
    const-string v0, "S686"

    return-object v0

    .line 1209
    :sswitch_17
    const-string v0, "Mk12"

    return-object v0

    .line 1202
    :sswitch_18
    const-string v0, "Lynx AMR"

    return-object v0

    .line 1195
    :sswitch_19
    const-string v0, "Mosin"

    return-object v0

    .line 1188
    :sswitch_1a
    const-string v0, "QBU"

    return-object v0

    .line 1181
    :sswitch_1b
    const-string v0, "SLR"

    return-object v0

    .line 1174
    :sswitch_1c
    const-string v0, "Win94"

    return-object v0

    .line 1167
    :sswitch_1d
    const-string v0, "Mk14"

    return-object v0

    .line 1160
    :sswitch_1e
    const-string v0, "Mini14"

    return-object v0

    .line 1153
    :sswitch_1f
    const-string v0, "VSS"

    return-object v0

    .line 1146
    :sswitch_20
    const-string v0, "SKS"

    return-object v0

    .line 1139
    :sswitch_21
    const-string v0, "AWM"

    return-object v0

    .line 1132
    :sswitch_22
    const-string v0, "M24"

    return-object v0

    .line 1125
    :sswitch_23
    const-string v0, "Kar98k"

    return-object v0

    .line 1117
    :sswitch_24
    const-string v0, "P90"

    return-object v0

    .line 1110
    :sswitch_25
    const-string v0, "MP5K"

    return-object v0

    .line 1103
    :sswitch_26
    const-string v0, "Bizon"

    return-object v0

    .line 1096
    :sswitch_27
    const-string v0, "ThommyGun"

    return-object v0

    .line 1089
    :sswitch_28
    const-string v0, "Vector"

    return-object v0

    .line 1082
    :sswitch_29
    const-string v0, "UMP"

    return-object v0

    .line 1075
    :sswitch_2a
    const-string v0, "UZI"

    return-object v0

    .line 1066
    :sswitch_2b
    const-string v0, "ACE32"

    return-object v0

    .line 1059
    :sswitch_2c
    const-string v0, "ASM AR"

    return-object v0

    .line 1052
    :sswitch_2d
    const-string v0, "FAMAS"

    return-object v0

    .line 1045
    :sswitch_2e
    const-string v0, "Honey Badger"

    return-object v0

    .line 1038
    :sswitch_2f
    const-string v0, "G36C"

    return-object v0

    .line 1031
    :sswitch_30
    const-string v0, "Mk47"

    return-object v0

    .line 1024
    :sswitch_31
    const-string v0, "M762"

    return-object v0

    .line 1017
    :sswitch_32
    const-string v0, "QBZ"

    return-object v0

    .line 1010
    :sswitch_33
    const-string v0, "AUG"

    return-object v0

    .line 1003
    :sswitch_34
    const-string v0, "Groza"

    return-object v0

    .line 996
    :sswitch_35
    const-string v0, "M416"

    return-object v0

    .line 989
    :sswitch_36
    const-string v0, "SCAR-L"

    return-object v0

    .line 982
    :sswitch_37
    const-string v0, "M16A4"

    return-object v0

    .line 975
    :sswitch_38
    const-string v0, "AKM"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x18a89 -> :sswitch_38
        0x18a8a -> :sswitch_37
        0x18a8b -> :sswitch_36
        0x18a8c -> :sswitch_35
        0x18a8d -> :sswitch_34
        0x18a8e -> :sswitch_33
        0x18a8f -> :sswitch_32
        0x18a90 -> :sswitch_31
        0x18a91 -> :sswitch_30
        0x18a92 -> :sswitch_2f
        0x18a94 -> :sswitch_2e
        0x18aec -> :sswitch_2d
        0x18aed -> :sswitch_2c
        0x18aee -> :sswitch_2b
        0x18e71 -> :sswitch_2a
        0x18e72 -> :sswitch_29
        0x18e73 -> :sswitch_28
        0x18e74 -> :sswitch_27
        0x18e75 -> :sswitch_26
        0x18e77 -> :sswitch_25
        0x18ed9 -> :sswitch_24
        0x19259 -> :sswitch_23
        0x1925a -> :sswitch_22
        0x1925b -> :sswitch_21
        0x1925c -> :sswitch_20
        0x1925d -> :sswitch_1f
        0x1925e -> :sswitch_1e
        0x1925f -> :sswitch_1d
        0x19260 -> :sswitch_1c
        0x19261 -> :sswitch_1b
        0x19262 -> :sswitch_1a
        0x19263 -> :sswitch_19
        0x19264 -> :sswitch_18
        0x192bc -> :sswitch_17
        0x19641 -> :sswitch_16
        0x19642 -> :sswitch_15
        0x19643 -> :sswitch_14
        0x19644 -> :sswitch_13
        0x196a5 -> :sswitch_12
        0x196a6 -> :sswitch_11
        0x19a29 -> :sswitch_10
        0x19a2a -> :sswitch_f
        0x19a32 -> :sswitch_e
        0x19e11 -> :sswitch_d
        0x19e12 -> :sswitch_c
        0x19e13 -> :sswitch_b
        0x19e14 -> :sswitch_a
        0x19e15 -> :sswitch_9
        0x19e16 -> :sswitch_8
        0x19e18 -> :sswitch_7
        0x19e1a -> :sswitch_6
        0x1a1f9 -> :sswitch_5
        0x1a5e1 -> :sswitch_4
        0x1a5e2 -> :sswitch_3
        0x1a5e3 -> :sswitch_2
        0x1a5e4 -> :sswitch_1
        0x1a5e5 -> :sswitch_0
        0xf695b -> :sswitch_38
        0xf695c -> :sswitch_38
        0xf695d -> :sswitch_38
        0xf695e -> :sswitch_38
        0xf695f -> :sswitch_38
        0xf6965 -> :sswitch_37
        0xf6966 -> :sswitch_37
        0xf6967 -> :sswitch_37
        0xf6968 -> :sswitch_37
        0xf6969 -> :sswitch_37
        0xf696f -> :sswitch_36
        0xf6970 -> :sswitch_36
        0xf6971 -> :sswitch_36
        0xf6972 -> :sswitch_36
        0xf6973 -> :sswitch_36
        0xf6979 -> :sswitch_35
        0xf697a -> :sswitch_35
        0xf697b -> :sswitch_35
        0xf697c -> :sswitch_35
        0xf697d -> :sswitch_35
        0xf6983 -> :sswitch_34
        0xf6984 -> :sswitch_34
        0xf6985 -> :sswitch_34
        0xf6986 -> :sswitch_34
        0xf6987 -> :sswitch_34
        0xf698d -> :sswitch_33
        0xf698e -> :sswitch_33
        0xf698f -> :sswitch_33
        0xf6990 -> :sswitch_33
        0xf6991 -> :sswitch_33
        0xf6997 -> :sswitch_32
        0xf6998 -> :sswitch_32
        0xf6999 -> :sswitch_32
        0xf699a -> :sswitch_32
        0xf699b -> :sswitch_32
        0xf69a1 -> :sswitch_31
        0xf69a2 -> :sswitch_31
        0xf69a3 -> :sswitch_31
        0xf69a4 -> :sswitch_31
        0xf69a5 -> :sswitch_31
        0xf69ab -> :sswitch_30
        0xf69ac -> :sswitch_30
        0xf69ad -> :sswitch_30
        0xf69ae -> :sswitch_30
        0xf69af -> :sswitch_30
        0xf69b5 -> :sswitch_2f
        0xf69b6 -> :sswitch_2f
        0xf69b7 -> :sswitch_2f
        0xf69b8 -> :sswitch_2f
        0xf69b9 -> :sswitch_2f
        0xf69c9 -> :sswitch_2e
        0xf69ca -> :sswitch_2e
        0xf69cb -> :sswitch_2e
        0xf69cc -> :sswitch_2e
        0xf69cd -> :sswitch_2e
        0xf6d39 -> :sswitch_2d
        0xf6d3a -> :sswitch_2d
        0xf6d3b -> :sswitch_2d
        0xf6d3c -> :sswitch_2d
        0xf6d3d -> :sswitch_2d
        0xf6d43 -> :sswitch_2c
        0xf6d44 -> :sswitch_2c
        0xf6d45 -> :sswitch_2c
        0xf6d46 -> :sswitch_2c
        0xf6d47 -> :sswitch_2c
        0xf6d4d -> :sswitch_2b
        0xf6d4e -> :sswitch_2b
        0xf6d4f -> :sswitch_2b
        0xf6d50 -> :sswitch_2b
        0xf6d51 -> :sswitch_2b
        0xf906b -> :sswitch_2a
        0xf906c -> :sswitch_2a
        0xf906d -> :sswitch_2a
        0xf906e -> :sswitch_2a
        0xf906f -> :sswitch_2a
        0xf9075 -> :sswitch_29
        0xf9076 -> :sswitch_29
        0xf9077 -> :sswitch_29
        0xf9078 -> :sswitch_29
        0xf9079 -> :sswitch_29
        0xf907f -> :sswitch_28
        0xf9080 -> :sswitch_28
        0xf9081 -> :sswitch_28
        0xf9082 -> :sswitch_28
        0xf9083 -> :sswitch_28
        0xf9089 -> :sswitch_27
        0xf908a -> :sswitch_27
        0xf908b -> :sswitch_27
        0xf908c -> :sswitch_27
        0xf908d -> :sswitch_27
        0xf9093 -> :sswitch_26
        0xf9094 -> :sswitch_26
        0xf9095 -> :sswitch_26
        0xf9096 -> :sswitch_26
        0xf9097 -> :sswitch_26
        0xf90a7 -> :sswitch_25
        0xf90a8 -> :sswitch_25
        0xf90a9 -> :sswitch_25
        0xf90aa -> :sswitch_25
        0xf90ab -> :sswitch_25
        0xf947b -> :sswitch_24
        0xf947c -> :sswitch_24
        0xf947d -> :sswitch_24
        0xf947e -> :sswitch_24
        0xf947f -> :sswitch_24
        0xfb77b -> :sswitch_23
        0xfb77c -> :sswitch_23
        0xfb77d -> :sswitch_23
        0xfb77e -> :sswitch_23
        0xfb77f -> :sswitch_23
        0xfb785 -> :sswitch_22
        0xfb786 -> :sswitch_22
        0xfb787 -> :sswitch_22
        0xfb788 -> :sswitch_22
        0xfb789 -> :sswitch_22
        0xfb78f -> :sswitch_21
        0xfb790 -> :sswitch_21
        0xfb791 -> :sswitch_21
        0xfb792 -> :sswitch_21
        0xfb793 -> :sswitch_21
        0xfb799 -> :sswitch_20
        0xfb79a -> :sswitch_20
        0xfb79b -> :sswitch_20
        0xfb79c -> :sswitch_20
        0xfb79d -> :sswitch_20
        0xfb7a3 -> :sswitch_1f
        0xfb7a4 -> :sswitch_1f
        0xfb7a5 -> :sswitch_1f
        0xfb7a6 -> :sswitch_1f
        0xfb7a7 -> :sswitch_1f
        0xfb7ad -> :sswitch_1e
        0xfb7ae -> :sswitch_1e
        0xfb7af -> :sswitch_1e
        0xfb7b0 -> :sswitch_1e
        0xfb7b1 -> :sswitch_1e
        0xfb7b7 -> :sswitch_1d
        0xfb7b8 -> :sswitch_1d
        0xfb7b9 -> :sswitch_1d
        0xfb7ba -> :sswitch_1d
        0xfb7bb -> :sswitch_1d
        0xfb7c1 -> :sswitch_1c
        0xfb7c2 -> :sswitch_1c
        0xfb7c3 -> :sswitch_1c
        0xfb7c4 -> :sswitch_1c
        0xfb7c5 -> :sswitch_1c
        0xfb7cb -> :sswitch_1b
        0xfb7cc -> :sswitch_1b
        0xfb7cd -> :sswitch_1b
        0xfb7ce -> :sswitch_1b
        0xfb7cf -> :sswitch_1b
        0xfb7d5 -> :sswitch_1a
        0xfb7d6 -> :sswitch_1a
        0xfb7d7 -> :sswitch_1a
        0xfb7d8 -> :sswitch_1a
        0xfb7d9 -> :sswitch_1a
        0xfb7df -> :sswitch_19
        0xfb7e0 -> :sswitch_19
        0xfb7e1 -> :sswitch_19
        0xfb7e2 -> :sswitch_19
        0xfb7e3 -> :sswitch_19
        0xfb7e9 -> :sswitch_18
        0xfb7ea -> :sswitch_18
        0xfb7eb -> :sswitch_18
        0xfb7ec -> :sswitch_18
        0xfb7ed -> :sswitch_18
        0xfbb59 -> :sswitch_17
        0xfbb5a -> :sswitch_17
        0xfbb5b -> :sswitch_17
        0xfbb5c -> :sswitch_17
        0xfbb5d -> :sswitch_17
        0xfde8b -> :sswitch_16
        0xfde8c -> :sswitch_16
        0xfde8d -> :sswitch_16
        0xfde8e -> :sswitch_16
        0xfde8f -> :sswitch_16
        0xfde95 -> :sswitch_15
        0xfde96 -> :sswitch_15
        0xfde97 -> :sswitch_15
        0xfde98 -> :sswitch_15
        0xfde99 -> :sswitch_15
        0xfde9f -> :sswitch_14
        0xfdea0 -> :sswitch_14
        0xfdea1 -> :sswitch_14
        0xfdea2 -> :sswitch_14
        0xfdea3 -> :sswitch_14
        0xfdea9 -> :sswitch_13
        0xfdeaa -> :sswitch_13
        0xfdeab -> :sswitch_13
        0xfdeac -> :sswitch_13
        0xfdead -> :sswitch_13
        0xfe273 -> :sswitch_12
        0xfe274 -> :sswitch_12
        0xfe275 -> :sswitch_12
        0xfe276 -> :sswitch_12
        0xfe277 -> :sswitch_12
        0xfe27d -> :sswitch_11
        0xfe27e -> :sswitch_11
        0xfe27f -> :sswitch_11
        0xfe280 -> :sswitch_11
        0xfe281 -> :sswitch_11
        0x10059b -> :sswitch_10
        0x10059c -> :sswitch_10
        0x10059d -> :sswitch_10
        0x10059e -> :sswitch_10
        0x10059f -> :sswitch_10
        0x1005a5 -> :sswitch_f
        0x1005a6 -> :sswitch_f
        0x1005a7 -> :sswitch_f
        0x1005a8 -> :sswitch_f
        0x1005a9 -> :sswitch_f
        0x1005f5 -> :sswitch_e
        0x1005f6 -> :sswitch_e
        0x1005f7 -> :sswitch_e
        0x1005f8 -> :sswitch_e
        0x1005f9 -> :sswitch_e
        0x102cab -> :sswitch_d
        0x102cac -> :sswitch_d
        0x102cad -> :sswitch_d
        0x102cae -> :sswitch_d
        0x102caf -> :sswitch_d
        0x102cb5 -> :sswitch_c
        0x102cb6 -> :sswitch_c
        0x102cb7 -> :sswitch_c
        0x102cb8 -> :sswitch_c
        0x102cb9 -> :sswitch_c
        0x102cbf -> :sswitch_b
        0x102cc0 -> :sswitch_b
        0x102cc1 -> :sswitch_b
        0x102cc2 -> :sswitch_b
        0x102cc3 -> :sswitch_b
        0x102cc9 -> :sswitch_a
        0x102cca -> :sswitch_a
        0x102ccb -> :sswitch_a
        0x102ccc -> :sswitch_a
        0x102ccd -> :sswitch_a
        0x102cd3 -> :sswitch_9
        0x102cd4 -> :sswitch_9
        0x102cd5 -> :sswitch_9
        0x102cd6 -> :sswitch_9
        0x102cd7 -> :sswitch_9
        0x102cdd -> :sswitch_8
        0x102cde -> :sswitch_8
        0x102cdf -> :sswitch_8
        0x102ce0 -> :sswitch_8
        0x102ce1 -> :sswitch_8
        0x102cf1 -> :sswitch_7
        0x102cf2 -> :sswitch_7
        0x102cf3 -> :sswitch_7
        0x102cf4 -> :sswitch_7
        0x102cf5 -> :sswitch_7
        0x102d05 -> :sswitch_6
        0x102d06 -> :sswitch_6
        0x102d07 -> :sswitch_6
        0x102d08 -> :sswitch_6
        0x102d09 -> :sswitch_6
        0x1053bb -> :sswitch_5
        0x1053bc -> :sswitch_5
        0x1053bd -> :sswitch_5
        0x1053be -> :sswitch_5
        0x1053bf -> :sswitch_5
        0x107acb -> :sswitch_4
        0x107acc -> :sswitch_4
        0x107acd -> :sswitch_4
        0x107ace -> :sswitch_4
        0x107acf -> :sswitch_4
        0x107ad5 -> :sswitch_3
        0x107ad6 -> :sswitch_3
        0x107ad7 -> :sswitch_3
        0x107ad8 -> :sswitch_3
        0x107ad9 -> :sswitch_3
        0x107adf -> :sswitch_2
        0x107ae0 -> :sswitch_2
        0x107ae1 -> :sswitch_2
        0x107ae2 -> :sswitch_2
        0x107ae3 -> :sswitch_2
        0x107ae9 -> :sswitch_1
        0x107aea -> :sswitch_1
        0x107aeb -> :sswitch_1
        0x107aec -> :sswitch_1
        0x107aed -> :sswitch_1
        0x107af3 -> :sswitch_0
        0x107af4 -> :sswitch_0
        0x107af5 -> :sswitch_0
        0x107af6 -> :sswitch_0
        0x107af7 -> :sswitch_0
    .end sparse-switch
.end method

.method private getWeaponIcon(I)I
    .locals 1
    .param p1, "id"    # I

    .line 1387
    const v0, 0x18a8e

    if-ne p1, v0, :cond_0

    .line 1388
    const v0, 0x7f08009b

    return v0

    .line 1389
    :cond_0
    const v0, 0x18a90

    if-ne p1, v0, :cond_1

    .line 1390
    const v0, 0x7f08009d

    return v0

    .line 1391
    :cond_1
    const v0, 0x18a8b

    if-ne p1, v0, :cond_2

    .line 1392
    const v0, 0x7f080098

    return v0

    .line 1393
    :cond_2
    const v0, 0x18a8c

    if-ne p1, v0, :cond_3

    .line 1394
    const v0, 0x7f080099

    return v0

    .line 1395
    :cond_3
    const v0, 0x18a8a

    if-ne p1, v0, :cond_4

    .line 1396
    const v0, 0x7f080097

    return v0

    .line 1397
    :cond_4
    const v0, 0x18a91

    if-ne p1, v0, :cond_5

    .line 1398
    const v0, 0x7f08009e

    return v0

    .line 1399
    :cond_5
    const v0, 0x18a92

    if-ne p1, v0, :cond_6

    .line 1400
    const v0, 0x7f08009f

    return v0

    .line 1401
    :cond_6
    const v0, 0x18a8f

    if-ne p1, v0, :cond_7

    .line 1402
    const v0, 0x7f08009c

    return v0

    .line 1403
    :cond_7
    const v0, 0x18a89

    if-ne p1, v0, :cond_8

    .line 1404
    const v0, 0x7f080096

    return v0

    .line 1405
    :cond_8
    const v0, 0x18a8d

    if-ne p1, v0, :cond_9

    .line 1406
    const v0, 0x7f08009a

    return v0

    .line 1407
    :cond_9
    const v0, 0x18e75

    if-ne p1, v0, :cond_a

    .line 1408
    const v0, 0x7f0800a4

    return v0

    .line 1409
    :cond_a
    const v0, 0x18e74

    if-ne p1, v0, :cond_b

    .line 1410
    const v0, 0x7f0800a3

    return v0

    .line 1411
    :cond_b
    const v0, 0x18e77

    if-ne p1, v0, :cond_c

    .line 1412
    const v0, 0x7f0800a5

    return v0

    .line 1413
    :cond_c
    const v0, 0x18e72

    if-ne p1, v0, :cond_d

    .line 1414
    const v0, 0x7f0800a1

    return v0

    .line 1415
    :cond_d
    const v0, 0x18e73

    if-ne p1, v0, :cond_e

    .line 1416
    const v0, 0x7f0800a2

    return v0

    .line 1417
    :cond_e
    const v0, 0x18e71

    if-ne p1, v0, :cond_f

    .line 1418
    const v0, 0x7f0800a0

    return v0

    .line 1419
    :cond_f
    const v0, 0x19a2a

    if-ne p1, v0, :cond_10

    .line 1420
    const v0, 0x7f0800b5

    return v0

    .line 1421
    :cond_10
    const v0, 0x19a29

    if-ne p1, v0, :cond_11

    .line 1422
    const v0, 0x7f0800b4

    return v0

    .line 1425
    :cond_11
    const v0, 0x1925b

    if-ne p1, v0, :cond_12

    .line 1426
    const v0, 0x7f0800a8

    return v0

    .line 1427
    :cond_12
    const v0, 0x19262

    if-ne p1, v0, :cond_13

    .line 1428
    const v0, 0x7f0800af

    return v0

    .line 1429
    :cond_13
    const v0, 0x19261

    if-ne p1, v0, :cond_14

    .line 1430
    const v0, 0x7f0800ae

    return v0

    .line 1431
    :cond_14
    const v0, 0x1925c

    if-ne p1, v0, :cond_15

    .line 1432
    const v0, 0x7f0800a9

    return v0

    .line 1433
    :cond_15
    const v0, 0x1925e

    if-ne p1, v0, :cond_16

    .line 1434
    const v0, 0x7f0800ab

    return v0

    .line 1435
    :cond_16
    const v0, 0x1925a

    if-ne p1, v0, :cond_17

    .line 1436
    const v0, 0x7f0800a7

    return v0

    .line 1437
    :cond_17
    const v0, 0x19259

    if-ne p1, v0, :cond_18

    .line 1438
    const v0, 0x7f0800a6

    return v0

    .line 1439
    :cond_18
    const v0, 0x1925d

    if-ne p1, v0, :cond_19

    .line 1440
    const v0, 0x7f0800aa

    return v0

    .line 1441
    :cond_19
    const v0, 0x19260

    if-ne p1, v0, :cond_1a

    .line 1442
    const v0, 0x7f0800ad

    return v0

    .line 1443
    :cond_1a
    const v0, 0x1925f

    if-ne p1, v0, :cond_1b

    .line 1444
    const v0, 0x7f0800ac

    return v0

    .line 1447
    :cond_1b
    const v0, 0x19643

    if-ne p1, v0, :cond_1c

    .line 1448
    const v0, 0x7f0800b2

    return v0

    .line 1449
    :cond_1c
    const v0, 0x19644

    if-ne p1, v0, :cond_1d

    .line 1450
    const v0, 0x7f0800b3

    return v0

    .line 1451
    :cond_1d
    const v0, 0x19641

    if-ne p1, v0, :cond_1e

    .line 1452
    const v0, 0x7f0800b0

    return v0

    .line 1453
    :cond_1e
    const v0, 0x19642

    if-ne p1, v0, :cond_1f

    .line 1454
    const v0, 0x7f0800b1

    return v0

    .line 1455
    :cond_1f
    const v0, 0x1a5e3

    if-ne p1, v0, :cond_20

    .line 1456
    const v0, 0x7f0800c1

    return v0

    .line 1457
    :cond_20
    const v0, 0x1a5e1

    if-ne p1, v0, :cond_21

    .line 1458
    const v0, 0x7f0800bf

    return v0

    .line 1459
    :cond_21
    const v0, 0x1a5e2

    if-ne p1, v0, :cond_22

    .line 1460
    const v0, 0x7f0800c0

    return v0

    .line 1461
    :cond_22
    const v0, 0x1a1f9

    if-ne p1, v0, :cond_23

    .line 1462
    const v0, 0x7f0800be

    return v0

    .line 1463
    :cond_23
    const v0, 0x1a5e4

    if-ne p1, v0, :cond_24

    .line 1464
    const v0, 0x7f0800c2

    return v0

    .line 1467
    :cond_24
    const v0, 0x19e16

    if-ne p1, v0, :cond_25

    .line 1468
    const v0, 0x7f0800bb

    return v0

    .line 1469
    :cond_25
    const v0, 0x19e13

    if-ne p1, v0, :cond_26

    .line 1470
    const v0, 0x7f0800b8

    return v0

    .line 1471
    :cond_26
    const v0, 0x19e18

    if-ne p1, v0, :cond_27

    .line 1472
    const v0, 0x7f0800bc

    return v0

    .line 1473
    :cond_27
    const v0, 0x19e11

    if-ne p1, v0, :cond_28

    .line 1474
    const v0, 0x7f0800b6

    return v0

    .line 1475
    :cond_28
    const v0, 0x19e14

    if-ne p1, v0, :cond_29

    .line 1476
    const v0, 0x7f0800b9

    return v0

    .line 1477
    :cond_29
    const v0, 0x19e15

    if-ne p1, v0, :cond_2a

    .line 1478
    const v0, 0x7f0800ba

    return v0

    .line 1479
    :cond_2a
    const v0, 0x19e12

    if-ne p1, v0, :cond_2b

    .line 1480
    const v0, 0x7f0800b7

    return v0

    .line 1481
    :cond_2b
    const v0, 0x19e1a

    if-ne p1, v0, :cond_2c

    .line 1482
    const v0, 0x7f0800bd

    return v0

    .line 1484
    :cond_2c
    const/4 v0, 0x0

    return v0
.end method

.method private handleFuelHealthText(Landroid/graphics/Canvas;FFFFF)V
    .locals 23
    .param p1, "cvs"    # Landroid/graphics/Canvas;
    .param p2, "posX"    # F
    .param p3, "posY"    # F
    .param p4, "fuel"    # F
    .param p5, "health"    # F
    .param p6, "size"    # F

    .line 699
    move-object/from16 v0, p0

    iget-object v1, v0, Lpubgm/loader/floating/ESPView;->mStrokePaint:Landroid/graphics/Paint;

    const/16 v2, 0x32

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 700
    const/high16 v1, 0x42340000    # 45.0f

    sub-float v5, p2, v1

    const/high16 v12, 0x41980000    # 19.0f

    add-float v6, p3, v12

    const/high16 v13, 0x42480000    # 50.0f

    add-float v7, p2, v13

    const/high16 v14, 0x41c80000    # 25.0f

    add-float v8, p3, v14

    iget-object v11, v0, Lpubgm/loader/floating/ESPView;->mStrokePaint:Landroid/graphics/Paint;

    const/high16 v9, 0x40400000    # 3.0f

    const/high16 v10, 0x40400000    # 3.0f

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 701
    iget-object v4, v0, Lpubgm/loader/floating/ESPView;->mFilledPaint:Landroid/graphics/Paint;

    const/16 v5, 0x64

    const/16 v6, 0xff

    invoke-virtual {v4, v5, v6, v6, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 702
    sub-float v16, p2, v1

    add-float v17, p3, v12

    const/high16 v4, 0x42200000    # 40.0f

    sub-float v7, p2, v4

    const/high16 v8, 0x42b40000    # 90.0f

    mul-float v9, p4, v8

    const/high16 v10, 0x42c80000    # 100.0f

    div-float/2addr v9, v10

    add-float v18, v7, v9

    add-float v19, p3, v14

    iget-object v7, v0, Lpubgm/loader/floating/ESPView;->mFilledPaint:Landroid/graphics/Paint;

    const/high16 v20, 0x40400000    # 3.0f

    const/high16 v21, 0x40400000    # 3.0f

    move-object/from16 v15, p1

    move-object/from16 v22, v7

    invoke-virtual/range {v15 .. v22}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 703
    iget-object v7, v0, Lpubgm/loader/floating/ESPView;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 704
    sub-float v15, p2, v1

    const/high16 v2, 0x41e80000    # 29.0f

    add-float v16, p3, v2

    add-float v17, p2, v13

    const/high16 v3, 0x420c0000    # 35.0f

    add-float v18, p3, v3

    iget-object v7, v0, Lpubgm/loader/floating/ESPView;->mStrokePaint:Landroid/graphics/Paint;

    const/high16 v19, 0x40400000    # 3.0f

    move-object/from16 v14, p1

    move-object/from16 v21, v7

    invoke-virtual/range {v14 .. v21}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 705
    iget-object v7, v0, Lpubgm/loader/floating/ESPView;->mFilledPaint:Landroid/graphics/Paint;

    const/16 v9, 0x2d

    const/16 v11, 0x1e

    invoke-virtual {v7, v5, v6, v9, v11}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 706
    sub-float v13, p2, v1

    add-float v14, p3, v2

    sub-float v1, p2, v4

    mul-float v2, p5, v8

    div-float/2addr v2, v10

    add-float v15, v1, v2

    add-float v16, p3, v3

    iget-object v1, v0, Lpubgm/loader/floating/ESPView;->mFilledPaint:Landroid/graphics/Paint;

    const/high16 v17, 0x40400000    # 3.0f

    const/high16 v18, 0x40400000    # 3.0f

    move-object/from16 v12, p1

    move-object/from16 v19, v1

    invoke-virtual/range {v12 .. v19}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 707
    return-void
.end method

.method public static scale(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 17
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .line 2089
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    move/from16 v1, p1

    int-to-float v2, v1

    div-float/2addr v0, v2

    .line 2090
    .local v0, "widthRatio":F
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    move/from16 v3, p2

    int-to-float v4, v3

    div-float/2addr v2, v4

    .line 2092
    .local v2, "heightRatio":F
    cmpl-float v4, v0, v2

    if-ltz v4, :cond_0

    .line 2093
    move/from16 v4, p1

    .line 2094
    .local v4, "width":I
    int-to-float v5, v4

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .local v5, "height":I
    goto :goto_0

    .line 2096
    .end local v4    # "width":I
    .end local v5    # "height":I
    :cond_0
    move/from16 v5, p2

    .line 2097
    .restart local v5    # "height":I
    int-to-float v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v4, v6

    float-to-int v4, v4

    .line 2099
    .restart local v4    # "width":I
    :goto_0
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2101
    .local v6, "scaledBitmap":Landroid/graphics/Bitmap;
    int-to-float v7, v4

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    .line 2102
    .local v7, "ratioX":F
    int-to-float v8, v5

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    .line 2103
    .local v8, "ratioY":F
    int-to-float v9, v4

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    .line 2104
    .local v9, "middleX":F
    int-to-float v11, v5

    div-float/2addr v11, v10

    .line 2105
    .local v11, "middleY":F
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 2106
    .local v10, "scaleMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v10, v7, v8, v9, v11}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 2108
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2109
    .local v12, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v12, v10}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 2110
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    const/4 v14, 0x2

    div-int/2addr v13, v14

    int-to-float v13, v13

    sub-float v13, v9, v13

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    div-int/2addr v15, v14

    int-to-float v15, v15

    sub-float v15, v11, v15

    move/from16 v16, v0

    .end local v0    # "widthRatio":F
    .local v16, "widthRatio":F
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v14}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v14, p0

    invoke-virtual {v12, v14, v13, v15, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2111
    return-object v6
.end method


# virtual methods
.method public ClearCanvas(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "cvs"    # Landroid/graphics/Canvas;

    .line 318
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 319
    return-void
.end method

.method public DrawCircle(Landroid/graphics/Canvas;IIIIFFFF)V
    .locals 1
    .param p1, "cvs"    # Landroid/graphics/Canvas;
    .param p2, "a"    # I
    .param p3, "r"    # I
    .param p4, "g"    # I
    .param p5, "b"    # I
    .param p6, "posX"    # F
    .param p7, "posY"    # F
    .param p8, "radius"    # F
    .param p9, "stroke"    # F

    .line 713
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 714
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 715
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p6, p7, p8, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 716
    return-void
.end method

.method public DrawCurveRect(Landroid/graphics/Canvas;IIIIFFFFF)V
    .locals 12
    .param p1, "cvs"    # Landroid/graphics/Canvas;
    .param p2, "a"    # I
    .param p3, "r"    # I
    .param p4, "g"    # I
    .param p5, "b"    # I
    .param p6, "stroke"    # F
    .param p7, "x"    # F
    .param p8, "y"    # F
    .param p9, "width"    # F
    .param p10, "height"    # F

    .line 336
    move-object v0, p0

    iget-object v1, v0, Lpubgm/loader/floating/ESPView;->mStrokePaint:Landroid/graphics/Paint;

    move/from16 v2, p6

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 337
    iget-object v1, v0, Lpubgm/loader/floating/ESPView;->mStrokePaint:Landroid/graphics/Paint;

    invoke-static/range {p3 .. p5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 338
    iget-object v1, v0, Lpubgm/loader/floating/ESPView;->mStrokePaint:Landroid/graphics/Paint;

    move v3, p2

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 339
    iget-object v11, v0, Lpubgm/loader/floating/ESPView;->mStrokePaint:Landroid/graphics/Paint;

    const/high16 v9, 0x40a00000    # 5.0f

    const/high16 v10, 0x40a00000    # 5.0f

    move-object v4, p1

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 340
    return-void
.end method

.method public DrawCustom(Landroid/graphics/Canvas;IIIILjava/lang/String;FFF)V
    .locals 2
    .param p1, "cvs"    # Landroid/graphics/Canvas;
    .param p2, "a"    # I
    .param p3, "r"    # I
    .param p4, "g"    # I
    .param p5, "b"    # I
    .param p6, "txt"    # Ljava/lang/String;
    .param p7, "posX"    # F
    .param p8, "posY"    # F
    .param p9, "size"    # F

    .line 399
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTexturePaint:Landroid/graphics/Paint;

    invoke-static {p3, p4, p5}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 400
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTexturePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 401
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTexturePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 402
    sget-object v0, Lpubgm/loader/activity/MainActivity;->modeselect:Ljava/lang/String;

    iget-object v1, p0, Lpubgm/loader/floating/ESPView;->mTexturePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p7, p8, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 403
    return-void
.end method

.method public DrawDeadBoxItems(Landroid/graphics/Canvas;IIIILjava/lang/String;FFF)V
    .locals 3
    .param p1, "cvs"    # Landroid/graphics/Canvas;
    .param p2, "a"    # I
    .param p3, "r"    # I
    .param p4, "g"    # I
    .param p5, "b"    # I
    .param p6, "txt"    # Ljava/lang/String;
    .param p7, "posX"    # F
    .param p8, "posY"    # F
    .param p9, "size"    # F

    .line 518
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mLootBoxPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 519
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mLootBoxPaint:Landroid/graphics/Paint;

    const-string v1, "#FF40CC7E"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 520
    const/high16 v0, 0x42700000    # 60.0f

    sub-float v0, p7, v0

    const/high16 v1, 0x41200000    # 10.0f

    sub-float v1, p8, v1

    iget-object v2, p0, Lpubgm/loader/floating/ESPView;->mLootBoxPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p6, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 521
    return-void
.end method

.method public DrawEnemyCount(Landroid/graphics/Canvas;IIIIIIII)V
    .locals 4
    .param p1, "cvs"    # Landroid/graphics/Canvas;
    .param p2, "a"    # I
    .param p3, "r"    # I
    .param p4, "g"    # I
    .param p5, "b"    # I
    .param p6, "x"    # I
    .param p7, "y"    # I
    .param p8, "width"    # I
    .param p9, "height"    # I

    .line 686
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    invoke-static {p3, p4, p5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const/4 v3, 0x1

    aput v2, v0, v3

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 687
    .local v0, "colors":[I
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 688
    .local v2, "mDrawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 689
    const/high16 v3, 0x42f00000    # 120.0f

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 690
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p6, p7, p8, p9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 691
    .local v3, "mRect":Landroid/graphics/Rect;
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 692
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 693
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 694
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 695
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 696
    return-void
.end method

.method public DrawFillCircle(Landroid/graphics/Canvas;IIIIFFFF)V
    .locals 1
    .param p1, "cvs"    # Landroid/graphics/Canvas;
    .param p2, "a"    # I
    .param p3, "r"    # I
    .param p4, "g"    # I
    .param p5, "b"    # I
    .param p6, "posX"    # F
    .param p7, "posY"    # F
    .param p8, "radius"    # F
    .param p9, "stroke"    # F

    .line 750
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mFilledPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 751
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mFilledPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 752
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mFilledPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p6, p7, p8, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 753
    return-void
.end method

.method public DrawFillRect(Landroid/graphics/Canvas;IIIIIIII)V
    .locals 4
    .param p1, "cvs"    # Landroid/graphics/Canvas;
    .param p2, "a"    # I
    .param p3, "r"    # I
    .param p4, "g"    # I
    .param p5, "b"    # I
    .param p6, "x"    # I
    .param p7, "y"    # I
    .param p8, "width"    # I
    .param p9, "height"    # I

    .line 421
    const/4 v0, 0x3

    new-array v0, v0, [I

    invoke-static {p2, p3, p4, p5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {p2, p3, p4, p5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    invoke-static {p2, p3, p4, p5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    const/4 v3, 0x2

    aput v1, v0, v3

    .line 422
    .local v0, "colors":[I
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v1, v3, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 423
    .local v1, "mDrawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 424
    const/high16 v3, 0x40c00000    # 6.0f

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 425
    const/high16 v3, 0x42f00000    # 120.0f

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 426
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p6, p7, p8, p9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 427
    .local v3, "mRect":Landroid/graphics/Rect;
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 428
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 429
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 430
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 431
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 432
    return-void
.end method

.method public DrawFilledCircle(Landroid/graphics/Canvas;IIIIFFF)V
    .locals 2
    .param p1, "cvs"    # Landroid/graphics/Canvas;
    .param p2, "a"    # I
    .param p3, "r"    # I
    .param p4, "g"    # I
    .param p5, "b"    # I
    .param p6, "posX"    # F
    .param p7, "posY"    # F
    .param p8, "radius"    # F

    .line 744
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mFilledPaint:Landroid/graphics/Paint;

    invoke-static {p3, p4, p5}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 745
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mFilledPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 746
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mFilledPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p6, p7, p8, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 747
    return-void
.end method

.method public DrawFilledCurve(Landroid/graphics/Canvas;IIIIIIII)V
    .locals 4
    .param p1, "cvs"    # Landroid/graphics/Canvas;
    .param p2, "a"    # I
    .param p3, "r"    # I
    .param p4, "g"    # I
    .param p5, "b"    # I
    .param p6, "x"    # I
    .param p7, "y"    # I
    .param p8, "width"    # I
    .param p9, "height"    # I

    .line 408
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    invoke-static {p3, p4, p5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const/4 v3, 0x1

    aput v2, v0, v3

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 409
    .local v0, "colors":[I
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 410
    .local v2, "mDrawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 411
    const/high16 v3, 0x42f00000    # 120.0f

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 412
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p6, p7, p8, p9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 413
    .local v3, "mRect":Landroid/graphics/Rect;
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 414
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 415
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 416
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 417
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 418
    return-void
.end method

.method public DrawFilledName(Landroid/graphics/Canvas;IIIIFFFF)V
    .locals 11
    .param p1, "cvs"    # Landroid/graphics/Canvas;
    .param p2, "a"    # I
    .param p3, "r"    # I
    .param p4, "g"    # I
    .param p5, "b"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "width"    # F
    .param p9, "height"    # F

    .line 924
    move-object v0, p0

    iget-object v1, v0, Lpubgm/loader/floating/ESPView;->mFilledPaint:Landroid/graphics/Paint;

    invoke-static/range {p3 .. p5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 925
    iget-object v1, v0, Lpubgm/loader/floating/ESPView;->mFilledPaint:Landroid/graphics/Paint;

    move v2, p2

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 926
    iget-object v10, v0, Lpubgm/loader/floating/ESPView;->mStrokePaint:Landroid/graphics/Paint;

    const/high16 v8, 0x40400000    # 3.0f

    const/high16 v9, 0x40400000    # 3.0f

    move-object v3, p1

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 927
    return-void
.end method

.method public DrawFilledRect(Landroid/graphics/Canvas;IIIIFFFF)V
    .locals 11
    .param p1, "cvs"    # Landroid/graphics/Canvas;
    .param p2, "a"    # I
    .param p3, "r"    # I
    .param p4, "g"    # I
    .param p5, "b"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "width"    # F
    .param p9, "height"    # F

    .line 350
    move-object v0, p0

    iget-object v1, v0, Lpubgm/loader/floating/ESPView;->mFillPaint:Landroid/graphics/Paint;

    invoke-static/range {p3 .. p5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 351
    iget-object v1, v0, Lpubgm/loader/floating/ESPView;->mFillPaint:Landroid/graphics/Paint;

    move v2, p2

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 352
    iget-object v10, v0, Lpubgm/loader/floating/ESPView;->mFillPaint:Landroid/graphics/Paint;

    const/high16 v8, 0x40a00000    # 5.0f

    const/high16 v9, 0x40a00000    # 5.0f

    move-object v3, p1

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 353
    return-void
.end method

.method public DrawFilledRect1(Landroid/graphics/Canvas;IIIIFFFF)V
    .locals 9
    .param p1, "cvs"    # Landroid/graphics/Canvas;
    .param p2, "a"    # I
    .param p3, "r"    # I
    .param p4, "g"    # I
    .param p5, "b"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "width"    # F
    .param p9, "height"    # F

    .line 875
    move-object v0, p0

    iget-object v1, v0, Lpubgm/loader/floating/ESPView;->mFilledPaint:Landroid/graphics/Paint;

    invoke-static {p3, p4, p5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 876
    iget-object v1, v0, Lpubgm/loader/floating/ESPView;->mFilledPaint:Landroid/graphics/Paint;

    move v2, p2

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 877
    iget-object v8, v0, Lpubgm/loader/floating/ESPView;->mFilledPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 878
    return-void
.end method

.method public DrawFilledRect2(Landroid/graphics/Canvas;IIIIFFFF)V
    .locals 9
    .param p1, "cvs"    # Landroid/graphics/Canvas;
    .param p2, "a"    # I
    .param p3, "r"    # I
    .param p4, "g"    # I
    .param p5, "b"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "width"    # F
    .param p9, "height"    # F

    .line 343
    move-object v0, p0

    iget-object v1, v0, Lpubgm/loader/floating/ESPView;->mFillPaint:Landroid/graphics/Paint;

    invoke-static {p3, p4, p5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 344
    iget-object v1, v0, Lpubgm/loader/floating/ESPView;->mFillPaint:Landroid/graphics/Paint;

    move v2, p2

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 345
    iget-object v8, v0, Lpubgm/loader/floating/ESPView;->mFillPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 346
    return-void
.end method

.method public DrawFilledRoundRect(Landroid/graphics/Canvas;IIIIFFFF)V
    .locals 11
    .param p1, "cvs"    # Landroid/graphics/Canvas;
    .param p2, "a"    # I
    .param p3, "r"    # I
    .param p4, "g"    # I
    .param p5, "b"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "width"    # F
    .param p9, "height"    # F

    .line 356
    move-object v0, p0

    iget-object v1, v0, Lpubgm/loader/floating/ESPView;->mFillPaint:Landroid/graphics/Paint;

    invoke-static/range {p3 .. p5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 357
    iget-object v1, v0, Lpubgm/loader/floating/ESPView;->mFillPaint:Landroid/graphics/Paint;

    move v2, p2

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 358
    iget-object v10, v0, Lpubgm/loader/floating/ESPView;->mFillPaint:Landroid/graphics/Paint;

    const/high16 v8, 0x41200000    # 10.0f

    const/high16 v9, 0x41200000    # 10.0f

    move-object v3, p1

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 359
    return-void
.end method

.method public DrawFilledTriangle(Landroid/graphics/Canvas;IIIIFFF)V
    .locals 13
    .param p1, "cvs"    # Landroid/graphics/Canvas;
    .param p2, "a"    # I
    .param p3, "r"    # I
    .param p4, "g"    # I
    .param p5, "b"    # I
    .param p6, "posX"    # F
    .param p7, "posY"    # F
    .param p8, "size"    # F

    .line 719
    move-object v0, p0

    iget-object v1, v0, Lpubgm/loader/floating/ESPView;->mFilledPaint:Landroid/graphics/Paint;

    invoke-static/range {p3 .. p5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 720
    iget-object v1, v0, Lpubgm/loader/floating/ESPView;->mFilledPaint:Landroid/graphics/Paint;

    move v2, p2

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 722
    const/high16 v1, 0x40000000    # 2.0f

    div-float v3, p8, v1

    .line 723
    .local v3, "halfSize":F
    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    float-to-double v6, v3

    mul-double/2addr v4, v6

    double-to-float v4, v4

    .line 725
    .local v4, "height":F
    move/from16 v5, p6

    .line 726
    .local v5, "x1":F
    div-float v6, v4, v1

    sub-float v6, p7, v6

    .line 728
    .local v6, "y1":F
    sub-float v7, p6, v3

    .line 729
    .local v7, "x2":F
    div-float v8, v4, v1

    add-float v8, p7, v8

    .line 731
    .local v8, "y2":F
    add-float v9, p6, v3

    .line 732
    .local v9, "x3":F
    div-float v1, v4, v1

    add-float v1, p7, v1

    .line 734
    .local v1, "y3":F
    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    .line 735
    .local v10, "path":Landroid/graphics/Path;
    invoke-virtual {v10, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 736
    invoke-virtual {v10, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 737
    invoke-virtual {v10, v9, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 738
    invoke-virtual {v10}, Landroid/graphics/Path;->close()V

    .line 740
    iget-object v11, v0, Lpubgm/loader/floating/ESPView;->mFilledPaint:Landroid/graphics/Paint;

    move-object v12, p1

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 741
    return-void
.end method

.method public DrawItems(Landroid/graphics/Canvas;Ljava/lang/String;FFFF)V
    .locals 7
    .param p1, "cvs"    # Landroid/graphics/Canvas;
    .param p2, "itemName"    # Ljava/lang/String;
    .param p3, "distance"    # F
    .param p4, "posX"    # F
    .param p5, "posY"    # F
    .param p6, "size"    # F

    .line 488
    invoke-direct {p0, p2}, Lpubgm/loader/floating/ESPView;->getItemName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, "realItemName":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 490
    iget-object v1, p0, Lpubgm/loader/floating/ESPView;->mItemsPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    float-to-int v3, p3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 492
    .local v1, "displayText":Ljava/lang/String;
    iget-object v3, p0, Lpubgm/loader/floating/ESPView;->mItemsPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 493
    iget-object v3, p0, Lpubgm/loader/floating/ESPView;->mItemsPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x40400000    # 3.0f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 494
    iget-object v3, p0, Lpubgm/loader/floating/ESPView;->mItemsPaint:Landroid/graphics/Paint;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 496
    const-string v3, "LootBox"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/high16 v4, 0x42900000    # 72.0f

    const/high16 v5, 0x41c80000    # 25.0f

    const/high16 v6, 0x41000000    # 8.0f

    if-eqz v3, :cond_0

    .line 497
    const/high16 v2, 0x43160000    # 150.0f

    cmpg-float v2, p3, v2

    if-gez v2, :cond_2

    .line 498
    iget-object v2, p0, Lpubgm/loader/floating/ESPView;->lootBitmap:Landroid/graphics/Bitmap;

    sub-float v3, p4, v5

    iget v5, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float/2addr v5, v4

    sub-float v4, p5, v5

    iget-object v5, p0, Lpubgm/loader/floating/ESPView;->mPaintBitmap:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 499
    sub-float v2, p5, v6

    iget-object v3, p0, Lpubgm/loader/floating/ESPView;->mItemsPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, p4, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 500
    iget-object v2, p0, Lpubgm/loader/floating/ESPView;->mItemsPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 501
    iget-object v2, p0, Lpubgm/loader/floating/ESPView;->mItemsPaint:Landroid/graphics/Paint;

    const-string v3, "#FF40CC7E"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 502
    sub-float v2, p5, v6

    iget-object v3, p0, Lpubgm/loader/floating/ESPView;->mItemsPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, p4, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 504
    :cond_0
    const-string v3, "AirDrop"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 505
    iget-object v2, p0, Lpubgm/loader/floating/ESPView;->airdropBitmap:Landroid/graphics/Bitmap;

    sub-float v3, p4, v5

    iget v5, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float/2addr v5, v4

    sub-float v4, p5, v5

    iget-object v5, p0, Lpubgm/loader/floating/ESPView;->mPaintBitmap:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 506
    sub-float v2, p5, v6

    iget-object v3, p0, Lpubgm/loader/floating/ESPView;->mItemsPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, p4, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 507
    iget-object v2, p0, Lpubgm/loader/floating/ESPView;->mItemsPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 508
    iget-object v2, p0, Lpubgm/loader/floating/ESPView;->mItemsPaint:Landroid/graphics/Paint;

    const-string v3, "#FF0000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 509
    sub-float v2, p5, v6

    iget-object v3, p0, Lpubgm/loader/floating/ESPView;->mItemsPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, p4, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 511
    :cond_1
    iget-object v3, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v3, p6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 512
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "m)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, p4, p5, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 515
    .end local v1    # "displayText":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void
.end method

.method public DrawLine(Landroid/graphics/Canvas;IIIIFFFFF)V
    .locals 10
    .param p1, "cvs"    # Landroid/graphics/Canvas;
    .param p2, "a"    # I
    .param p3, "r"    # I
    .param p4, "g"    # I
    .param p5, "b"    # I
    .param p6, "lineWidth"    # F
    .param p7, "fromX"    # F
    .param p8, "fromY"    # F
    .param p9, "toX"    # F
    .param p10, "toY"    # F

    .line 322
    move-object v0, p0

    iget-object v1, v0, Lpubgm/loader/floating/ESPView;->mStrokePaint:Landroid/graphics/Paint;

    invoke-static {p3, p4, p5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 323
    iget-object v1, v0, Lpubgm/loader/floating/ESPView;->mStrokePaint:Landroid/graphics/Paint;

    move v2, p2

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 324
    iget-object v1, v0, Lpubgm/loader/floating/ESPView;->mStrokePaint:Landroid/graphics/Paint;

    move/from16 v3, p6

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 325
    iget-object v9, v0, Lpubgm/loader/floating/ESPView;->mStrokePaint:Landroid/graphics/Paint;

    move-object v4, p1

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 326
    return-void
.end method

.method public DrawName(Landroid/graphics/Canvas;IIIILjava/lang/String;FFF)V
    .locals 4
    .param p1, "cvs"    # Landroid/graphics/Canvas;
    .param p2, "a"    # I
    .param p3, "r"    # I
    .param p4, "g"    # I
    .param p5, "b"    # I
    .param p6, "nametxt"    # Ljava/lang/String;
    .param p7, "posX"    # F
    .param p8, "posY"    # F
    .param p9, "size"    # F

    .line 914
    const-string v0, ":"

    invoke-virtual {p6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 915
    .local v0, "namesp":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [C

    .line 916
    .local v1, "nameint":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 917
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 916
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 918
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    .line 919
    .local v2, "realname":Ljava/lang/String;
    iget-object v3, p0, Lpubgm/loader/floating/ESPView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p2, p3, p4, p5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 920
    iget-object v3, p0, Lpubgm/loader/floating/ESPView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 921
    iget-object v3, p0, Lpubgm/loader/floating/ESPView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, p7, p8, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 922
    return-void
.end method

.method public DrawName1(Landroid/graphics/Canvas;IIIILjava/lang/String;IFFF)V
    .locals 15
    .param p1, "cvs"    # Landroid/graphics/Canvas;
    .param p2, "a"    # I
    .param p3, "r"    # I
    .param p4, "g"    # I
    .param p5, "b"    # I
    .param p6, "nametxt"    # Ljava/lang/String;
    .param p7, "teamid"    # I
    .param p8, "posX"    # F
    .param p9, "posY"    # F
    .param p10, "size"    # F

    .line 809
    move-object v0, p0

    const-string v1, ":"

    move-object/from16 v2, p6

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 810
    .local v1, "namesp":[Ljava/lang/String;
    array-length v3, v1

    new-array v3, v3, [C

    .line 811
    .local v3, "nameint":[C
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_0

    .line 812
    aget-object v5, v1, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-char v5, v5

    aput-char v5, v3, v4

    .line 811
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 813
    .end local v4    # "i":I
    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V

    .line 814
    .local v4, "realname":Ljava/lang/String;
    iget-object v5, v0, Lpubgm/loader/floating/ESPView;->mNamePaint:Landroid/graphics/Paint;

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 815
    iget-object v5, v0, Lpubgm/loader/floating/ESPView;->mNamePaint:Landroid/graphics/Paint;

    move/from16 v10, p10

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 816
    iget-object v5, v0, Lpubgm/loader/floating/ESPView;->mNamePaint:Landroid/graphics/Paint;

    const/high16 v11, 0x41000000    # 8.0f

    const/high16 v12, -0x1000000

    const/high16 v13, 0x3fc00000    # 1.5f

    invoke-virtual {v5, v11, v13, v13, v12}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 818
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "   "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v11, v0, Lpubgm/loader/floating/ESPView;->mNamePaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move/from16 v13, p8

    move/from16 v14, p9

    invoke-virtual {v12, v5, v13, v14, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 819
    return-void
.end method

.method public DrawName2(Landroid/graphics/Canvas;IIIILjava/lang/String;IFFF)V
    .locals 16
    .param p1, "cvs"    # Landroid/graphics/Canvas;
    .param p2, "a"    # I
    .param p3, "r"    # I
    .param p4, "g"    # I
    .param p5, "b"    # I
    .param p6, "nametxt"    # Ljava/lang/String;
    .param p7, "teamid"    # I
    .param p8, "posX"    # F
    .param p9, "posY"    # F
    .param p10, "size"    # F

    .line 851
    move-object/from16 v0, p0

    const-string v1, ":"

    move-object/from16 v2, p6

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 852
    .local v1, "namesp":[Ljava/lang/String;
    array-length v3, v1

    new-array v3, v3, [C

    .line 853
    .local v3, "nameint":[C
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_0

    .line 854
    aget-object v5, v1, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-char v5, v5

    aput-char v5, v3, v4

    .line 853
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 855
    .end local v4    # "i":I
    :cond_0
    const-string v4, ""

    .line 856
    .local v4, "str":Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([C)V

    .line 857
    .local v5, "realname":Ljava/lang/String;
    iget-object v6, v0, Lpubgm/loader/floating/ESPView;->mTextPaint:Landroid/graphics/Paint;

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 858
    iget-object v6, v0, Lpubgm/loader/floating/ESPView;->mTextPaint:Landroid/graphics/Paint;

    move/from16 v11, p10

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 859
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {v0, v5}, Lpubgm/loader/floating/ESPView;->Nation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/high16 v12, 0x42a00000    # 80.0f

    sub-float v12, p8, v12

    const/high16 v13, 0x41f00000    # 30.0f

    sub-float v13, p9, v13

    iget-object v14, v0, Lpubgm/loader/floating/ESPView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v15, p1

    invoke-virtual {v15, v6, v12, v13, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 860
    return-void
.end method

.method public DrawNation(Landroid/graphics/Canvas;IIIILjava/lang/String;IFFF)V
    .locals 15
    .param p1, "cvs"    # Landroid/graphics/Canvas;
    .param p2, "a"    # I
    .param p3, "r"    # I
    .param p4, "g"    # I
    .param p5, "b"    # I
    .param p6, "nametxt"    # Ljava/lang/String;
    .param p7, "flag"    # I
    .param p8, "posX"    # F
    .param p9, "posY"    # F
    .param p10, "size"    # F

    .line 941
    move-object v0, p0

    move-object/from16 v1, p1

    const-string v2, ":"

    move-object/from16 v3, p6

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 942
    .local v2, "namesp":[Ljava/lang/String;
    array-length v4, v2

    new-array v4, v4, [C

    .line 943
    .local v4, "nameint":[C
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_0

    .line 944
    aget-object v6, v2, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-char v6, v6

    aput-char v6, v4, v5

    .line 943
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 945
    .end local v5    # "i":I
    :cond_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([C)V

    .line 946
    .local v5, "realname":Ljava/lang/String;
    iget-object v6, v0, Lpubgm/loader/floating/ESPView;->mTextPaint:Landroid/graphics/Paint;

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 947
    iget-object v6, v0, Lpubgm/loader/floating/ESPView;->mTextPaint:Landroid/graphics/Paint;

    move/from16 v11, p10

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 948
    const/high16 v6, 0x42aa0000    # 85.0f

    add-float v6, p8, v6

    const/4 v12, 0x0

    sub-float v12, p9, v12

    iget-object v13, v0, Lpubgm/loader/floating/ESPView;->mTextPaint:Landroid/graphics/Paint;

    const-string v14, ""

    invoke-virtual {v1, v14, v6, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 949
    invoke-direct {p0, v5}, Lpubgm/loader/floating/ESPView;->Nation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/high16 v12, 0x42920000    # 73.0f

    add-float v12, p8, v12

    const/high16 v13, 0x42440000    # 49.0f

    sub-float v13, p9, v13

    iget-object v14, v0, Lpubgm/loader/floating/ESPView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v12, v13, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 950
    return-void
.end method

.method public DrawOTH(Landroid/graphics/Canvas;FF)V
    .locals 2
    .param p1, "cvs"    # Landroid/graphics/Canvas;
    .param p2, "posX"    # F
    .param p3, "posY"    # F

    .line 463
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->botBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lpubgm/loader/floating/ESPView;->mPaintBitmap:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 465
    return-void
.end method

.method public DrawOTH2(Landroid/graphics/Canvas;IFF)V
    .locals 2
    .param p1, "cvs"    # Landroid/graphics/Canvas;
    .param p2, "image_number"    # I
    .param p3, "X"    # F
    .param p4, "Y"    # F

    .line 788
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->OTHER:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p2

    iget-object v1, p0, Lpubgm/loader/floating/ESPView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p3, p4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 789
    return-void
.end method

.method public DrawPlayerID(Landroid/graphics/Canvas;IIIILjava/lang/String;IFFF)V
    .locals 11
    .param p1, "cvs"    # Landroid/graphics/Canvas;
    .param p2, "a"    # I
    .param p3, "r"    # I
    .param p4, "g"    # I
    .param p5, "b"    # I
    .param p6, "nametxt"    # Ljava/lang/String;
    .param p7, "teamid"    # I
    .param p8, "posX"    # F
    .param p9, "posY"    # F
    .param p10, "size"    # F

    .line 798
    move-object v0, p0

    const-string v1, ":"

    move-object/from16 v2, p6

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 799
    .local v1, "namesp":[Ljava/lang/String;
    array-length v3, v1

    new-array v3, v3, [C

    .line 800
    .local v3, "nameint":[C
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_0

    .line 801
    aget-object v5, v1, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-char v5, v5

    aput-char v5, v3, v4

    .line 800
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 802
    .end local v4    # "i":I
    :cond_0
    iget-object v4, v0, Lpubgm/loader/floating/ESPView;->mNamePaint:Landroid/graphics/Paint;

    invoke-static/range {p3 .. p5}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 803
    iget-object v4, v0, Lpubgm/loader/floating/ESPView;->mNamePaint:Landroid/graphics/Paint;

    move/from16 v5, p10

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 804
    iget-object v4, v0, Lpubgm/loader/floating/ESPView;->mNamePaint:Landroid/graphics/Paint;

    const/high16 v6, 0x41000000    # 8.0f

    const/high16 v7, -0x1000000

    const/high16 v8, 0x3fc00000    # 1.5f

    invoke-virtual {v4, v6, v8, v8, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 805
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v6, p7

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v7, v0, Lpubgm/loader/floating/ESPView;->mNamePaint:Landroid/graphics/Paint;

    move-object v8, p1

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual {p1, v4, v9, v10, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 806
    return-void
.end method

.method public DrawPlayerName(Landroid/graphics/Canvas;IIIILjava/lang/String;FFF)V
    .locals 5
    .param p1, "cvs"    # Landroid/graphics/Canvas;
    .param p2, "a"    # I
    .param p3, "r"    # I
    .param p4, "g"    # I
    .param p5, "b"    # I
    .param p6, "nametxt"    # Ljava/lang/String;
    .param p7, "posX"    # F
    .param p8, "posY"    # F
    .param p9, "size"    # F

    .line 447
    const-string v0, ":"

    invoke-virtual {p6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, "namesp":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [C

    .line 449
    .local v1, "nameint":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 450
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 449
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 451
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    .line 452
    .local v2, "realname":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-le v3, v4, :cond_1

    .line 453
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 455
    :cond_1
    iget-object v3, p0, Lpubgm/loader/floating/ESPView;->mNamePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p2, p3, p4, p5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 456
    iget-object v3, p0, Lpubgm/loader/floating/ESPView;->mNamePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 457
    iget-object v3, p0, Lpubgm/loader/floating/ESPView;->mNamePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, p7, p8, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 458
    return-void
.end method

.method public DrawRect(Landroid/graphics/Canvas;IIIIFFFFF)V
    .locals 12
    .param p1, "cvs"    # Landroid/graphics/Canvas;
    .param p2, "a"    # I
    .param p3, "r"    # I
    .param p4, "g"    # I
    .param p5, "b"    # I
    .param p6, "stroke"    # F
    .param p7, "x"    # F
    .param p8, "y"    # F
    .param p9, "width"    # F
    .param p10, "height"    # F

    .line 329
    move-object v0, p0

    iget-object v1, v0, Lpubgm/loader/floating/ESPView;->mStrokePaint:Landroid/graphics/Paint;

    move/from16 v2, p6

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 330
    iget-object v1, v0, Lpubgm/loader/floating/ESPView;->mStrokePaint:Landroid/graphics/Paint;

    invoke-static/range {p3 .. p5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 331
    iget-object v1, v0, Lpubgm/loader/floating/ESPView;->mStrokePaint:Landroid/graphics/Paint;

    move v3, p2

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 332
    iget-object v11, v0, Lpubgm/loader/floating/ESPView;->mStrokePaint:Landroid/graphics/Paint;

    const/high16 v9, 0x40a00000    # 5.0f

    const/high16 v10, 0x40a00000    # 5.0f

    move-object v4, p1

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 333
    return-void
.end method

.method public DrawTeamID(Landroid/graphics/Canvas;IIIIIFFF)V
    .locals 2
    .param p1, "cvs"    # Landroid/graphics/Canvas;
    .param p2, "a"    # I
    .param p3, "r"    # I
    .param p4, "g"    # I
    .param p5, "b"    # I
    .param p6, "teamid"    # I
    .param p7, "posX"    # F
    .param p8, "posY"    # F
    .param p9, "size"    # F

    .line 435
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mNamePaint:Landroid/graphics/Paint;

    invoke-static {p3, p4, p5}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 436
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mNamePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lpubgm/loader/floating/ESPView;->mNamePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p7, p8, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 438
    return-void
.end method

.method public DrawText(Landroid/graphics/Canvas;IIIILjava/lang/String;FFF)V
    .locals 1
    .param p1, "cvs"    # Landroid/graphics/Canvas;
    .param p2, "a"    # I
    .param p3, "r"    # I
    .param p4, "g"    # I
    .param p5, "b"    # I
    .param p6, "txt"    # Ljava/lang/String;
    .param p7, "posX"    # F
    .param p8, "posY"    # F
    .param p9, "size"    # F

    .line 863
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 864
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 865
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p6, p7, p8, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 866
    return-void
.end method

.method public DrawTextBold(Landroid/graphics/Canvas;IIIILjava/lang/String;FFF)V
    .locals 1
    .param p1, "cvs"    # Landroid/graphics/Canvas;
    .param p2, "a"    # I
    .param p3, "r"    # I
    .param p4, "g"    # I
    .param p5, "b"    # I
    .param p6, "txt"    # Ljava/lang/String;
    .param p7, "posX"    # F
    .param p8, "posY"    # F
    .param p9, "size"    # F

    .line 441
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->PaintTextBold:Landroid/graphics/Paint;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 442
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->PaintTextBold:Landroid/graphics/Paint;

    invoke-virtual {v0, p9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 443
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->PaintTextBold:Landroid/graphics/Paint;

    invoke-virtual {p1, p6, p7, p8, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 444
    return-void
.end method

.method public DrawTextBot(Landroid/graphics/Canvas;IIIILjava/lang/String;FFF)V
    .locals 2
    .param p1, "cvs"    # Landroid/graphics/Canvas;
    .param p2, "a"    # I
    .param p3, "r"    # I
    .param p4, "g"    # I
    .param p5, "b"    # I
    .param p6, "txt"    # Ljava/lang/String;
    .param p7, "posX"    # F
    .param p8, "posY"    # F
    .param p9, "size"    # F

    .line 792
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mNamePaint:Landroid/graphics/Paint;

    invoke-static {p3, p4, p5}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 793
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mNamePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 794
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mNamePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p6, p7, p8, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 795
    return-void
.end method

.method public DrawTextMode(Landroid/graphics/Canvas;IIIILjava/lang/String;FFF)V
    .locals 2
    .param p1, "cvs"    # Landroid/graphics/Canvas;
    .param p2, "a"    # I
    .param p3, "r"    # I
    .param p4, "g"    # I
    .param p5, "b"    # I
    .param p6, "txt"    # Ljava/lang/String;
    .param p7, "posX"    # F
    .param p8, "posY"    # F
    .param p9, "size"    # F

    .line 380
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mMDText:Landroid/graphics/Paint;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 381
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mMDText:Landroid/graphics/Paint;

    invoke-virtual {v0, p9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 382
    sget-object v0, Lpubgm/loader/activity/MainActivity;->modeselect:Ljava/lang/String;

    iget-object v1, p0, Lpubgm/loader/floating/ESPView;->mMDText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p7, p8, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 383
    return-void
.end method

.method public DrawTextMode2(Landroid/graphics/Canvas;IIIILjava/lang/String;FFF)V
    .locals 2
    .param p1, "cvs"    # Landroid/graphics/Canvas;
    .param p2, "a"    # I
    .param p3, "r"    # I
    .param p4, "g"    # I
    .param p5, "b"    # I
    .param p6, "txt"    # Ljava/lang/String;
    .param p7, "posX"    # F
    .param p8, "posY"    # F
    .param p9, "size"    # F

    .line 386
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mFPSText:Landroid/graphics/Paint;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 387
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mFPSText:Landroid/graphics/Paint;

    invoke-virtual {v0, p9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 388
    sget-object v0, Lpubgm/loader/activity/MainActivity;->typelogin:Ljava/lang/String;

    iget-object v1, p0, Lpubgm/loader/floating/ESPView;->mFPSText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p7, p8, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 389
    return-void
.end method

.method public DrawTextName(Landroid/graphics/Canvas;IIIILjava/lang/String;FFF)V
    .locals 4
    .param p1, "cvs"    # Landroid/graphics/Canvas;
    .param p2, "a"    # I
    .param p3, "r"    # I
    .param p4, "g"    # I
    .param p5, "b"    # I
    .param p6, "txt"    # Ljava/lang/String;
    .param p7, "posX"    # F
    .param p8, "posY"    # F
    .param p9, "size"    # F

    .line 362
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mFPSText:Landroid/graphics/Paint;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 363
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mFPSText:Landroid/graphics/Paint;

    invoke-virtual {v0, p9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 364
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lpubgm/loader/floating/ESPView;->mFPSTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 365
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lpubgm/loader/floating/ESPView;->mFPSTime:J

    .line 366
    iget v0, p0, Lpubgm/loader/floating/ESPView;->mFPSCounter:F

    iput v0, p0, Lpubgm/loader/floating/ESPView;->mFPS:F

    .line 367
    const/4 v0, 0x0

    iput v0, p0, Lpubgm/loader/floating/ESPView;->mFPSCounter:F

    goto :goto_0

    .line 369
    :cond_0
    iget v0, p0, Lpubgm/loader/floating/ESPView;->mFPSCounter:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iput v0, p0, Lpubgm/loader/floating/ESPView;->mFPSCounter:F

    .line 372
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mFPS:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "fpsText":Ljava/lang/String;
    iget-object v1, p0, Lpubgm/loader/floating/ESPView;->mFPSText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p7, p8, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 374
    return-void
.end method

.method public DrawTexti(Landroid/graphics/Canvas;IIIILjava/lang/String;FFF)V
    .locals 1
    .param p1, "cvs"    # Landroid/graphics/Canvas;
    .param p2, "a"    # I
    .param p3, "r"    # I
    .param p4, "g"    # I
    .param p5, "b"    # I
    .param p6, "txt"    # Ljava/lang/String;
    .param p7, "posX"    # F
    .param p8, "posY"    # F
    .param p9, "size"    # F

    .line 869
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 870
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, p9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 871
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {p1, p6, p7, p8, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 872
    return-void
.end method

.method public DrawTexture(Landroid/graphics/Canvas;IIIILjava/lang/String;FFF)V
    .locals 2
    .param p1, "cvs"    # Landroid/graphics/Canvas;
    .param p2, "a"    # I
    .param p3, "r"    # I
    .param p4, "g"    # I
    .param p5, "b"    # I
    .param p6, "txt"    # Ljava/lang/String;
    .param p7, "posX"    # F
    .param p8, "posY"    # F
    .param p9, "size"    # F

    .line 392
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mMDText:Landroid/graphics/Paint;

    invoke-static {p3, p4, p5}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 393
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mMDText:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 394
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mMDText:Landroid/graphics/Paint;

    invoke-virtual {v0, p9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 395
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mMDText:Landroid/graphics/Paint;

    invoke-virtual {p1, p6, p7, p8, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 396
    return-void
.end method

.method public DrawTriangle(Landroid/graphics/Canvas;IIIIFFFF)V
    .locals 17
    .param p1, "cvs"    # Landroid/graphics/Canvas;
    .param p2, "a"    # I
    .param p3, "r"    # I
    .param p4, "g"    # I
    .param p5, "b"    # I
    .param p6, "centerX"    # F
    .param p7, "centerY"    # F
    .param p8, "size"    # F
    .param p9, "angle"    # F

    .line 880
    move-object/from16 v0, p1

    move/from16 v1, p9

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 881
    .local v2, "fillPaint":Landroid/graphics/Paint;
    invoke-static/range {p3 .. p5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 882
    move/from16 v3, p2

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 883
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 885
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 886
    .local v4, "strokePaint":Landroid/graphics/Paint;
    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 887
    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 888
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 889
    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 891
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 892
    .local v6, "path":Landroid/graphics/Path;
    div-float v5, p8, v5

    .line 893
    .local v5, "halfSize":F
    const v7, 0x3f4ccccd    # 0.8f

    mul-float v7, v7, p8

    .line 895
    .local v7, "tipSize":F
    float-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    float-to-double v10, v7

    mul-double/2addr v8, v10

    double-to-float v8, v8

    add-float v8, p6, v8

    .line 896
    .local v8, "tipX":F
    float-to-double v9, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    float-to-double v11, v7

    mul-double/2addr v9, v11

    double-to-float v9, v9

    add-float v9, p7, v9

    .line 898
    .local v9, "tipY":F
    const/high16 v10, 0x42f00000    # 120.0f

    add-float v11, v1, v10

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    float-to-double v13, v5

    mul-double/2addr v11, v13

    double-to-float v11, v11

    add-float v11, p6, v11

    .line 899
    .local v11, "leftX":F
    add-float v12, v1, v10

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    float-to-double v14, v5

    mul-double/2addr v12, v14

    double-to-float v12, v12

    add-float v12, p7, v12

    .line 901
    .local v12, "leftY":F
    sub-float v13, v1, v10

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    move/from16 v16, v11

    .end local v11    # "leftX":F
    .local v16, "leftX":F
    float-to-double v10, v5

    mul-double/2addr v13, v10

    double-to-float v10, v13

    add-float v10, p6, v10

    .line 902
    .local v10, "rightX":F
    const/high16 v11, 0x42f00000    # 120.0f

    sub-float v11, v1, v11

    float-to-double v13, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    move-object v11, v2

    .end local v2    # "fillPaint":Landroid/graphics/Paint;
    .local v11, "fillPaint":Landroid/graphics/Paint;
    float-to-double v1, v5

    mul-double/2addr v13, v1

    double-to-float v1, v13

    add-float v1, p7, v1

    .line 904
    .local v1, "rightY":F
    invoke-virtual {v6, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 905
    move/from16 v2, v16

    .end local v16    # "leftX":F
    .local v2, "leftX":F
    invoke-virtual {v6, v2, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 906
    invoke-virtual {v6, v10, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 907
    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 909
    invoke-virtual {v0, v6, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 911
    invoke-virtual {v0, v6, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 912
    return-void
.end method

.method public DrawTriangle(Landroid/graphics/Canvas;IIIIFFFFFFF)V
    .locals 3
    .param p1, "cvs"    # Landroid/graphics/Canvas;
    .param p2, "a"    # I
    .param p3, "r"    # I
    .param p4, "g"    # I
    .param p5, "b"    # I
    .param p6, "posX1"    # F
    .param p7, "posY1"    # F
    .param p8, "posX2"    # F
    .param p9, "posY2"    # F
    .param p10, "posX3"    # F
    .param p11, "posY3"    # F
    .param p12, "stroke"    # F

    .line 822
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 823
    .local v0, "path":Landroid/graphics/Path;
    invoke-virtual {v0, p6, p7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 824
    invoke-virtual {v0, p8, p9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 825
    invoke-virtual {v0, p10, p11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 826
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 828
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 829
    .local v1, "paint":Landroid/graphics/Paint;
    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 830
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 831
    invoke-virtual {v1, p12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 833
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 834
    return-void
.end method

.method public DrawTriangleFilled(Landroid/graphics/Canvas;IIIIFFFFFF)V
    .locals 3
    .param p1, "cvs"    # Landroid/graphics/Canvas;
    .param p2, "a"    # I
    .param p3, "r"    # I
    .param p4, "g"    # I
    .param p5, "b"    # I
    .param p6, "posX1"    # F
    .param p7, "posY1"    # F
    .param p8, "posX2"    # F
    .param p9, "posY2"    # F
    .param p10, "posX3"    # F
    .param p11, "posY3"    # F

    .line 837
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 838
    .local v0, "path":Landroid/graphics/Path;
    invoke-virtual {v0, p6, p7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 839
    invoke-virtual {v0, p8, p9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 840
    invoke-virtual {v0, p10, p11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 841
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 843
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 844
    .local v1, "paint":Landroid/graphics/Paint;
    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 845
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 847
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 848
    return-void
.end method

.method public DrawUserID(Landroid/graphics/Canvas;IIIILjava/lang/String;FFF)V
    .locals 5
    .param p1, "cvs"    # Landroid/graphics/Canvas;
    .param p2, "a"    # I
    .param p3, "r"    # I
    .param p4, "g"    # I
    .param p5, "b"    # I
    .param p6, "nametxt"    # Ljava/lang/String;
    .param p7, "posX"    # F
    .param p8, "posY"    # F
    .param p9, "size"    # F

    .line 929
    const-string v0, ":"

    invoke-virtual {p6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 930
    .local v0, "namesp":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [C

    .line 931
    .local v1, "nameint":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 932
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 931
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 933
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    .line 934
    .local v2, "realname":Ljava/lang/String;
    iget-object v3, p0, Lpubgm/loader/floating/ESPView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p2, p3, p4, p5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 935
    iget-object v3, p0, Lpubgm/loader/floating/ESPView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 936
    iget-object v3, p0, Lpubgm/loader/floating/ESPView;->mTextPaint:Landroid/graphics/Paint;

    const-string v4, "#FFFFFF"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 937
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lpubgm/loader/floating/ESPView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, p7, p8, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 938
    return-void
.end method

.method public DrawVehicles(Landroid/graphics/Canvas;Ljava/lang/String;FFFFFF)V
    .locals 15
    .param p1, "cvs"    # Landroid/graphics/Canvas;
    .param p2, "VehicleName"    # Ljava/lang/String;
    .param p3, "distance"    # F
    .param p4, "health"    # F
    .param p5, "fuel"    # F
    .param p6, "posX"    # F
    .param p7, "posY"    # F
    .param p8, "size"    # F

    .line 532
    move-object v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p6

    move-object/from16 v10, p2

    invoke-direct {p0, v10}, Lpubgm/loader/floating/ESPView;->VehicleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 533
    .local v11, "realVehicleName":Ljava/lang/String;
    if-eqz v11, :cond_16

    const-string v0, ""

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 534
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    move/from16 v12, p8

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v13, p3

    float-to-int v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 536
    .local v14, "displayText":Ljava/lang/String;
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 537
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 538
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 539
    const-string v0, "Buggy"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v1, 0x42700000    # 60.0f

    const/high16 v2, 0x41c80000    # 25.0f

    const-string v3, "#FFFFFF"

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 540
    sub-float v0, p7, v4

    iget-object v5, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v14, v9, v0, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 541
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 542
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 543
    sub-float v0, p7, v4

    iget-object v3, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v14, v9, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 544
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->buggyBitmap:Landroid/graphics/Bitmap;

    sub-float v2, v9, v2

    iget v3, v7, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float/2addr v3, v1

    sub-float v1, p7, v3

    iget-object v3, v7, Lpubgm/loader/floating/ESPView;->mPaintBitmap1:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 546
    :cond_0
    const-string v0, "UAZ"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 547
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->uazBitmap:Landroid/graphics/Bitmap;

    sub-float v2, v9, v2

    iget v5, v7, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float/2addr v5, v1

    sub-float v1, p7, v5

    iget-object v5, v7, Lpubgm/loader/floating/ESPView;->mPaintBitmap1:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v2, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 548
    sub-float v0, p7, v4

    iget-object v1, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v14, v9, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 549
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 550
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 551
    sub-float v0, p7, v4

    iget-object v1, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v14, v9, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 552
    :cond_1
    const-string v0, "Trike"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 553
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->trikeBitmap:Landroid/graphics/Bitmap;

    sub-float v2, v9, v2

    iget v5, v7, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float/2addr v5, v1

    sub-float v1, p7, v5

    iget-object v5, v7, Lpubgm/loader/floating/ESPView;->mPaintBitmap1:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v2, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 554
    sub-float v0, p7, v4

    iget-object v1, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v14, v9, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 555
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 556
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 557
    sub-float v0, p7, v4

    iget-object v1, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v14, v9, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 558
    :cond_2
    const-string v0, "Bike"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 559
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->bikeBitmap:Landroid/graphics/Bitmap;

    sub-float v2, v9, v2

    iget v5, v7, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float/2addr v5, v1

    sub-float v1, p7, v5

    iget-object v5, v7, Lpubgm/loader/floating/ESPView;->mPaintBitmap1:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v2, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 560
    sub-float v0, p7, v4

    iget-object v1, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v14, v9, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 561
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 562
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 563
    sub-float v0, p7, v4

    iget-object v1, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v14, v9, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 564
    :cond_3
    const-string v0, "Dacia"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 565
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->daciaBitmap:Landroid/graphics/Bitmap;

    sub-float v2, v9, v2

    iget v5, v7, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float/2addr v5, v1

    sub-float v1, p7, v5

    iget-object v5, v7, Lpubgm/loader/floating/ESPView;->mPaintBitmap1:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v2, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 566
    sub-float v0, p7, v4

    iget-object v1, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v14, v9, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 567
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 568
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 569
    sub-float v0, p7, v4

    iget-object v1, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v14, v9, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 570
    :cond_4
    const-string v0, "Jet"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 571
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->jetBitmap:Landroid/graphics/Bitmap;

    sub-float v2, v9, v2

    iget v5, v7, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float/2addr v5, v1

    sub-float v1, p7, v5

    iget-object v5, v7, Lpubgm/loader/floating/ESPView;->mPaintBitmap1:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v2, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 572
    sub-float v0, p7, v4

    iget-object v1, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v14, v9, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 573
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 574
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 575
    sub-float v0, p7, v4

    iget-object v1, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v14, v9, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 576
    :cond_5
    const-string v0, "Boat"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 577
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->boatBitmap:Landroid/graphics/Bitmap;

    sub-float v2, v9, v2

    iget v5, v7, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float/2addr v5, v1

    sub-float v1, p7, v5

    iget-object v5, v7, Lpubgm/loader/floating/ESPView;->mPaintBitmap1:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v2, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 578
    sub-float v0, p7, v4

    iget-object v1, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v14, v9, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 579
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 580
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 581
    sub-float v0, p7, v4

    iget-object v1, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v14, v9, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 582
    :cond_6
    const-string v0, "Bus"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 583
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->busBitmap:Landroid/graphics/Bitmap;

    sub-float v2, v9, v2

    iget v5, v7, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float/2addr v5, v1

    sub-float v1, p7, v5

    iget-object v5, v7, Lpubgm/loader/floating/ESPView;->mPaintBitmap1:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v2, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 584
    sub-float v0, p7, v4

    iget-object v1, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v14, v9, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 585
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 586
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 587
    sub-float v0, p7, v4

    iget-object v1, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v14, v9, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 588
    :cond_7
    const-string v0, "Mirado"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 589
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->miradoBitmap:Landroid/graphics/Bitmap;

    sub-float v2, v9, v2

    iget v5, v7, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float/2addr v5, v1

    sub-float v1, p7, v5

    iget-object v5, v7, Lpubgm/loader/floating/ESPView;->mPaintBitmap1:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v2, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 590
    sub-float v0, p7, v4

    iget-object v1, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v14, v9, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 591
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 592
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 593
    sub-float v0, p7, v4

    iget-object v1, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v14, v9, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 594
    :cond_8
    const-string v0, "Scooter"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 595
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->scooterBitmap:Landroid/graphics/Bitmap;

    sub-float v2, v9, v2

    iget v5, v7, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float/2addr v5, v1

    sub-float v1, p7, v5

    iget-object v5, v7, Lpubgm/loader/floating/ESPView;->mPaintBitmap1:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v2, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 596
    sub-float v0, p7, v4

    iget-object v1, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v14, v9, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 597
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 598
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 599
    sub-float v0, p7, v4

    iget-object v1, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v14, v9, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 600
    :cond_9
    const-string v0, "Rony"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 601
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->ronyBitmap:Landroid/graphics/Bitmap;

    sub-float v2, v9, v2

    iget v5, v7, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float/2addr v5, v1

    sub-float v1, p7, v5

    iget-object v5, v7, Lpubgm/loader/floating/ESPView;->mPaintBitmap1:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v2, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 602
    sub-float v0, p7, v4

    iget-object v1, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v14, v9, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 603
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 604
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 605
    sub-float v0, p7, v4

    iget-object v1, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v14, v9, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 606
    :cond_a
    const-string v0, "Snowbike"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 607
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->snowbikeBitmap:Landroid/graphics/Bitmap;

    sub-float v2, v9, v2

    iget v5, v7, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float/2addr v5, v1

    sub-float v1, p7, v5

    iget-object v5, v7, Lpubgm/loader/floating/ESPView;->mPaintBitmap1:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v2, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 608
    sub-float v0, p7, v4

    iget-object v1, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v14, v9, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 609
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 610
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 611
    sub-float v0, p7, v4

    iget-object v1, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v14, v9, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 612
    :cond_b
    const-string v0, "Snowmobile"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 613
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->snowmobileBitmap:Landroid/graphics/Bitmap;

    sub-float v2, v9, v2

    iget v5, v7, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float/2addr v5, v1

    sub-float v1, p7, v5

    iget-object v5, v7, Lpubgm/loader/floating/ESPView;->mPaintBitmap1:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v2, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 614
    sub-float v0, p7, v4

    iget-object v1, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v14, v9, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 615
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 616
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 617
    sub-float v0, p7, v4

    iget-object v1, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v14, v9, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 618
    :cond_c
    const-string v0, "Tempo"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 619
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->tempoBitmap:Landroid/graphics/Bitmap;

    sub-float v2, v9, v2

    iget v5, v7, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float/2addr v5, v1

    sub-float v1, p7, v5

    iget-object v5, v7, Lpubgm/loader/floating/ESPView;->mPaintBitmap1:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v2, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 620
    sub-float v0, p7, v4

    iget-object v1, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v14, v9, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 621
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 622
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 623
    sub-float v0, p7, v4

    iget-object v1, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v14, v9, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 624
    :cond_d
    const-string v0, "Truck"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 625
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->truckBitmap:Landroid/graphics/Bitmap;

    sub-float v2, v9, v2

    iget v5, v7, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float/2addr v5, v1

    sub-float v1, p7, v5

    iget-object v5, v7, Lpubgm/loader/floating/ESPView;->mPaintBitmap1:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v2, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 626
    sub-float v0, p7, v4

    iget-object v1, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v14, v9, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 627
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 628
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 629
    sub-float v0, p7, v4

    iget-object v1, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v14, v9, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 630
    :cond_e
    const-string v0, "BRDM"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 631
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->brdmBitmap:Landroid/graphics/Bitmap;

    sub-float v2, v9, v2

    iget v5, v7, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float/2addr v5, v1

    sub-float v1, p7, v5

    iget-object v5, v7, Lpubgm/loader/floating/ESPView;->mPaintBitmap1:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v2, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 632
    sub-float v0, p7, v4

    iget-object v1, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v14, v9, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 633
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 634
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 635
    sub-float v0, p7, v4

    iget-object v1, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v14, v9, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 636
    :cond_f
    const-string v0, "Monster"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 637
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->monsterBitmap:Landroid/graphics/Bitmap;

    sub-float v2, v9, v2

    iget v5, v7, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float/2addr v5, v1

    sub-float v1, p7, v5

    iget-object v5, v7, Lpubgm/loader/floating/ESPView;->mPaintBitmap1:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v2, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 638
    sub-float v0, p7, v4

    iget-object v1, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v14, v9, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 639
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 640
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 641
    sub-float v0, p7, v4

    iget-object v1, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v14, v9, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 642
    :cond_10
    const-string v0, "CoupeRB"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 643
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->coupeBitmap:Landroid/graphics/Bitmap;

    sub-float v2, v9, v2

    iget v5, v7, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float/2addr v5, v1

    sub-float v1, p7, v5

    iget-object v5, v7, Lpubgm/loader/floating/ESPView;->mPaintBitmap1:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v2, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 644
    sub-float v0, p7, v4

    iget-object v1, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v14, v9, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 645
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 646
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 647
    sub-float v0, p7, v4

    iget-object v1, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v14, v9, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 648
    :cond_11
    const-string v0, "Motor Glider"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 649
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->gliderBitmap:Landroid/graphics/Bitmap;

    sub-float v2, v9, v2

    iget v5, v7, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float/2addr v5, v1

    sub-float v1, p7, v5

    iget-object v5, v7, Lpubgm/loader/floating/ESPView;->mPaintBitmap1:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v2, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 650
    sub-float v0, p7, v4

    iget-object v1, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v14, v9, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 651
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 652
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 653
    sub-float v0, p7, v4

    iget-object v1, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v14, v9, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 654
    :cond_12
    const-string v0, "UTV"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 655
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->utvBitmap:Landroid/graphics/Bitmap;

    sub-float v2, v9, v2

    iget v5, v7, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float/2addr v5, v1

    sub-float v1, p7, v5

    iget-object v5, v7, Lpubgm/loader/floating/ESPView;->mPaintBitmap1:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v2, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 656
    sub-float v0, p7, v4

    iget-object v1, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v14, v9, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 657
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 658
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 659
    sub-float v0, p7, v4

    iget-object v1, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v14, v9, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 660
    :cond_13
    const-string v0, "ATV1"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 661
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->atvBitmap:Landroid/graphics/Bitmap;

    sub-float v2, v9, v2

    iget v5, v7, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float/2addr v5, v1

    sub-float v1, p7, v5

    iget-object v5, v7, Lpubgm/loader/floating/ESPView;->mPaintBitmap1:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v2, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 662
    sub-float v0, p7, v4

    iget-object v1, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v14, v9, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 663
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 664
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 665
    sub-float v0, p7, v4

    iget-object v1, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v14, v9, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 667
    :cond_14
    const-string v0, "Reindeer"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 668
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->kudaBitmap:Landroid/graphics/Bitmap;

    sub-float v2, v9, v2

    iget v5, v7, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float/2addr v5, v1

    sub-float v1, p7, v5

    iget-object v5, v7, Lpubgm/loader/floating/ESPView;->mPaintBitmap1:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v2, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 669
    sub-float v0, p7, v4

    iget-object v1, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v14, v9, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 670
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 671
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 672
    sub-float v0, p7, v4

    iget-object v1, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v14, v9, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 675
    :cond_15
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->vehicleBitmap:Landroid/graphics/Bitmap;

    sub-float v1, v9, v2

    const/high16 v2, 0x42480000    # 50.0f

    iget v5, v7, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float/2addr v5, v2

    sub-float v2, p7, v5

    iget-object v5, v7, Lpubgm/loader/floating/ESPView;->mPaintBitmap1:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 676
    sub-float v0, p7, v4

    iget-object v1, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v14, v9, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 677
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 678
    iget-object v0, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 679
    sub-float v0, p7, v4

    iget-object v1, v7, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v14, v9, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 681
    :goto_0
    const/high16 v0, 0x41200000    # 10.0f

    sub-float v3, p7, v0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    move/from16 v4, p5

    move/from16 v5, p4

    move/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lpubgm/loader/floating/ESPView;->handleFuelHealthText(Landroid/graphics/Canvas;FFFFF)V

    goto :goto_1

    .line 533
    .end local v14    # "displayText":Ljava/lang/String;
    :cond_16
    move/from16 v13, p3

    move/from16 v12, p8

    .line 683
    :goto_1
    return-void
.end method

.method public DrawWeapon(Landroid/graphics/Canvas;IIIIIIIFFF)V
    .locals 3
    .param p1, "cvs"    # Landroid/graphics/Canvas;
    .param p2, "a"    # I
    .param p3, "r"    # I
    .param p4, "g"    # I
    .param p5, "b"    # I
    .param p6, "id"    # I
    .param p7, "ammo"    # I
    .param p8, "ammo2"    # I
    .param p9, "posX"    # F
    .param p10, "posY"    # F
    .param p11, "size"    # F

    .line 756
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mNamePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 757
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mNamePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 759
    invoke-direct {p0, p6}, Lpubgm/loader/floating/ESPView;->getWeapon(I)Ljava/lang/String;

    move-result-object v0

    .line 760
    .local v0, "wname":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 761
    const-string v1, "Sickle"

    if-eq v0, v1, :cond_1

    const-string v1, "Machete"

    if-eq v0, v1, :cond_1

    const-string v1, "Crowbar"

    if-eq v0, v1, :cond_1

    const-string v1, "Pan"

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 764
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lpubgm/loader/floating/ESPView;->mNamePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, p9, p10, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 762
    :cond_1
    :goto_0
    iget-object v1, p0, Lpubgm/loader/floating/ESPView;->mNamePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p9, p10, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 767
    :cond_2
    :goto_1
    return-void
.end method

.method public DrawWeaponIcon(Landroid/graphics/Canvas;IFF)V
    .locals 9
    .param p1, "cvs"    # Landroid/graphics/Canvas;
    .param p2, "id"    # I
    .param p3, "posX"    # F
    .param p4, "posY"    # F

    .line 770
    sget-object v0, Lpubgm/loader/floating/ESPView;->bitmapCache:Landroid/util/LruCache;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 771
    .local v1, "cachedBitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    const/high16 v3, 0x422c0000    # 43.0f

    if-eqz v1, :cond_0

    .line 772
    sub-float v0, p4, v3

    invoke-virtual {p1, v1, p3, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 774
    :cond_0
    invoke-direct {p0, p2}, Lpubgm/loader/floating/ESPView;->getWeaponIcon(I)I

    move-result v4

    .line 775
    .local v4, "weapon_icon":I
    if-eqz v4, :cond_1

    .line 776
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x45124000    # 2340.0f

    div-float/2addr v5, v6

    iput v5, p0, Lpubgm/loader/floating/ESPView;->mScaleX:F

    .line 777
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x44870000    # 1080.0f

    div-float/2addr v5, v6

    iput v5, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    .line 778
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 779
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    const/high16 v6, 0x42960000    # 75.0f

    iget v7, p0, Lpubgm/loader/floating/ESPView;->mScaleX:F

    mul-float/2addr v7, v6

    float-to-int v6, v7

    const/high16 v7, 0x42200000    # 40.0f

    iget v8, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float/2addr v8, v7

    float-to-int v7, v8

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 780
    .local v6, "scaledBitmap":Landroid/graphics/Bitmap;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7, v6}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    sub-float v0, p4, v3

    invoke-virtual {p1, v6, p3, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 784
    .end local v4    # "weapon_icon":I
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "scaledBitmap":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-void
.end method

.method public InitializePaints()V
    .locals 12

    .line 156
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800e7

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    const/high16 v2, 0x42480000    # 50.0f

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->botBitmap:Landroid/graphics/Bitmap;

    .line 157
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08017b

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->kudaBitmap:Landroid/graphics/Bitmap;

    .line 158
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08011e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->lootBitmap:Landroid/graphics/Bitmap;

    .line 159
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080078

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->airdropBitmap:Landroid/graphics/Bitmap;

    .line 160
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801b1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->vehicleBitmap:Landroid/graphics/Bitmap;

    .line 164
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080195

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    const/high16 v2, 0x42200000    # 40.0f

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->buggyBitmap:Landroid/graphics/Bitmap;

    .line 165
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080196

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->uazBitmap:Landroid/graphics/Bitmap;

    .line 166
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08019f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->trikeBitmap:Landroid/graphics/Bitmap;

    .line 167
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801a4

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->bikeBitmap:Landroid/graphics/Bitmap;

    .line 168
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801a5

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->daciaBitmap:Landroid/graphics/Bitmap;

    .line 169
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801a6

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->jetBitmap:Landroid/graphics/Bitmap;

    .line 170
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801a7

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->boatBitmap:Landroid/graphics/Bitmap;

    .line 171
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801a8

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->busBitmap:Landroid/graphics/Bitmap;

    .line 172
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801a9

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->miradoBitmap:Landroid/graphics/Bitmap;

    .line 173
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801aa

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->scooterBitmap:Landroid/graphics/Bitmap;

    .line 174
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080197

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->ronyBitmap:Landroid/graphics/Bitmap;

    .line 175
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080198

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->snowbikeBitmap:Landroid/graphics/Bitmap;

    .line 176
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080199

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->snowmobileBitmap:Landroid/graphics/Bitmap;

    .line 177
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08019a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->tempoBitmap:Landroid/graphics/Bitmap;

    .line 178
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08019b

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->monsterBitmap:Landroid/graphics/Bitmap;

    .line 179
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08019c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->brdmBitmap:Landroid/graphics/Bitmap;

    .line 180
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08019d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->atvBitmap:Landroid/graphics/Bitmap;

    .line 181
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08019e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->truckBitmap:Landroid/graphics/Bitmap;

    .line 182
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801a0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->gliderBitmap:Landroid/graphics/Bitmap;

    .line 183
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801a1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->utvBitmap:Landroid/graphics/Bitmap;

    .line 184
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801a2

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->coupeBitmap:Landroid/graphics/Bitmap;

    .line 185
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801a3

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->airplaneBitmap:Landroid/graphics/Bitmap;

    .line 187
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->mPaintBitmap:Landroid/graphics/Paint;

    .line 188
    const/16 v1, 0xe1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 190
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->mPaintBitmap1:Landroid/graphics/Paint;

    .line 191
    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 193
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    .line 194
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 195
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 196
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const v3, 0x7f090013

    const/16 v5, 0x1a

    if-lt v0, v5, :cond_0

    .line 197
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mVehiclesPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getFont(I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 200
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->mItemsPaint:Landroid/graphics/Paint;

    .line 201
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 202
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mItemsPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 203
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_1

    .line 204
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mItemsPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getFont(I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 207
    :cond_1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->mStrokePaint:Landroid/graphics/Paint;

    .line 208
    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 209
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 210
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mStrokePaint:Landroid/graphics/Paint;

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 211
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 213
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->mFilledPaint:Landroid/graphics/Paint;

    .line 214
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 215
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mFilledPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 216
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mFilledPaint:Landroid/graphics/Paint;

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 217
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mFilledPaint:Landroid/graphics/Paint;

    const/high16 v6, 0x40400000    # 3.0f

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 219
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->mFillPaint:Landroid/graphics/Paint;

    .line 220
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 221
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 222
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mFillPaint:Landroid/graphics/Paint;

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 224
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPaint:Landroid/graphics/Paint;

    .line 225
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 226
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 227
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPaint:Landroid/graphics/Paint;

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 228
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 229
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, -0x1000000

    invoke-virtual {v0, v6, v7, v7, v8}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 230
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPaint:Landroid/graphics/Paint;

    const v6, 0x3f8ccccd    # 1.1f

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 232
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    .line 233
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 234
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 235
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 236
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTextPainti:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 239
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->mLootBoxPaint:Landroid/graphics/Paint;

    .line 240
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 241
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mLootBoxPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 242
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mLootBoxPaint:Landroid/graphics/Paint;

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 243
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_2

    .line 244
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mLootBoxPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getFont(I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 246
    :cond_2
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mLootBoxPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 248
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->mTexturePaint:Landroid/graphics/Paint;

    .line 249
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 250
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTexturePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 251
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTexturePaint:Landroid/graphics/Paint;

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 252
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mStrokePaint:Landroid/graphics/Paint;

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 253
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTexturePaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 254
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTexturePaint:Landroid/graphics/Paint;

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    const/high16 v9, 0x41200000    # 10.0f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v0, v9, v10, v10, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 255
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_3

    .line 256
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mTexturePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v11, 0x7f090006

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getFont(I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 260
    :cond_3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->mNamePaint:Landroid/graphics/Paint;

    .line 261
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 262
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mNamePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 263
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mNamePaint:Landroid/graphics/Paint;

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 264
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mNamePaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 265
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mNamePaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 267
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_4

    .line 268
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mNamePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getFont(I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 271
    :cond_4
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->mFPSText:Landroid/graphics/Paint;

    .line 272
    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 273
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mFPSText:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 274
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mFPSText:Landroid/graphics/Paint;

    invoke-static {v1, v1, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 275
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 276
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mFPSText:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 277
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mFPSText:Landroid/graphics/Paint;

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v9, v10, v10, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 278
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_5

    .line 279
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mFPSText:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getFont(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 282
    :cond_5
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->mMDText:Landroid/graphics/Paint;

    .line 283
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 284
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mMDText:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 285
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mMDText:Landroid/graphics/Paint;

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 286
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mMDText:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 287
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mMDText:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 288
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mMDText:Landroid/graphics/Paint;

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v9, v10, v10, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 290
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->PaintTextBold:Landroid/graphics/Paint;

    .line 291
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 292
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->PaintTextBold:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 293
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->PaintTextBold:Landroid/graphics/Paint;

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 294
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->PaintTextBold:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 295
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->PaintTextBold:Landroid/graphics/Paint;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 296
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->PaintTextBold:Landroid/graphics/Paint;

    invoke-virtual {v0, v9, v10, v10, v8}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 297
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_6

    .line 298
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->PaintTextBold:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getFont(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 302
    :cond_6
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->p2:Landroid/graphics/Paint;

    .line 303
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->OTHER:[Landroid/graphics/Bitmap;

    array-length v0, v0

    .line 304
    .local v0, "bitmap_count_oth":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_9

    .line 305
    iget-object v2, p0, Lpubgm/loader/floating/ESPView;->OTHER:[Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lpubgm/loader/floating/ESPView;->OTH_NAME:[I

    aget v4, v4, v1

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v2, v1

    .line 306
    const/4 v2, 0x4

    if-ne v1, v2, :cond_7

    .line 307
    iget-object v2, p0, Lpubgm/loader/floating/ESPView;->OTHER:[Landroid/graphics/Bitmap;

    aget-object v3, v2, v1

    const/16 v4, 0x190

    const/16 v5, 0x23

    invoke-static {v3, v4, v5}, Lpubgm/loader/floating/ESPView;->scale(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v2, v1

    goto :goto_1

    .line 308
    :cond_7
    const/4 v2, 0x5

    if-ne v1, v2, :cond_8

    .line 309
    iget-object v2, p0, Lpubgm/loader/floating/ESPView;->OTHER:[Landroid/graphics/Bitmap;

    aget-object v3, v2, v1

    const/16 v4, 0x16

    invoke-static {v3, v4, v4}, Lpubgm/loader/floating/ESPView;->scale(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v2, v1

    goto :goto_1

    .line 311
    :cond_8
    iget-object v2, p0, Lpubgm/loader/floating/ESPView;->OTHER:[Landroid/graphics/Bitmap;

    aget-object v3, v2, v1

    const/16 v4, 0x50

    invoke-static {v3, v4, v4}, Lpubgm/loader/floating/ESPView;->scale(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v2, v1

    .line 304
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 315
    .end local v1    # "i":I
    :cond_9
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 93
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 94
    .local v0, "rotation":I
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p0, p1}, Lpubgm/loader/floating/ESPView;->ClearCanvas(Landroid/graphics/Canvas;)V

    .line 98
    invoke-static {p0, p1}, Lpubgm/loader/floating/Overlay;->DrawOn(Lpubgm/loader/floating/ESPView;Landroid/graphics/Canvas;)V

    .line 99
    return-void

    .line 95
    :cond_1
    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 103
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 104
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x45124000    # 2340.0f

    div-float/2addr v0, v1

    iput v0, p0, Lpubgm/loader/floating/ESPView;->mScaleX:F

    .line 105
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x44870000    # 1080.0f

    div-float/2addr v0, v1

    iput v0, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    .line 106
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800e7

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    const/high16 v2, 0x42480000    # 50.0f

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->botBitmap:Landroid/graphics/Bitmap;

    .line 107
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08017b

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->kudaBitmap:Landroid/graphics/Bitmap;

    .line 108
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08011e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->lootBitmap:Landroid/graphics/Bitmap;

    .line 109
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080078

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->airdropBitmap:Landroid/graphics/Bitmap;

    .line 110
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801b1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->vehicleBitmap:Landroid/graphics/Bitmap;

    .line 113
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080195

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    const/high16 v2, 0x42200000    # 40.0f

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->buggyBitmap:Landroid/graphics/Bitmap;

    .line 114
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080196

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->uazBitmap:Landroid/graphics/Bitmap;

    .line 115
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08019f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->trikeBitmap:Landroid/graphics/Bitmap;

    .line 116
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801a4

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->bikeBitmap:Landroid/graphics/Bitmap;

    .line 117
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801a5

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->daciaBitmap:Landroid/graphics/Bitmap;

    .line 118
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801a6

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->jetBitmap:Landroid/graphics/Bitmap;

    .line 119
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801a7

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->boatBitmap:Landroid/graphics/Bitmap;

    .line 120
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801a8

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->busBitmap:Landroid/graphics/Bitmap;

    .line 121
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801a9

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->miradoBitmap:Landroid/graphics/Bitmap;

    .line 122
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801aa

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->scooterBitmap:Landroid/graphics/Bitmap;

    .line 123
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080197

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->ronyBitmap:Landroid/graphics/Bitmap;

    .line 124
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080198

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->snowbikeBitmap:Landroid/graphics/Bitmap;

    .line 125
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080199

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->snowmobileBitmap:Landroid/graphics/Bitmap;

    .line 126
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08019a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->tempoBitmap:Landroid/graphics/Bitmap;

    .line 127
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08019b

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->monsterBitmap:Landroid/graphics/Bitmap;

    .line 128
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08019c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->brdmBitmap:Landroid/graphics/Bitmap;

    .line 129
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08019d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->atvBitmap:Landroid/graphics/Bitmap;

    .line 130
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08019e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->truckBitmap:Landroid/graphics/Bitmap;

    .line 131
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801a0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->gliderBitmap:Landroid/graphics/Bitmap;

    .line 132
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801a1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->utvBitmap:Landroid/graphics/Bitmap;

    .line 133
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801a2

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->coupeBitmap:Landroid/graphics/Bitmap;

    .line 134
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801a3

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lpubgm/loader/floating/ESPView;->mScaleY:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ESPView;->airplaneBitmap:Landroid/graphics/Bitmap;

    .line 135
    return-void
.end method

.method public run()V
    .locals 8

    .line 139
    :goto_0
    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpubgm/loader/floating/ESPView;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 142
    .local v0, "t1":J
    invoke-virtual {p0}, Lpubgm/loader/floating/ESPView;->postInvalidate()V

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 145
    .local v2, "td":J
    const-wide/16 v4, 0x0

    sget-wide v6, Lpubgm/loader/floating/ESPView;->sleepTime:J

    sub-long/2addr v6, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    sget-wide v6, Lpubgm/loader/floating/ESPView;->sleepTime:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v0    # "t1":J
    .end local v2    # "td":J
    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 148
    return-void

    .line 151
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method
