.class public final Lpubgm/loader/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpubgm/loader/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final ds:[I

.field public static final ds_black:I = 0x0

.field public static final ds_cardcancel:I = 0x1

.field public static final ds_colorAccent:I = 0x2

.field public static final ds_colorBackground:I = 0x3

.field public static final ds_colorCard:I = 0x4

.field public static final ds_colorIcon:I = 0x5

.field public static final ds_colorPrimary:I = 0x6

.field public static final ds_colorPrimaryDark:I = 0x7

.field public static final ds_gray:I = 0x8

.field public static final ds_gray2:I = 0x9

.field public static final ds_gray200:I = 0xa

.field public static final ds_lang:I = 0xb

.field public static final ds_myblueplus:I = 0xc

.field public static final ds_textcancel:I = 0xd

.field public static final ds_white:I = 0xe

.field public static final ds_whitepermanent:I = 0xf


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lpubgm/loader/R$styleable;->ds:[I

    return-void

    :array_0
    .array-data 4
        0x7f040095
        0x7f0400c5
        0x7f040118
        0x7f040119
        0x7f04011c
        0x7f040123
        0x7f04013b
        0x7f04013d
        0x7f04024f
        0x7f040250
        0x7f040251
        0x7f0402af
        0x7f0403ac
        0x7f040510
        0x7f040578
        0x7f040579
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
